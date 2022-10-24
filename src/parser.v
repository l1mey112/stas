struct Function {
	argc       u32
	retc       u32
	idx        u32
	name       StringPointer
	start_inst u32 // TODO: start_inst contains the position of idx anyway in the inst token field, remove idx
mut:
	a_sp          u32
	forbid_inline bool
}

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
	typ       ScopeTyp [required]
	sp        u32
	idx       u32
	label_id  u32 = -1 // while loop continue
	var_scope u32
}

enum VarTyp {
	buffer // reserve
	stack // auto
}

struct Variable {
	typ  VarTyp
	size u32
	a_sp u32
	idx  u32
	name StringPointer
}

fn is_function_name(str StringPointer) u32 {
	for idx, f in functions {
		if f.name.cmp(str) {
			return u32(idx)
		}
	}
	return u32(-1)
}

__global label_c = u32(0)

fn label_allocate() u32 {
	a := label_c
	label_c++
	return a
}

__global global_var_context = []Variable{}

fn is_global_var_name(str StringPointer) u32 {
	for idx, f in global_var_context {
		if f.name.cmp(str) {
			return u32(idx)
		}
	}
	return u32(-1)
}

struct Constant {
	name       StringPointer
	inst_start u32
	tok        u32
mut:
	value u64
}

fn replace_as_constant(c u32, pos u32) {
	token_stream[pos] = token_stream[toplevel_constants[c].tok]
	token_stream[pos].tok = .number_lit
	token_stream[pos].data = toplevel_constants[c].value
}

__global toplevel_constants = []Constant{}

/*
TODO:

fn is_already_constant_name_and_error_if_it_is(pos u32)

{
	is_already_constant_name_and_error_if_it_is(pos)
	is_already_global_name_and_error_if_it_is(pos)
	is_already_local_name_and_error_if_it_is(pos)
}
*/

fn is_constant_name(str StringPointer) u32 {
	for idx, f in toplevel_constants {
		if f.name.cmp(str) {
			return u32(idx)
		}
	}
	return u32(-1)
}

fn is_toplevel_name(str StringPointer) bool {
	return is_constant_name(str) != -1 || is_global_var_name(str) != -1
}

fn parse() {
	mut pos := u32(0)

	pos_r := &mut pos
	ir := fn [pos_r] (inst Inst, data u64) {
		ir_stream << IR{
			inst: inst
			data: data
			idx: *pos_r
		}
	}
	ir_p := fn (inst Inst, data u64, pos u32) {
		ir_stream << IR{
			inst: inst
			data: data
			idx: pos
		}
	}

	mut scope_context := []Scope{}
	mut var_context := []Variable{}
	mut function_context := &Function(0)
	mut function_context_idx := u64(-1)

	mut sp := []u32{}
	mut sp_r := &mut sp

	mut is_still_evaluating_constant := false

	sp_assert := fn [pos_r, mut sp_r] (argc u32, retc u32) {
		if sp_r.len < argc {
			compile_error_t('not enough values to consume for operation', *pos_r)
		}
		unsafe {
			sp_r.len = int(u32(sp_r.len) - argc)
		}
		for _ in 0 .. retc {
			sp_r << *pos_r
		}
	}

	// TODO: clean this shit up...

	sp_push := fn [pos_r, mut sp_r] (c u32) {
		for _ in 0 .. c {
			sp_r << *pos_r
		}
	}
	sp_push_p := fn [mut sp_r] (c u32, pos_r u32) {
		for _ in 0 .. c {
			sp_r << pos_r
		}
	}
	sp_backtrace_t := fn [mut sp_r] () {
		for token in (*sp_r).reverse() {
			compile_info_('backtrace', token_stream[token].row, token_stream[token].col,
				token_stream[token].file)
		}
	}
	sp_backtrace_depth_t := fn [mut sp_r] (dep u32) {
		if dep == 0 {
			return
		}
		for idx, token in (*sp_r).reverse() {
			if idx + 1 > dep {
				break
			}
			compile_info_('backtrace', token_stream[token].row, token_stream[token].col,
				token_stream[token].file)
		}
	}

	sp_error := fn [sp_backtrace_t] (msg string, token u32) {
		print_backtrace()
		compile_error_(msg, token_stream[token].row, token_stream[token].col, token_stream[token].file)
		sp_backtrace_t()
		exit(1)
	}
	sp_error_dep := fn [sp_backtrace_depth_t] (msg string, token u32, dep u32) {
		print_backtrace()
		compile_error_(msg, token_stream[token].row, token_stream[token].col, token_stream[token].file)
		sp_backtrace_depth_t(dep)
		exit(1)
	}
	/*
	outside (!has function_context, !has const_expr scope):
			const_expr
			global decls
			functions
		inside (has function_context, has const_expr scope):
			everything else
	*/
	for ; pos < token_stream.len; pos++ {
		if !is_still_evaluating_constant && isnil(function_context) {
			match token_stream[pos].tok {
				.const_expression {
					if pos + 2 >= token_stream.len {
						compile_error_t('unexpected EOF when parsing constant expression',
							pos)
					}
					pos++
					if token_stream[pos].tok != .name {
						compile_error_t('constant expression name must not be in instrinsic',
							pos)
					}
					str := &u8(token_stream[pos].data)
					if is_function_name(str) != -1 {
						compile_error_t('duplicate function name', pos)
					}
					if is_toplevel_name(str) {
						compile_error_t('duplicate top level variable name', pos)
					}
					pos++
					if token_stream[pos].tok != .l_cb {
						compile_error_t('a scope must follow a const expression decl',
							pos)
					}
					toplevel_constants << Constant{
						tok: pos - 1
						name: str
						inst_start: u32(ir_stream.len)
						value: -1
					}
					is_still_evaluating_constant = true
					assert sp.len == 0
				}
				.fn_decl {
					/*
					if !isnil(function_context) {
						compile_error_t('cannot define a function inside a function', pos)
					}*/
					if scope_context.len > 0 {
						compile_error_t('unclosed scope for constant expression', scope_context.last().idx)
					}
					fn_c := pos
					pos += 4
					if pos >= token_stream.len {
						compile_error_t('unexpected EOF when parsing function', fn_c)
					}
					if token_stream[fn_c + 1].tok != .name {
						compile_error_t('function name must not be an intrinsic', fn_c + 1)
					}
					if token_stream[fn_c + 2].tok != .number_lit
						&& token_stream[fn_c + 3].tok != .number_lit {
						compile_error_t('function return and argument counts must be numbers',
							fn_c)
					}
					if token_stream[fn_c + 4].tok != .l_cb {
						compile_error_t('new scope must proceed after function header',
							fn_c)
					}
					str := StringPointer(&u8(token_stream[fn_c + 1].data))
					if is_function_name(str) != -1 {
						compile_error_t('duplicate function name', fn_c + 1)
					}
					if is_toplevel_name(str) {
						compile_error_t('fn name already duplicate top level variable name',
							fn_c + 1)
					}
					argc := u32(token_stream[fn_c + 2].data)
					retc := u32(token_stream[fn_c + 3].data)
					functions << Function{
						argc: argc
						retc: retc
						idx: fn_c
						name: str
						start_inst: u32(ir_stream.len)
					}
					if str.str() == 'main' {
						if argc != 0 || retc != 0 {
							compile_error_t('the main function must accept and return zero values',
								fn_c + 2)
						}
						functions[functions.len - 1].forbid_inline = true
					}

					function_context = &functions[functions.len - 1]
					function_context_idx = u64(functions.len - 1)
					ir_p(.fn_prelude, function_context_idx, fn_c)

					assert sp.len == 0
					assert var_context.len == 0
					sp_push_p(argc, fn_c)
				}
				.reserve, .auto {
					rs_c := pos
					pos += 2
					if pos >= token_stream.len {
						compile_error_t('unexpected EOF when parsing buffer decl', rs_c)
					}
					if token_stream[rs_c + 1].tok != .name {
						compile_error_t('buffer name must not be an intrinsic', rs_c + 1)
					}
					if token_stream[rs_c + 2].tok == .name {
						c := is_constant_name(&u8(token_stream[pos].data))
						if c != -1 {
							replace_as_constant(c, rs_c + 2)
						}
					}
					if token_stream[rs_c + 2].tok != .number_lit {
						compile_error_t('buffer decl must specify size in bytes', rs_c + 2)
					}
					name := StringPointer(&u8(token_stream[rs_c + 1].data))
					if is_function_name(name) != -1 {
						compile_error_t('variable decl must not be a function', rs_c + 1)
					}
					if is_toplevel_name(name) {
						compile_error_t('duplicate top level variable name', rs_c + 1)
					}
					mut size := u32(token_stream[rs_c + 2].data)
					mut typ := if token_stream[rs_c].tok == .reserve {
						VarTyp.buffer
					} else {
						size *= 8
						VarTyp.stack
					}

					global_var_context << Variable{
						typ: typ
						size: size
						a_sp: -1
						name: name
						idx: rs_c + 1
					}
				}
				else {
					compile_error_t('unknown toplevel token', pos)
				}
			}
		} else {
			if isnil(function_context) && token_stream[pos].tok == .r_cb {
				mut const_stack := []u64{}
				// eval expr
				for i := toplevel_constants.last().inst_start; i < ir_stream.len; i++ {
					if !eval_one_inst(mut const_stack, i) {
						eprintln(ir_stream)
						eprintln(ir_stream[i].str())
						assert false, 'unreachable'
					}
					// should always be able to evaluate
				}

				if const_stack.len == 0 {
					compile_error_t('constant expression must contain a value', pos)
				}

				if const_stack.len > 1 {
					sp_error_dep('more than one unhandled values on left on the constant expression',
						pos, 1)
				}

				unsafe {
					sp.len = 0
				}
				unsafe {
					ir_stream.len = int(toplevel_constants.last().inst_start)
				}
				// do not generate asm for constant expressions

				v := const_stack.pop()

				toplevel_constants[toplevel_constants.len - 1].value = v
				is_still_evaluating_constant = false
				continue
			}
			if isnil(function_context) && token_stream[pos].tok == .name {
				c := is_constant_name(&u8(token_stream[pos].data))
				if c != -1 {
					replace_as_constant(c, pos)
					pos--
					continue
				} else {
					compile_error_t('unknown constant variable', pos)
				}
			}
			match token_stream[pos].tok {
				._assert {
					if sp.len == 0 {
						compile_error_t('no value on stack to consume for assertion',
							pos)
					}
					unsafe { sp.len-- }

					assert_string := u64(slits.len)
					ap := pos

					// add.stas:2:2: Assertion Failed,

					if pos + 2 < token_stream.len && token_stream[pos + 1].tok == .arrw
						&& token_stream[pos + 2].tok == .string_lit {
						pos += 2

						a := compile_error_to_s('Assertion Failed, ', token_stream[pos - 2].row,
							token_stream[pos - 2].col, token_stream[pos - 2].file)
						mut assert_str := new_string_view(a.str, a.len)
						c := &u8(token_stream[pos].data)
						unsafe {
							push_string_view(assert_str, c + sizeof(u64), int(*(&u64(c))))
							push_char(assert_str, `\n`)
							push_nul(assert_str)
						}
						slits << &u8(assert_str)
					} else {
						a := compile_error_to_s('Assertion Failed\n', token_stream[pos].row,
							token_stream[pos].col, token_stream[pos].file)
						slits << new_string_view(a.str, a.len)
					}

					ir_p(._assert, assert_string, ap)
				}
				.number_lit {
					ir(.push_num, token_stream[pos].data)

					sp_push(1)
				}
				.plus {
					ir(.plus, 0)
					sp_assert(2, 1)
				}
				.sub {
					ir(.sub, 0)
					sp_assert(2, 1)
				}
				.mul {
					ir(.mul, 0)
					sp_assert(2, 1)
				}
				.div {
					ir(.div, 0)
					sp_assert(2, 1)
				}
				.mod {
					ir(.mod, 0)
					sp_assert(2, 1)
				}
				.inc {
					ir(.inc, 0)
					sp_assert(1, 1)
				}
				.dec {
					ir(.dec, 0)
					sp_assert(1, 1)
				}
				.divmod {
					ir(.divmod, 0)
					sp_assert(2, 2)
				}
				.shr {
					ir(.shr, 0)
					sp_assert(2, 1)
				}
				.shl {
					ir(.shl, 0)
					sp_assert(2, 1)
				}
				.b_and {
					ir(.b_and, 0)
					sp_assert(2, 1)
				}
				.b_or {
					ir(.b_or, 0)
					sp_assert(2, 1)
				}
				.b_not {
					ir(.b_not, 0)
					sp_assert(2, 1)
				}
				.b_xor {
					ir(.b_xor, 0)
					sp_assert(2, 1)
				}
				.swap {
					ir(.swap, 0)
					sp_assert(2, 2)
				}
				.dup {
					ir(.dup, 0)
					sp_assert(1, 2)
				}
				.over {
					ir(.over, 0)
					sp_assert(2, 3)
				}
				.over2 {
					ir(.over2, 0)
					sp_assert(3, 4)
				}
				.rot {
					ir(.rot, 0)
					sp_assert(3, 3)
				}
				.rot4 {
					ir(.rot4, 0)
					sp_assert(4, 4)
				}
				.drop {
					ir(.drop, 0)
					sp_assert(1, 0)
				}
				.equ {
					ir(.equ, 0)
					sp_assert(2, 1)
				}
				.nequ {
					ir(.nequ, 0)
					sp_assert(2, 1)
				}
				.gt {
					ir(.gt, 0)
					sp_assert(2, 1)
				}
				.lt {
					ir(.lt, 0)
					sp_assert(2, 1)
				}
				.gte {
					ir(.gte, 0)
					sp_assert(2, 1)
				}
				.lte {
					ir(.lte, 0)
					sp_assert(2, 1)
				}
				.s_gt {
					ir(.s_gt, 0)
					sp_assert(2, 1)
				}
				.s_lt {
					ir(.s_lt, 0)
					sp_assert(2, 1)
				}
				.s_gte {
					ir(.s_gte, 0)
					sp_assert(2, 1)
				}
				.s_lte {
					ir(.s_lte, 0)
					sp_assert(2, 1)
				}
				else {
					if !isnil(function_context) {
						match token_stream[pos].tok {
							.reserve, .auto {
								rs_c := pos
								pos += 2
								if pos >= token_stream.len {
									compile_error_t('unexpected EOF when parsing variable decl',
										rs_c)
								}
								if token_stream[rs_c + 1].tok != .name {
									compile_error_t('variable name must not be an intrinsic',
										rs_c + 1)
								}
								if token_stream[rs_c + 2].tok == .name {
									c := is_constant_name(&u8(token_stream[pos].data))
									if c != -1 {
										replace_as_constant(c, rs_c + 2)
									}
								}
								if token_stream[rs_c + 2].tok != .number_lit {
									
									compile_error_t('variable decl must specify size in bytes',
										rs_c + 2)
								}
								
								name := StringPointer(&u8(token_stream[rs_c + 1].data))
								if is_function_name(name) != -1 {
									compile_error_t('variable decl must not be a function',
										rs_c + 1)
								}
								mut search_p := u32(0)
								if scope_context.len > 0 {
									search_p = scope_context.last().var_scope
									if scope_context.last().typ == .while_block {
										compile_error_t('cannot define variables inside of while headers',
											rs_c)
									}
								}
								for idx in search_p .. var_context.len {
									if var_context[idx].name.str() == name.str() {
										print_backtrace()
										compile_error_('duplicate variable name', token_stream[
											rs_c + 1].row, token_stream[rs_c + 1].col,
											token_stream[rs_c + 1].file)
										compile_info_('orginal variable declared here',
											token_stream[var_context[idx].idx].row, token_stream[var_context[idx].idx].col,
											token_stream[var_context[idx].idx].file)
										exit(1)
									}
								}
								mut size := u32(token_stream[rs_c + 2].data)
								mut typ := if token_stream[rs_c].tok == .reserve {
									VarTyp.buffer
								} else {
									size *= 8
									VarTyp.stack
								}

								var_context << Variable{
									typ: typ
									size: size
									a_sp: function_context.a_sp
									name: name
									idx: rs_c + 1
								}
								function_context.a_sp += size

								function_context.forbid_inline = true
							}
							.pop {
								pos++
								if pos >= token_stream.len || token_stream[pos].tok != .name {
									compile_error_t('unexpected a name after a pop', pos)
								}
								mut f := false
								name := StringPointer(&u8(token_stream[pos].data))
								for v in var_context.reverse() {
									if v.name.str() == name.str() {
										match v.typ {
											.buffer {
												compile_error_t('cannot pop into a buffer',
													pos)
											}
											.stack {
												to_pop := v.size / 8
												if sp.len < to_pop {
													print_backtrace()
													compile_error_('not enought values on the stack to pop into an automatic variable',
														token_stream[pos - 1].row, token_stream[pos - 1].col,
														token_stream[pos - 1].file)
													compile_info_('variable size in words located here',
														token_stream[v.idx + 1].row, token_stream[
														v.idx + 1].col, token_stream[v.idx + 1].file)
													exit(1)
												}

												unsafe {
													sp.len -= int(to_pop)
												}
												a := u64(to_pop) << 32 | u64(v.a_sp)
												ir(.pop_local_stack_var, a)
											}
										}

										f = true
										break
									}
								}
								if f == false {
									for idx, v in global_var_context {
										if v.name.str() == name.str() {
											match v.typ {
												.buffer {
													compile_error_t('cannot pop into a buffer',
														pos)
												}
												.stack {
													to_pop := v.size / 8
													if sp.len < to_pop {
														print_backtrace()
														compile_error_('not enought values on the stack to pop into an automatic variable',
															token_stream[pos - 1].row,
															token_stream[pos - 1].col,
															token_stream[pos - 1].file)
														compile_info_('variable size in words located here',
															token_stream[v.idx + 1].row,
															token_stream[v.idx + 1].col,
															token_stream[v.idx + 1].file)
														exit(1)
													}

													unsafe {
														sp.len -= int(to_pop)
													}
													ir(.pop_global_stack_var, u64(idx))
												}
											}

											f = true
											break
										}
									}
								}
								if !f {
									compile_error_t('unknown auto variable', pos)
								}
							}
							.amps {
								assert false, 'unimplemented'
							}
							.name {
								name := StringPointer(&u8(token_stream[pos].data))
								fn_n := is_function_name(name)
								if fn_n != -1 {
									ir(.fn_call, u64(fn_n))

									if sp.len < functions[fn_n].argc {
										compile_error_t('not enough values to consume for function call',
											pos)
									}
									sp_assert(functions[fn_n].argc, functions[fn_n].retc)
								} else {
									mut f := false
									for v in var_context.reverse() {
										if v.name.str() == name.str() {
											match v.typ {
												.buffer {
													ir(.push_local_addr, v.a_sp)
													sp_push(1)
												}
												.stack {
													to_push := v.size / 8

													a := u64(to_push) << 32 | u64(v.a_sp)
													ir(.push_local_stack_var, a)

													sp_push(to_push)
												}
											}

											f = true
											break
										}
									}
									if f == false {
										for idx, v in global_var_context {
											if v.name.str() == name.str() {
												match v.typ {
													.buffer {
														ir(.push_global_var_name, u64(idx))
														sp_push(1)
													}
													.stack {
														to_push := v.size / 8

														ir(.push_global_stack_var, u64(idx))

														sp_push(to_push)
													}
												}

												f = true
												break
											}
										}
									}
									if f == false {
										c := is_constant_name(&u8(token_stream[pos].data))
										if c != -1 {
											replace_as_constant(c, pos)
											pos--
											continue
										}
									}
									if !f {
										compile_error_t('unknown function call or variable',
											pos)
									}
								}
							}
							.if_block {
								if sp.len == 0 {
									compile_error_t('no value on stack to consume for if statement',
										pos)
								}
								unsafe { sp.len-- }

								lbl := label_allocate()
								scope_context << Scope{
									typ: .if_block
									label_id: lbl
									sp: u32(sp.len)
									var_scope: u32(var_context.len)
									idx: pos
								}

								ir(.do_cond_jmp, lbl)
								pos++
								if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
									compile_error_t('a scope must come after an if statement',
										pos - 1)
								}
							}
							.while_block {
								lbl  := label_allocate()
								ir(.label, lbl)
								scope_context << Scope{
									typ: .while_block
									label_id: lbl
									sp: u32(sp.len)
									var_scope: u32(var_context.len)
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
									compile_error_t('not inside while loop body', pos)
								}
								ir(.do_jmp, scope_context[idx].label_id)
							}
							.continue_block {
								mut idx := u32(-1)
								for s_id, s in scope_context.reverse() {
									if s.typ == .while_block_scope {
										idx = u32(s_id)
										break
									}
								}
								if idx == -1 {
									compile_error_t('not inside while loop body', pos)
								}
								assert scope_context[idx - 1].typ == .while_block
								ir(.do_jmp, scope_context[idx - 1].label_id)
							}
							.l_cb {
								if scope_context.len > 0 && scope_context.last().typ == .while_block {
										if sp.len == 0 {
											compile_error_t('no value on stack to consume for while header',
												pos)
										}
										unsafe { sp.len-- }
										lbl := label_allocate()
										scope_context << Scope{
											typ: .while_block_scope
											label_id: lbl
											sp: u32(sp.len)
											var_scope: u32(var_context.len)
											idx: pos
										}
										ir(.do_cond_jmp, lbl)
								} else {
									scope_context << Scope{
										typ: .scope
										sp: u32(sp.len)
										var_scope: u32(var_context.len)
										idx: pos
									}
								}
							}
							.r_cb {
								if scope_context.len != 0 {
									scope := scope_context.pop()

									// unwind scope, release scoped variables
									unsafe {
										var_context.len = int(scope.var_scope)
									}
									match scope.typ {
										.while_block_scope {
											while_header := scope_context.pop()
											ir(.do_jmp, while_header.label_id)
											ir(.label, scope.label_id)
										}
										.scope {}
										.checked_scope {
											if sp.len > scope.sp {
												sp_error_dep('scope assertation failed, ${u32(sp.len) - scope.sp} more values on the stack than expected',
													scope.idx, u32(sp.len) - scope.sp)
											} else if sp.len < scope.sp {
												sp_error_dep('scope assertation failed, ${scope.sp - u32(sp.len)} less values on the stack than expected',
													scope.idx, scope.sp - u32(sp.len))
											}
										}
										.if_block {
											if pos + 1 < token_stream.len
												&& token_stream[pos + 1].tok == .else_block {
												pos++
												lbl := label_allocate()
												scope_context << Scope{
													typ: .else_block_scope
													label_id: lbl
													sp: u32(sp.len)
													var_scope: u32(var_context.len)
													idx: pos
												}
												unsafe {
													sp.len = int(scope.sp)
												}
												ir(.do_jmp, lbl)
												ir(.label, scope.label_id)

												pos++
												if pos >= token_stream.len
													|| token_stream[pos].tok != .l_cb {
													compile_error_t('a scope must come after an else statement',
														pos - 1)
												}
											} else {
												if scope.sp != u32(sp.len) {
													compile_error_t('the stack must remain the same with single branches',
														pos)
												}
												ir(.label, scope.label_id)
											}
										}
										.else_block_scope {
											// xx more values left on else branch
											// xx less values left on else branch
											if u32(sp.len) > scope.sp {
												compile_error_t('unbalanced stack on both if and else branches, else has ${u32(sp.len) - scope.sp} more',
													scope.idx)
											} else if u32(sp.len) < scope.sp {
												compile_error_t('unbalanced stack on both if and else branches, else has ${scope.sp - u32(sp.len)} less',
													scope.idx)
											}
											ir(.label, scope.label_id)
										}
										else {
											assert false, 'unimplemented'
										}
									}
								} else {
									assert !isnil(function_context)
									ir(.fn_leave, function_context_idx)

									if u32(sp.len) > function_context.retc {
										sp_error('unhandled data on the stack', function_context.idx)
									} else if u32(sp.len) < function_context.retc {
										sp_error('not enough values on the stack on function return',
											function_context.idx)
									}

									unsafe {
										sp.len = 0
										var_context.len = 0
									}
									function_context = unsafe { nil }
									function_context_idx = u64(-1)
								}
							}
							.ret {
								// duplicate code above, and below...
								// move of a reason to extract them into global variables

								assert !isnil(function_context)
								ir(.fn_leave, function_context_idx)

								if u32(sp.len) > function_context.retc {
									sp_error('unhandled data when returning early from function',
										function_context.idx)
								} else if u32(sp.len) < function_context.retc {
									sp_error('not enough values on the stack on function return',
										function_context.idx)
								}

								// (except ones that end in a return)
								// not the best solution...

								scope := scope_context.last()
								if scope.typ == .if_block {
									unsafe {
										sp.len = int(scope.sp)
									}
								}

								function_context.forbid_inline = true

								// unsafe { sp.len -= int(function_context.retc) }
							}
							.arrw {
								arrw_c := pos
								pos++

								if pos >= token_stream.len || token_stream[pos].tok != .number_lit {
									compile_error_t('a number must appear after the arrow assert operator',
										arrw_c)
								}
								num := token_stream[pos].data

								scope_context << Scope{
									typ: .checked_scope
									sp: u32(sp.len) + u32(num)
									var_scope: u32(var_context.len)
									idx: pos
								}
								pos++
								if pos >= token_stream.len || token_stream[pos].tok != .l_cb {
									compile_error_t('a scope must come after the arrow assert operator',
										arrw_c)
								}
							}
							.string_lit {
								ir(.push_str, u64(slits.len))
								slits << &u8(token_stream[pos].data)
								sp_push(2)
							}
							.w8 {
								ir(.w8, 0)
								sp_assert(2, 0)
							}
							.w16 {
								ir(.w16, 0)
								sp_assert(2, 0)
							}
							.w32 {
								ir(.w32, 0)
								sp_assert(2, 0)
							}
							.w64 {
								ir(.w64, 0)
								sp_assert(2, 0)
							}
							.r8 {
								ir(.r8, 0)
								sp_assert(1, 1)
							}
							.r16 {
								ir(.r16, 0)
								sp_assert(1, 1)
							}
							.r32 {
								ir(.r32, 0)
								sp_assert(1, 1)
							}
							.r64 {
								ir(.r64, 0)
								sp_assert(1, 1)
							}
							.trap_breakpoint {
								ir(.trap_breakpoint, 0)
							}
							.syscall0 {
								ir(.syscall0, 0)
								sp_assert(1, 1)
							}
							.syscall1 {
								ir(.syscall1, 0)
								sp_assert(2, 1)
							}
							.syscall2 {
								ir(.syscall2, 0)
								sp_assert(3, 1)
							}
							.syscall3 {
								ir(.syscall3, 0)
								sp_assert(4, 1)
							}
							.syscall4 {
								ir(.syscall4, 0)
								sp_assert(5, 1)
							}
							.syscall5 {
								ir(.syscall5, 0)
								sp_assert(6, 1)
							}
							.syscall6 {
								ir(.syscall6, 0)
								sp_assert(7, 1)
							}
							.argc {
								ir(.push_argc, 0)
								sp_assert(0, 1)
							}
							.argv {
								ir(.push_argv, 0)
								sp_assert(0, 1)
							}
							else {
								compile_error_t('unknown function local token', pos)
							}
						}
					} else {
						if token_stream[pos].tok == .const_expression {
							compile_error_t('cannot define constant expression inside a constant expression',
								pos)
						}
						compile_error_t('unknown constant expression token', pos)
					}
				}
			}
		}
	}

	assert var_context.len == 0 && sp.len == 0
	if scope_context.len != 0 {
		compile_error_t('unclosed scopes on parser finish', u32(token_stream.len) - 1)
	}
	if !isnil(function_context) {
		compile_error_t('unexpected EOF when parsing function, scopes may be unclosed',
			u32(token_stream.len) - 1)
	}
}
