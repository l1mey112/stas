struct Function { argc u32 retc u32 idx u32 name StringPointer }
__global functions = []Function{}

enum ScopeTyp {
	scope
	checked_scope
	if_block
	else_block
	else_block_scope
	while_block
}

struct Scope {
	typ ScopeTyp
	inst_begin u32
	sp u32 [required]
}

fn is_function_name(str StringPointer) u32 {
	for idx, f in functions {
		if f.name.cmp(str) {
			return u32(idx)
		}
	}
	return u32(-1)
}

fn parse() {
	mut pos := u32(0)

	pos_r := &mut pos
	ir := fn [pos_r] (inst Inst, data u64) {
		ir_stream << IR{inst: inst, data: data, idx: *pos_r}
	}
	ir_p := fn (inst Inst, data u64, pos u32) {
		ir_stream << IR{inst: inst, data: data, idx: pos}
	}

	mut scope_context := []Scope{}
	mut function_context := &Function(0)

	mut sp := u32(0)

	mut sp_r := &mut sp
	sp_assert := fn [pos_r, mut sp_r] (argc u32, retc u32) {
		if *sp_r < argc {
			compile_error_t("not enough values to consume for operation", *pos_r)
		}
		unsafe { *sp_r = *sp_r - argc + retc }
	}

	for ; pos < token_stream.len ; pos++ {
		if isnil(function_context) {
			match token_stream[pos].tok {
				.fn_decl {
					fn_c := pos
					pos += 4
					if pos >= token_stream.len {
						compile_error_t("unexpected EOF when parsing function", fn_c)
					}
					if token_stream[fn_c + 1].tok != .name {
						compile_error_t("function name must not be an intrinsic", fn_c + 1)
					}
					if token_stream[fn_c + 2].tok != .number_lit && token_stream[fn_c + 3].tok != .number_lit {
						compile_error_t("function return and argument counts must be numbers", fn_c)
					}
					if token_stream[fn_c + 4].tok != .l_cb {
						compile_error_t("new scope must proceed after function header", fn_c)
					}
					str := StringPointer(&u8(token_stream[fn_c + 1].data))
					if is_function_name(str) != -1 {
						compile_error_t("duplicate function name", fn_c + 1)
					}
					argc := u32(token_stream[fn_c + 2].data)
					retc := u32(token_stream[fn_c + 3].data)
					if str.str() == 'main' {
						if argc != 0 || retc != 0 {
							compile_error_t("the main function must accept and return zero values", fn_c + 2)
						}
						main_fn = u32(ir_stream.len)
					}
					functions << Function {
						argc: argc
						retc: retc
						idx: u32(ir_stream.len)
						name: str
					}
					
					function_context = &functions[functions.len - 1]
					ir_p(.fn_prelude, u64(function_context), fn_c)

					assert sp == 0
					sp = argc
				}
				else {
					compile_error_t("unknown toplevel token", pos)
				}
			}
		} else {
			match token_stream[pos].tok {
				.name {
					fn_n := is_function_name(&u8(token_stream[pos].data))
					if fn_n != -1 {
						ir(.fn_call, u64(&functions[fn_n]))
						
						if sp < functions[fn_n].argc {
							compile_error_t("not enough values to consume for function call", pos)
						}
						sp -= functions[fn_n].argc
					} else {
						compile_error_t("unknown function call or variable", pos)
					}
				}
				.if_block {
					if sp == 0 {
						compile_error_t("no value on stack to consume for if statement", pos)
					}
					sp--

					inst_b := u32(ir_stream.len)
					scope_context << Scope {
						typ: .if_block
						inst_begin: inst_b
						sp: sp
					}

					ir(.cond_if, 0)
					pos++
					if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
						compile_error_t("a scope must come after an if statement", pos - 1)
					}
				}
				.l_cb {
					scope_context << Scope {
						typ: .scope
						inst_begin: 0
						sp: sp
					}
				}
				.r_cb {
					if scope_context.len != 0 {
						scope := scope_context.pop()
						match scope.typ {
							.scope {}
							.checked_scope {
								ir(.stack_size_end, ir_stream[scope.inst_begin].data)
							}
							.if_block {
								skip := ir_stream.len
								// not a - 1, do a skip over here
								if pos + 1 < token_stream.len && token_stream[pos + 1].tok == .else_block {
									ir_stream[scope.inst_begin].data = u64(skip + 1)
									// risky, leave space for an instruction
									
									pos++
									inst_b := u32(ir_stream.len)

									scope_context << Scope {
										typ: .else_block_scope
										inst_begin: inst_b
										sp: sp
									}
									sp = scope.sp

									ir(.do_jmp, 0)

									pos++
									if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
										compile_error_t("a scope must come after an else statement", pos - 1)
									}
								} else {
									ir_stream[scope.inst_begin].data = u64(skip)
								}
							}
							.else_block_scope {
								// xx more values left on else branch
								// xx less values left on else branch
								if scope.sp != sp {
									compile_error_i("unbalanced stack on both if and else branches", scope.inst_begin)
								}
								ir_stream[scope.inst_begin].data = u64(ir_stream.len)
							}
							else {
								assert false, "unimplemented"
							}
						}
					} else {
						assert !isnil(function_context)
						ir(.fn_leave, u64(function_context))

						if sp > function_context.retc {
							compile_error_t("unhandled data on the stack", function_context.idx)
						} else if sp < function_context.retc {
							compile_error_t("not enough values on the stack on function return", function_context.idx)
						}

						sp = 0
						function_context = unsafe { nil }
					}
				}
				.arrw {
					arrw_c := pos
					pos++

					if pos >= token_stream.len || token_stream[pos].tok != .number_lit {
						compile_error_t("a number must appear after the arrow assert operator", arrw_c)
					}
					num := token_stream[pos].data
					
					scope_context << Scope {
						typ: .checked_scope
						inst_begin: u32(ir_stream.len)
						sp: sp
					}

					ir_p(.stack_size_start, num, arrw_c)
					pos++
					if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
						compile_error_t("a scope must come after the arrow assert operator", arrw_c)
					}
				}
				.string_lit {
					slits << u32(ir_stream.len)
					ir(.push_str, token_stream[pos].data)
					// _slit_322:

					sp += 2
				}
				.number_lit {
					ir(.push_num, token_stream[pos].data)

					sp++
				}
				.plus   { ir(.plus,   0) sp_assert(2, 1) }
				.sub    { ir(.sub,    0) sp_assert(2, 1) }
				.mul    { ir(.mul,    0) sp_assert(2, 1) }
				.div    { ir(.div,    0) sp_assert(2, 1) }
				.mod    { ir(.mod,    0) sp_assert(2, 1) }
				.inc    { ir(.inc,    0) sp_assert(1, 1) }
				.dec    { ir(.dec,    0) sp_assert(1, 1) }
				.divmod { ir(.divmod, 0) sp_assert(2, 2) }
				.swap   { ir(.swap,   0) sp_assert(2, 2) }
				.dup    { ir(.dup,    0) sp_assert(1, 2) }
				.over   { ir(.over,   0) sp_assert(2, 3) }
				.rot    { ir(.rot,    0) sp_assert(3, 3) }
				.drop   { ir(.drop,   0) sp_assert(1, 0) }
				.trap_breakpoint { ir(.trap_breakpoint, 0) }
				else {
					compile_error_t("unknown function local token", pos)
				}
			}
		}
	}

	if scope_context.len != 0 {
		compile_error_t("unclosed scopes on parser finish", u32(token_stream.len) - 1)
	}
	if !isnil(function_context) {
		compile_error_t("unexpected EOF when parsing function, scopes may be unclosed", u32(token_stream.len) - 1)
	}
}