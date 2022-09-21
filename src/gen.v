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

__global create_debug_object = false

const escape_ch = {
	`a` : u8(0x07)
	`b` : 0x08
	`e` : 0x1B
	`f` : 0x0C
	`n` : 0x0A
	`r` : 0x0D
	`t` : 0x09
	`v` : 0x0B
}

fn get_asm() {
	if !has_main {
		compile_error_f("no main function", 0)
	}

	if create_debug_object {
		writeln('format ELF64')
		writeln('section \'.rodata\'')
	} else {
		writeln('format ELF64 executable')
		writeln('segment readable')
	}
	

	for f in function_list {
		for i in f.string_lits {
			label := 'slit_${f.idx_start}_${i}'
			if create_debug_object {
				writeln('public $label')
			}
			write('$label: db ')
			mut ndelim := false
			for c in name_strings[tokens[i].usr1] {
				mut cw := c
				if ndelim {
					if c != `\\` {
						escape := escape_ch[c] or {
							compile_error_t("escape character '${c.ascii_str()}' does not exist", i)
						}
						cw = escape
					}
					ndelim = false
				} else if c == `\\` {
					ndelim = true
					continue
				}
				write('${u8(cw).hex()}h, ')
			}
			if ndelim {
				compile_error_t("unhandled escape character", i)
			}
			writeln('0')
		}
	}

	if create_debug_object {
		writeln('section \'.text\' executable')
		writeln('public _start')
		writeln('public _exit')
	} else {
		writeln('segment readable executable')
		writeln('entry _start')
	}
	
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

				if create_debug_object {
					writeln('public ${name_strings[f.name]}')
				}
				writeln('${name_strings[f.name]}:')
				writeln('push rbp')
				writeln('mov rbp, rsp')
				writeln('sub rsp, ${f.stackframe}')

				for i := 0 ; i < f.argc ; i++ {
					writeln('push ${fn_arg_regs[i]}')
				}

				mut stackdepth := int(f.argc) // THIS HAS TO BE AN INT.....

				mut ipos := f.idx_start
				for ; ipos <= f.idx_end ; ipos++ {
					stackdepth, ipos = genone(stackdepth, ipos, f)
					assert stackdepth >= 0 // shouldn't reach here
				}
				pos = f.idx_end
			}
			else {
				compile_error_t("unexpected toplevel keyword", pos)
			}
		}
	}
}

fn genone(_stackdepth int, _ipos u64, f Function) (int, u64) {
	mut stackdepth := _stackdepth
	mut ipos := _ipos

	match tokens[ipos].tok {
		.add {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('add rsi, rdi')
			writeln('push rsi')
			stackdepth--
		}
		.sub {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('sub rsi, rdi')
			writeln('push rsi')
			stackdepth--
		}
		.mul {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('imul rsi, rdi')
			writeln('push rsi')
			stackdepth--
		}
		.div {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor edx, edx')
			writeln('div rdi')
			writeln('push rax')
			stackdepth--
		}
		.mod {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor edx, edx')
			writeln('div rdi')
			writeln('push rdx')
			stackdepth--
		}
		.divmod {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor rdx, rdx')
			writeln('div rdi')
			writeln('push rax')
			writeln('push rdx')
		}
		.inc {
			if stackdepth < 1 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('inc rdi')
			writeln('push rdi')
		}
		.dec {
			if stackdepth < 1 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rdi')
			writeln('dec rdi')
			writeln('push rdi')
		}
		.equal {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('sete al')
			writeln('push rax')
			stackdepth--
		}
		.notequal {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('setne al')
			writeln('push rax')
			stackdepth--
		}
		.greater {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('seta al')
			writeln('push rax')
			stackdepth--
		}
		.less {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('setb al')
			writeln('push rax')
			stackdepth--
		}
		.shr {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rcx')
			writeln('pop rdi')
			writeln('shr rdi, cl')
			writeln('push rdi')
			stackdepth--
		}
		.shl {
			if stackdepth < 2 {
				compile_error_t("not enough values on the stack to consume", ipos)
			}
			writeln('pop rcx')
			writeln('pop rdi')
			writeln('shl rdi, cl')
			writeln('push rdi')
			stackdepth--
		}
		.number_lit {
			writeln('push qword ${tokens[ipos].usr1}')
			stackdepth++
		}
//		.deref8, .deref16, .deref32, .deref64, .write8, .write16, .write32, .write64 {panic("")}
//		.string_lit, .d_define, .d_enddef, .d_include, .reserve {panic("")}
		._breakpoint_inspect_ {
			if stackdepth <= 0 {
				compile_error_t("must contain at least one value on the stack to inspect", ipos)
			}
			writeln('mov rax, [rsp]')
			writeln('db 0xcc') // int 3
		}
		.while_block {
			while_tok := ipos
			mut whilepos := ipos + 1
			doend := tokens[while_tok].usr1

			writeln('.${while_tok}_while:')

			for ; whilepos < doend ; whilepos++ {
				stackdepth, whilepos = genone(stackdepth, whilepos, f)
			}

			if stackdepth <= 0 {
				compile_error_t("no boolean on stack to consume for while statement", ipos)
			}
			stackdepth--

			writeln('pop rax')
			writeln('test al, al')
			writeln('je .${while_tok}_while_end')

			whileend := tokens[doend].usr1

			whilepos++
			for ; whilepos < whileend ; whilepos++ {
				stackdepth, whilepos = genone(stackdepth, whilepos, f)
			}

			writeln('jmp .${while_tok}_while')
			writeln('.${while_tok}_while_end:')

			ipos = whilepos
		}
		.if_block {
			if stackdepth <= 0 {
				compile_error_t("no boolean on stack to consume for if statement", ipos)
			}
			stackdepth--

			if_tok := ipos
			mut ifpos := ipos + 1

			writeln('pop rax')
			writeln('test al, al')
			if tokens[tokens[if_tok].usr1].usr1 != 0 { // has else
				writeln('je .${if_tok}_if_else')
			} else {
				writeln('je .${if_tok}_if_end')
			}
			writeln('.${if_tok}_if:')

			mut ifend := tokens[if_tok].usr1

			startdepth := stackdepth
			for ; ifpos < ifend ; ifpos++ {
				stackdepth, ifpos = genone(stackdepth, ifpos, f)
			}
			branchdepth := stackdepth

			if tokens[ifend].usr1 != 0 {
				stackdepth = startdepth

				ifend = tokens[ifend].usr1
				writeln('jmp .${if_tok}_if_end')
				writeln('.${if_tok}_if_else:')
				ifpos++

				for ; ifpos < ifend ; ifpos++ {
					stackdepth, ifpos = genone(stackdepth, ifpos, f)
				}
				if branchdepth != stackdepth {
					// compile_error_t("unbalaced stack on both if ($branchdepth) and else ($stackdepth) branches (from $startdepth)", ipos)
					compile_error_t("unbalaced stack on both if and else branches", ipos)
				}
			}
			writeln('.${if_tok}_if_end:')
			ipos = ifend
		}
		.name {
			mut fn_call := Function{}
			for fer in function_list {
				if name_strings[fer.name] == name_strings[tokens[ipos].usr1] {
					fn_call = fer 
					break
				}
			}
			if fn_call.idx_start != 0 {
				stackdepth -= int(fn_call.argc)
				if stackdepth < 0 {
					compile_error_t("not enough arguments to consume from stack for function call", ipos)
				}
				
				for argc := fn_call.argc ; argc > 0 ; {
					argc--
					writeln('pop ${fn_arg_regs[argc]}')
				}

				writeln('call ${name_strings[fn_call.name]}')
				for i := 0 ; i < fn_call.retc ; i++ {
					writeln('push ${fn_arg_regs[i]}')
				}
				stackdepth += int(fn_call.retc)
			} else {
				mut svar := StackVar{}
				for fer in f.stackvars {
					if name_strings[tokens[fer.tok].usr1] == name_strings[tokens[ipos].usr1] {
						svar = fer
						break
					}
				}

				if svar.tok == 0 {
					compile_error_t("unknown function or stack value name", ipos)
				}

				writeln('lea rdi, [rbp-$svar.loc]')
				writeln('push rdi')
				stackdepth++
			}							
		}
		.endfunc, .ret {
			stackdepth -= int(f.retc)
			if stackdepth < 0 {
				compile_error_t("not enough values on stack to consume for returning", ipos)
			}
			if tokens[ipos].tok == .endfunc && stackdepth != 0 {
				compile_error_t("unhandled elements on the stack on function return", f.idx_start)
			}

			for retc := f.retc ; retc > 0 ; {
				retc--
				writeln('pop ${fn_arg_regs[retc]}')
			}
			writeln('leave')
			writeln('ret')
		}
		._asm {
			ipos++
			stackdepth -= int(tokens[ipos].usr1)
			if stackdepth < 0 {
				compile_error_t("not enough values on stack to consume for assembly invocation", ipos)
			}
			ipos++
			stackdepth += int(tokens[ipos].usr1)
			ipos++							
			writeln('; <asm>')
			writeln(name_strings[tokens[ipos].usr1])
			writeln('; </asm>')
		}
		.string_lit {
			writeln('push slit_${f.idx_start}_${ipos}')
			stackdepth++
		}
		.reserve {
			ipos += 2
		}
		else {panic("${tokens[ipos]} $ipos")}
	}
	
	return stackdepth, ipos
}