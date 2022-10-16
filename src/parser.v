struct Function { argc u32 retc u32 idx u32 name StringPointer }
__global functions = []Function{}

enum ScopeTyp {
	scope
	checked_scope
	if_block
	else_block
	else_block_scope
	while_block
	while_block_scope
}

struct Scope {
	typ ScopeTyp
	sp u32
	idx u32
	label_id u32 = -1
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

	mut label_c := u32(0)
	_ := label_c
	mut label_r := &mut label_c
	label_allocate := fn [mut label_r] () u32 {
		a := *label_r
		unsafe { *label_r = *label_r + 1 }
		return a
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
					if str.str()[0] == `_` {
						compile_error_t("function names may not contain a leading underscore", fn_c + 1)
					} // pointless? maybe
					if str.str() == 'main' {
						if argc != 0 || retc != 0 {
							compile_error_t("the main function must accept and return zero values", fn_c + 2)
						}
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
						sp = sp - functions[fn_n].argc + functions[fn_n].retc
					} else {
						compile_error_t("unknown function call or variable", pos)
					}
				}
				.if_block {
					if sp == 0 {
						compile_error_t("no value on stack to consume for if statement", pos)
					}
					sp--

					lbl := label_allocate()
					scope_context << Scope {
						typ: .if_block
						label_id: lbl
						sp: sp
						idx: pos
					}

					ir(.do_cond_jmp, lbl)
					pos++
					if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
						compile_error_t("a scope must come after an if statement", pos - 1)
					}
				}
				.while_block {
					lbl := label_allocate()
					ir(.label, lbl)
					scope_context << Scope {
						typ: .while_block
						label_id: lbl
						sp: sp
						idx: pos
					}
				}
				.break_block {
					mut idx := u32(-1)
					for s_id, s in scope_context.reverse() {
						if s.typ == .while_block_scope {
							idx = u32(s_id)
							break
						}
					}
					if idx == -1 {
						compile_error_t("not inside while loop body", pos)
					}
					compile_error_t("does nothing", pos)
				}
				.l_cb {
					if scope_context.last().typ == .while_block {
						if sp == 0 {
							compile_error_t("no value on stack to consume for while header", pos)
						}
						sp--
						lbl := label_allocate()
						scope_context << Scope {
							typ: .while_block_scope
							label_id: lbl
							sp: sp
							idx: pos
						}
						ir(.do_cond_jmp, lbl)
					} else {
						scope_context << Scope {
							typ: .scope
							sp: sp
							idx: pos
						}
					}
				}
				.r_cb {
					if scope_context.len != 0 {
						scope := scope_context.pop()
						match scope.typ {
							.while_block_scope {
								while_header := scope_context.pop()
								ir(.do_jmp, while_header.label_id)
								ir(.label, scope.label_id)
							}
							.scope {}
							.checked_scope {
								if sp > scope.sp {
									compile_error_t("scope assertation failed, ${sp - scope.sp} more values on the stack than expected", scope.idx)
								} else if sp < scope.sp {
									compile_error_t("scope assertation failed, ${scope.sp - sp} less values on the stack than expected", scope.idx)
								}
							}
							.if_block {
								if pos + 1 < token_stream.len && token_stream[pos + 1].tok == .else_block {
									pos++
									lbl := label_allocate()
									scope_context << Scope {
										typ: .else_block_scope
										label_id: lbl
										sp: sp
										idx: pos
									}
									sp = scope.sp

									ir(.do_jmp, lbl)
									ir(.label, scope.label_id)

									pos++
									if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
										compile_error_t("a scope must come after an else statement", pos - 1)
									}
								} else {
									if scope.sp != sp {
										compile_error_t("the stack must remain the same with single branches", pos)
									}
									ir(.label, scope.label_id)
								}
							}
							.else_block_scope {
								// xx more values left on else branch
								// xx less values left on else branch
								if sp > scope.sp {
									compile_error_t("unbalanced stack on both if and else branches, else has ${sp - scope.sp} more", scope.idx)
								} else if sp < scope.sp {
									compile_error_t("unbalanced stack on both if and else branches, else has ${scope.sp - sp} less", scope.idx)
								}
								ir(.label, scope.label_id)
							}
							else {
								assert false, "unimplemented"
							}
						}
					} else {
						assert !isnil(function_context)
						ir(.fn_leave, u64(function_context))

						if sp > function_context.retc {
							compile_error_i("unhandled data on the stack", function_context.idx)
						} else if sp < function_context.retc {
							compile_error_i("not enough values on the stack on function return", function_context.idx)
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
						sp: sp + u32(num)
						idx: pos
					}
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
				.equ    { ir(.equ,    0) sp_assert(2, 1) }
				.nequ   { ir(.nequ,   0) sp_assert(2, 1) }
				.gt     { ir(.gt,     0) sp_assert(2, 1) }
				.lt     { ir(.lt,     0) sp_assert(2, 1) }
				.gte    { ir(.gte,    0) sp_assert(2, 1) }
				.lte    { ir(.lte,    0) sp_assert(2, 1) }
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