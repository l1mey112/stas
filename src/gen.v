fn writeln(a string) {
	println(a)
}
fn write(a string) {
	print(a)
}

const fn_arg_regs = [
	'rdi'
	'rsi'
	'rdx'
	'rcx'
	'r8'
	'r9'
]

// function_list

fn get_asm() {
	assert has_main, "no main function"

	writeln('format ELF64 executable')
	writeln('segment readable')

	for f in function_list {
		for i in f.string_lits {
			write('slit_${f.idx_start}_${i}: db ')
			for c in name_strings[tokens[i].usr1] {
				write('${u8(c).hex()}h, ')
			}
			writeln('0')
		}
	}

	writeln('segment readable executable')
	writeln('entry _start')
	writeln('_start:')
	writeln('call main')
	writeln('xor rdi, rdi')
	writeln('_exit:')
	writeln('mov rax, 60')
	writeln('syscall')

	gen()
}

// automatic function hoisting because asm and intermediate step

// automatic function inlining since this push and pop (stack)
// just copy paste

fn gen() {
	// for i := function idx start ; i < function idx end
	// maybe do this, i don't see the need though

	mut pos := u64(0)
	for ; pos < tokens.len ; pos++ {
		match tokens[pos].tok {
			.func {
				f := function_list[tokens[pos].usr1]
				// Function{name:, argc:, retc:, idx_start:, idx_end:}
				assert f.idx_start > pos, "something bad has happened"
				assert f.idx_end > pos, "something bad has happened part two"

				writeln('${name_strings[f.name]}:')
				writeln('push rbp')
				writeln('mov rbp, rsp')

				for i := 0 ; i < f.argc ; i++ {
					writeln('push ${fn_arg_regs[i]}')
				}

				mut stackdepth := int(f.argc) // THIS HAS TO BE AN INT.....

				mut ipos := f.idx_start
				for ; ipos <= f.idx_end ; ipos++ {
					match tokens[ipos].tok {
						.endfunc, .ret {
							stackdepth -= int(f.retc)
							assert stackdepth >= 0, "not enough values on stack to consume for returning"
							assert stackdepth == 0, "unhandled elements on the stack"

							for retc := f.retc ; retc > 0 ; {
								retc--
								writeln('pop ${fn_arg_regs[retc]}')
							}
							writeln('leave')
							writeln('ret')
						}
						._inline_ {
							ipos++
							stackdepth -= int(tokens[ipos].usr1)
							assert stackdepth >= 0, "not enough values on stack to consume for inline assembly"
							ipos++
							stackdepth += int(tokens[ipos].usr1)
							ipos++							
							writeln('; <_inline_>')
							writeln(name_strings[tokens[ipos].usr1])
							writeln('; </_inline_>')
						}
						.string_lit {
							writeln('push slit_${f.idx_start}_${ipos}')
							stackdepth++
						}
						.if_block {
							assert stackdepth > 0, "no boolean on stack to consume for if statement"
							stackdepth--

							if_tok := ipos
							mut ifpos := ipos + 1

							writeln('pop rax')
							writeln('test al, al')
							if tokens[if_tok].usr1 != 0 { // has else
								writeln('je .${if_tok}_if_else')
							} else {
								writeln('je .${if_tok}_if_end')
							}
							writeln('.${if_tok}_if:')

							mut ifend := tokens[if_tok].usr1

							startdepth := stackdepth
							for ; ifpos < ifend ; ifpos++ {
								stackdepth = genone(stackdepth, ifpos)
							}
							branchdepth := stackdepth

							if tokens[ifend].usr1 != 0 {
								stackdepth = startdepth

								ifend = tokens[ifend].usr1
								writeln('jmp .${if_tok}_if_end')
								writeln('.${if_tok}_if_else:')
								assert tokens[ifpos].tok == .else_block, "oops" 
								ifpos++

								for ; ifpos < ifend ; ifpos++ {
									stackdepth = genone(stackdepth, ifpos)
								}
								assert branchdepth == stackdepth, "unbalaced stack on both if and else branches"
							}
							writeln('.${if_tok}_if_end:')

							ipos = ifend
						}
						else {
							stackdepth = genone(stackdepth, ipos)
						}
					}
					assert stackdepth >= 0, "-----------------" // shouldn't reach here
				}
				pos = f.idx_end
			}
			else {
				eprintln(tokens[pos])
				eprintln(pos)
				assert false, "unexpected toplevel keyword"
			}
		}
	}
}

fn genone(_stackdepth int, ipos u64) (int) {
	mut stackdepth := _stackdepth

	match tokens[ipos].tok {
		.add {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('add rsi, rdi')
			writeln('push rsi')
			stackdepth--
		}
		.sub {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('sub rsi, rdi')
			writeln('push rsi')
			stackdepth--
		}
		.mul {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('imul rsi, rdi')
			writeln('push rsi')
			stackdepth--
		}
		.div {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor edx, edx')
			writeln('div rdi')
			writeln('push rax')
			stackdepth--
		}
		.mod {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor edx, edx')
			writeln('div rdi')
			writeln('push rdx')
			stackdepth--
		}
		.divmod {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor rdx, rdx')
			writeln('div rdi')
			writeln('push rax')
			writeln('push rdx')
		}
		.inc {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('inc rdi')
			writeln('push rdi')
		}
		.dec {
			assert stackdepth >= 1, "not enough values on the stack to consume"
			writeln('pop rdi')
			writeln('dec rdi')
			writeln('push rdi')
		}
		.equal {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('sete al')
			writeln('push rax')
			stackdepth--
		}
		.notequal {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('setne al')
			writeln('push rax')
			stackdepth--
		}
		.greater {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('seta al')
			writeln('push rax')
			stackdepth--
		}
		.less {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('setb al')
			writeln('push rax')
			stackdepth--
		}
		.shr {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rcx')
			writeln('pop rdi')
			writeln('shr rdi, cl')
			writeln('push rdi')
			stackdepth--
		}
		.shl {
			assert stackdepth >= 2, "not enough values on the stack to consume"
			writeln('pop rcx')
			writeln('pop rdi')
			writeln('shl rdi, cl')
			writeln('push rdi')
			stackdepth--
		}
		.drop {
			assert stackdepth >= 1, "not enough values on the stack to consume"
			writeln('add rsp, 8')
			stackdepth--
		}
		.number_lit {
			writeln('push ${tokens[ipos].usr1}')
			stackdepth++
		}
		.name {
			mut fn_call := Function{}
			for fer in function_list {
				if name_strings[fer.name] == name_strings[tokens[ipos].usr1] { // idx == idx
					fn_call = fer 
					break
				}
			}
			assert fn_call.idx_start != 0, "unknown function or value name"

			stackdepth -= int(fn_call.argc)
			assert stackdepth >= 0, "not enough arguments to consume from stack for function call"
			
			for argc := fn_call.argc ; argc > 0 ; {
				argc--
				writeln('pop ${fn_arg_regs[argc]}')
			}

			writeln('call ${name_strings[fn_call.name]}')
			for i := 0 ; i < fn_call.retc ; i++ {
				writeln('push ${fn_arg_regs[i]}')
			}
			stackdepth += int(fn_call.retc)
		}
//		.deref8, .deref16, .deref32, .deref64, .write8, .write16, .write32, .write64 {panic("")}
//		.string_lit, .d_define, .d_enddef, .d_include, .reserve {panic("")}
		._breakpoint_inspect_ {
			assert stackdepth > 0, "must contain at least one value on the stack to inspect"
			writeln('mov rax, [rsp]')
			writeln('db 0xcc') // int 3
		}
		else {panic("${tokens[ipos]} $ipos")}
	}
	
	return stackdepth
}