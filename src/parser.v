struct Function { argc u32 retc u32 idx u32 name StringPointer }
__global functions = []Function{}

enum ScopeTyp {
	_nil_
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
	mut next_scope_is := ScopeTyp._nil_

	for ; pos < token_stream.len ; pos++ {
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
				functions << Function {
					argc: u32(token_stream[fn_c + 2].data)
					retc: u32(token_stream[fn_c + 3].data)
					idx: u32(ir_stream.len)
					name: str
				}
				if str.str() == 'main' { main_fn = u32(ir_stream.len) }
				
				function_context = &functions[functions.len - 1]
				ir_p(.fn_prelude, 0, fn_c)
			}
			.if_block {
				if next_scope_is != ._nil_ {
					compile_error_t("expecting a scope block", pos)
				}

				inst_b := u32(ir_stream.len)
				scope_context << Scope {
					typ: .if_block
					inst_begin: inst_b
				}

				ir(.do_cond_jmp, 0)
				next_scope_is = .if_block
				continue
			}
			.else_block {
				if next_scope_is != .else_block {
					compile_error_t("else not preceeded by an if statement", pos)
				}
				inst_b := u32(ir_stream.len)
				scope_context << Scope {
					typ: .if_block
					inst_begin: inst_b
				}

				ir(.do_jmp, 0)
				next_scope_is = .else_block_scope
				continue
			}
			.l_cb {
				if isnil(function_context) {
					compile_error_t("scopes cannot be declared at the toplevel", pos)
				}
				if next_scope_is == ._nil_ {
					scope_context << Scope {
						typ: ._nil_
						inst_begin: 0
					}
				}
			}
			.r_cb {
				if scope_context.len != 0 {
					scope := scope_context.pop()
					match scope.typ {
						._nil_ {}
						.checked_scope {
							ir(.stack_size_end, ir_stream[scope.inst_begin].data)
						}
						.if_block {
							skip := ir_stream.len
							// not a - 1, do a skip over here
							if pos + 1 < token_stream.len && token_stream[pos + 1].tok == .else_block {
								ir_stream[scope.inst_begin].data = u64(skip + 1)
								// risky, leave space for an instruction
								next_scope_is = .else_block
								continue
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
					assert !isnil(function_context)
					function_context = unsafe { nil }

					ir(.fn_ret_cleanup, 0)
				}
			}
			.arrw {
				if next_scope_is != ._nil_ {
					compile_error_t("expecting a scope block", pos)
				}
				if isnil(function_context) {
					compile_error_t("cannot be used at the toplevel", pos)
				}
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
				next_scope_is = .checked_scope
				continue
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
			else    { panic('unreachable') }
		}

		next_scope_is = ._nil_
	}

	assert next_scope_is == ._nil_
	if scope_context.len != 0 {
		compile_error_t("unclosed scopes on parser finish", u32(token_stream.len) - 1)
	}
	if !isnil(function_context) {
		compile_error_t("unexpected EOF when parsing function, scopes may be unclosed", u32(token_stream.len) - 1)
	}
}