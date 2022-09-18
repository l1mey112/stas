import strconv

fn writeln(a string) {
	println(a)
}

const fn_arg_regs = [
	'rdi'
	'rsi'
	'rdx'
	'rcx'
	'r8'
	'r9'
]

fn get_asm(tokens []Token) {
	writeln('format ELF64 executable')
	writeln('segment readable executable')
	writeln('entry _start')
	writeln('_start:')
	writeln('call main')
	writeln('xor rdi, rdi')
	writeln('_exit:')
	writeln('mov rax, 60')
	writeln('syscall')

	mut pos := 0

	mut stackdepth := 0
	mut in_func := false
	mut does_current_func_ret := false
	mut funcs := map[string] struct {
		ret bool
		args int
	}

	for {
		if pos >= tokens.len {
			break
		}
		if in_func {
			match tokens[pos].tok {
				.add {
					writeln('pop rdi')
					writeln('pop rsi')
					writeln('add rsi, rdi')
					writeln('push rsi')
					stackdepth--
				}
				.sub {
					writeln('pop rdi')
					writeln('pop rsi')
					writeln('sub rsi, rdi')
					writeln('push rsi')
					stackdepth--
				}
				.mul {
					writeln('pop rdi')
					writeln('pop rsi')
					writeln('imul rsi, rdi')
					writeln('push rsi')
					stackdepth--
				}
				.div {
					writeln('pop rdi')
					writeln('pop rax')
					writeln('xor edx, edx')
					writeln('div rdi')
					writeln('push rax')
					stackdepth--
				}
				.mod {
					writeln('pop rdi')
					writeln('pop rax')
					writeln('xor edx, edx')
					writeln('div rdi')
					writeln('push rdx')
					stackdepth--
				}
				.divmod {
					writeln('pop rdi')
					writeln('pop rax')
					writeln('xor rdx, rdx')
					writeln('div rdi')
					writeln('push rax')
					writeln('push rdx')
				}
				.inc {
					writeln('pop rdi')
					writeln('inc rdi')
					writeln('push rdi')
				}
				.dec {
					writeln('pop rdi')
					writeln('dec rdi')
					writeln('push rdi')
				}
				.equal {
					writeln('pop rsi')
					writeln('pop rdi')
					writeln('xor rax, rax')
					writeln('cmp rdi, rsi')
					writeln('sete al')
					writeln('push rax')
					stackdepth--
				}
				.notequal {
					writeln('pop rsi')
					writeln('pop rdi')
					writeln('xor rax, rax')
					writeln('cmp rdi, rsi')
					writeln('setne al')
					writeln('push rax')
					stackdepth--
				}
				.greater {
					writeln('pop rsi')
					writeln('pop rdi')
					writeln('xor rax, rax')
					writeln('cmp rdi, rsi')
					writeln('seta al')
					writeln('push rax')
					stackdepth--
				}
				.less {
					writeln('pop rsi')
					writeln('pop rdi')
					writeln('xor rax, rax')
					writeln('cmp rdi, rsi')
					writeln('setb al')
					writeln('push rax')
					stackdepth--
				}
				.shr {
					writeln('pop rcx')
					writeln('pop rdi')
					writeln('shr rdi, cl')
					writeln('push rdi')
					stackdepth--
				}
				.shl {
					writeln('pop rcx')
					writeln('pop rdi')
					writeln('shl rdi, cl')
					writeln('push rdi')
					stackdepth--
				}
				.drop {
					writeln('add rsp, 8')
					stackdepth--
				}
				.endfunc {
					if does_current_func_ret {
						assert stackdepth == 1, "no value on stack to consume for returning"
						stackdepth = 0
						does_current_func_ret = false
						writeln('pop rax')
					} else {
						assert stackdepth == 0, "unhandled or consumed too much elements on the stack"
					}
					writeln('ret')

					in_func = false
				}
				.number_lit {
					num := strconv.parse_uint(tokens[pos].lit, 10, 64) or {
						panic("you have the wrong number")
					}
					writeln('push $num')
					
					stackdepth++
				}
				.name {
					assert tokens[pos].lit in funcs, "unknown function or value name"
					stackdepth -= funcs[tokens[pos].lit].args
					assert stackdepth >= 0, "not enough arguments to consume from stack"
					
					mut argc := funcs[tokens[pos].lit].args
					for argc > 0 {
						argc--
						writeln('pop ${fn_arg_regs[argc]}')
					}
					
					writeln('call ${tokens[pos].lit}')
					if funcs[tokens[pos].lit].ret {
						writeln('push rax')
						stackdepth++
					}
				}
				.deref8, .deref16, .deref32, .deref64, .write8, .write16, .write32, .write64 {panic("")}
				.string_lit, .d_define, .d_enddef, .d_include, .reserve {panic("")}
				.__breakpoint_inspect {
					assert stackdepth > 0, "must contain at least one value on the stack to inspect"
					writeln('mov rax, [rsp-8]')
					writeln('db 0xcc') // int 3
				}
				else {panic("${tokens[pos]}")}
			}
		} else {
			match tokens[pos].tok {
				.func {
					pos++
					assert pos < tokens.len, "unexpected EOF when parsing function"
					assert tokens[pos].tok == .name, "function name must not be an intrinsic"
					assert tokens[pos].lit[0] != `_`, "function name must not contain an underscore"
					fn_name := tokens[pos].lit

					pos++
					assert pos < tokens.len, "unexpected EOF when parsing function"
					mut fn_rets := false 
					mut fn_args := 0
					if tokens[pos].tok != .do_block {
						assert tokens[pos].tok == .number_lit, "function argument count must be a number"
						fn_args = tokens[pos].lit.int()
						// the way the scanner has been set up, this can never fail. forget the strconv above
						
						assert fn_args <= 6, "function must not accept more that 6 arguments"
						// just a setup for when stack locals come into place

						pos++
						assert pos < tokens.len, "unexpected EOF when parsing function"
						if tokens[pos].tok == .retarrw {
							fn_rets = true
							does_current_func_ret = true
							pos++
							assert pos < tokens.len, "unexpected EOF when parsing function"
						}
						assert tokens[pos].tok == .do_block, "functions must not contain arguments, for now"
					}
					
					funcs[fn_name] = struct {
						ret: fn_rets
						args: fn_args
					}
					in_func = true
					stackdepth += fn_args // setup stack with args
					writeln('$fn_name:')
					/* writeln('push rbp')
					writeln('push rbp, rsp') */

					for i := 0 ; i < fn_args ; i++ {
						writeln('push ${fn_arg_regs[i]}')
					}
				}
				else {
					panic("----- ${tokens[pos]}")
				}
			}
		}
		pos++
	}
	assert !in_func, "unexpected EOF, function was not ended"
	assert 'main' in funcs, "no main function"

	/* println('----------------')
	println(funcs) */
}