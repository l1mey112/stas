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
					functions << Function {
						argc: u32(token_stream[fn_c + 2].data)
						retc: u32(token_stream[fn_c + 3].data)
						idx: u32(ir_stream.len)
						name: str
					}
					if str.str() == 'main' { main_fn = u32(ir_stream.len) }
					
					function_context = &functions[functions.len - 1]
					ir_p(.fn_prelude, u64(functions.len - 1), fn_c)
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
						ir(.fn_call, fn_n)
					} else {
						compile_error_t("unknown function call or variable", pos)
					}
				}
				.if_block {
					inst_b := u32(ir_stream.len)
					scope_context << Scope {
						typ: .if_block
						inst_begin: inst_b
					}

					ir(.do_cond_jmp, 0)
					pos++
					if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
						compile_error_t("a scope must come after an if statement", pos - 1)
					}
				}
				.l_cb {
					scope_context << Scope {
						typ: .scope
						inst_begin: 0
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
									}

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
								ir_stream[scope.inst_begin].data = u64(ir_stream.len)
							}
							else {
								assert false, "unimplemented"
							}
						}
					} else {
						function_context = unsafe { nil }
						ir(.fn_leave, 0)
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
				}
				.number_lit { ir(.push_num, token_stream[pos].data) }
				.plus   { ir(.plus, 0)   }
				.sub    { ir(.sub, 0)    }
				.mul    { ir(.mul, 0)    }
				.div    { ir(.div, 0)    }
				.mod    { ir(.mod, 0)    }
				.inc    { ir(.inc, 0)    }
				.dec    { ir(.dec, 0)    }
				.divmod { ir(.divmod, 0) }
				.swap   { ir(.swap, 0)   }
				.dup    { ir(.dup, 0)    }
				.over   { ir(.over, 0)   }
				.rot    { ir(.rot, 0)    }
				.drop   { ir(.drop, 0)   }
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