fn writeln(str string) {
	println(str)
}

fn write(str string) {
	print(str)
}

fn gen() {
	/*
	if !is_object_file && main_fn == -1 {
		assert false, 'no main function'
		// compile_error_f("no main function", 0)
	}*/

	writeln('use64')
	if is_object_file {
		writeln('format ELF64')
		writeln("section '.text' executable")
		writeln('public _start')
		writeln('public _exit')
	} else {
		writeln('format ELF64 executable')
		writeln('segment readable executable')
		writeln('entry _start')
	}

	writeln('_start:')
	writeln('    mov qword [_rs_p], _rs_top')
	writeln('    mov rbp, rsp')
	writeln('    mov rsp, [_rs_p]')
	writeln('    call main')
	writeln('    xor rdi, rdi')
	writeln('_exit:')
	writeln('    mov eax, 60')
	writeln('    syscall')

	gen_range(0, u32(ir_stream.len))

	if is_object_file {
		writeln("section '.rodata'")
	} else {
		writeln('segment readable')
	}
	for idx, s in slits {
		len := *&u64(s)
		str := unsafe { &u8(s) + sizeof(u64) }
		write('_slit_$idx: db ')
		unsafe {
			for i := 0; i < len; i++ {
				write('${str[i]}, ')
			}
		}
		writeln('0')
	}
	if is_object_file {
		writeln("section '.bss'")
	} else {
		writeln('segment readable writable')
	}
	writeln('_rs_p: rq 1')
	writeln('_rs: rb 65536')
	writeln('_rs_top:')
}

fn gen_range(start u32, end u32) u32 {
	mut const_stack := []u64{}
	mut const_stack_r := &mut const_stack
	mut pos := start

	// mut function_context := &Function(0)

	mut overhead := u32(0)
	mut body_size := u32(0)

	// TODO: this should increment the overhead variable, but it isn't global...

	flush_const_stack := fn [mut const_stack_r] () {
		for n in *const_stack_r {
			if n >= 0xFFFFFFF {
				writeln('mov rax, $n')
				writeln('push rax')
			} else {
				writeln('    push $n')
			}
		}
		unsafe {
			(*const_stack_r).len = 0
		}
	}

	for ; pos < end; pos++ {
		ir_data := ir_stream[pos].data
		ins := ir_stream[pos].inst

		match true {
			ins == .push_num {
				const_stack << ir_data
			}
			ins == .plus && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a + b
			}
			ins == .sub && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a - b
			}
			ins == .mul && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a * b
			}
			ins == .div && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a / b
			}
			ins == .mod && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a % b
			}
			ins == .inc && const_stack.len >= 1 {
				const_stack[const_stack.len - 1]++
			}
			ins == .dec && const_stack.len >= 1 {
				const_stack[const_stack.len - 1]--
			}
			ins == .divmod && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a % b
				const_stack << a / b
			}
			ins == .shr && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a >> b
			}
			ins == .shl && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a << b
			}
			ins == .do_cond_jmp && const_stack.len >= 1 {
				c := const_stack.pop()

				if c == 0 {
					mut d := false
					for mpos := pos; mpos < end; mpos++ {
						if ir_stream[mpos].inst == .label && ir_stream[mpos].data == ir_data {
							pos = mpos
							d = true
							break
						}
					}
					assert d, 'unreachable'
				}
			}
			else {
				flush_const_stack()

				match ir_stream[pos].inst {
					._assert {
						lbl := label_allocate()
						writeln('    pop rax')
						writeln('    test al, al')
						writeln('    jnz .${lbl}')
						writeln('    mov eax, 1')
						writeln('    mov edi, 2')
						writeln('    mov rsi, _slit_${ir_data}')
						writeln('    mov rdx, ${*(&u64(slits[ir_data]))}')
						writeln('    syscall')
						writeln('    mov rdi, 1')
						writeln('    jmp _exit')
						writeln('.${lbl}:')
						body_size += 10
					}
					.push_num {
						assert false, 'unreachable'
					}
					.push_str {
						len := *&u64(slits[ir_data])
						writeln('    push _slit_$ir_data')
						writeln('    push $len')
						body_size += 2
					}
					.label {
						writeln('.$ir_data:')
					}
					.fn_prelude {
						fn_c := &Function(ir_data)

						// assert isnil(function_context)
						// function_context = fn_c
						assert overhead == 0 && body_size == 0

						if is_object_file {
							writeln('public $fn_c.name.str()')
						}
						writeln('$fn_c.name.str():')
						if fn_c.a_sp > 0 {
							writeln('    sub rsp, $fn_c.a_sp')
							overhead += 1
						}
						writeln('    mov [_rs_p], rsp')
						writeln('    mov rsp, rbp')
						overhead += 2
					}
					.fn_leave {
						mut fn_c := &Function(ir_data)
						writeln('    mov rbp, rsp')
						writeln('    mov rsp, [_rs_p]')
						if fn_c.a_sp > 0 {
							writeln('    add rsp, $fn_c.a_sp')
							overhead += 1
						}
						writeln('    ret')
						overhead += 3

						// plus the overhead for actually calling the function
						overhead += 5

						if !fn_c.forbid_inline && overhead < body_size {
							fn_c.forbid_inline = true
						}

						// eprintln("function ${fn_c.name.str()}, inlinable: ${!fn_c.forbid_inline}")

						overhead, body_size = 0, 0
					}
					.fn_call {
						fn_c := &Function(ir_data)
						if !fn_c.forbid_inline {
							body_start := fn_c.start_inst + 1
							mut body_end := body_start
							for ; ir_stream[body_end].inst != .fn_leave; body_end++ {
								assert body_end < end
							}
							body_size += gen_range(body_start, body_end)
						} else {
							writeln('    mov rbp, rsp')
							writeln('    mov rsp, [_rs_p]')
							writeln('    call $fn_c.name.str()')
							writeln('    mov [_rs_p], rsp')
							writeln('    mov rsp, rbp')
							body_size += 5
						}
					}
					.push_local_addr {
						if ir_data == 0 {
							writeln('    push qword [_rs_p]')
							body_size += 1
						} else {
							writeln('    mov rdi, [_rs_p]')
							writeln('    add rdi, $ir_data')
							writeln('    push rdi')
							body_size += 3
						}
					}
					.push_local_stack_var {
						a := unsafe { &u32(&ir_data) }
						addr := unsafe { a[0] }
						count := unsafe { a[1] }
						writeln('    mov rdi, [_rs_p]')
						for i in 0 .. count {
							writeln('    push qword [rdi + ${addr + (count - i - 1) * 8}]')
							body_size += 1
						}
						body_size += 1
					}
					.pop_local_stack_var {
						a := unsafe { &u32(&ir_data) }
						addr := unsafe { a[0] }
						count := unsafe { a[1] }
						writeln('    mov rdi, [_rs_p]')
						for i in 0 .. count {
							writeln('    pop qword [rdi + ${addr + i * 8}]')
							body_size += 1
						}
						body_size += 1
					}
					.do_cond_jmp {
						writeln('    pop rax')
						writeln('    test al, al')
						writeln('    jz .$ir_data')
						body_size += 3
					}
					.do_jmp {
						writeln('    jmp .$ir_data')
						body_size += 1
					}
					.plus {
						writeln('    pop rdi')
						writeln('    add [rsp], rdi')
						body_size += 2
					}
					.sub {
						writeln('    pop rdi')
						writeln('    sub [rsp], rdi')
						body_size += 2
					}
					.mul {
						writeln('    pop rdi')
						writeln('    imul [rsp], rdi')
						body_size += 2
					}
					.div {
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    xor rdx, rdx')
						writeln('    div rdi')
						writeln('    push rax')
						body_size += 5
					}
					.mod {
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    xor rdx, rdx')
						writeln('    div rdi')
						writeln('    push rdx')
						body_size += 5
					}
					.inc {
						writeln('    inc qword [rsp]')
						body_size += 1
					}
					.dec {
						writeln('    dec qword [rsp]')
						body_size += 1
					}
					.divmod {
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    xor rdx, rdx')
						writeln('    div rdi')
						writeln('    push rax')
						writeln('    push rdx')
						body_size += 6
					}
					.shr {
						writeln('    pop rcx')
						writeln('    pop rdi')
						writeln('    shr rdi, cl')
						writeln('    push rdi')
					}
					.shl {
						writeln('    pop rcx')
						writeln('    pop rdi')
						writeln('    shl rdi, cl')
						writeln('    push rdi')
					}
					.b_and {
						writeln('pop rsi')
						writeln('pop rdi')
						writeln('and rdi, rsi')
						writeln('push rdi')
					}
					.b_or {
						writeln('pop rsi')
						writeln('pop rdi')
						writeln('or rdi, rsi')
						writeln('push rdi')
					}
					.b_not {
						writeln('pop rsi')
						writeln('pop rdi')
						writeln('not rdi, rsi')
						writeln('push rdi')
					}
					.b_xor {
						writeln('pop rsi')
						writeln('pop rdi')
						writeln('xor rdi, rsi')
						writeln('push rdi')
					}
					.swap {
						writeln('    pop rdi')
						writeln('    pop rsi')
						writeln('    push rdi')
						writeln('    push rsi')
						body_size += 4
					}
					.dup {
						writeln('    mov rdi, [rsp]')
						writeln('    push rdi')
						body_size += 2
					}
					.over {
						writeln('    mov rdi, [rsp - 8]')
						writeln('    push rdi')
						body_size += 2
					}
					.rot {
						writeln('    pop rdi')
						writeln('    pop rsi')
						writeln('    pop rdx')
						writeln('    push rdi')
						writeln('    push rdx')
						writeln('    push rsi')
						body_size += 6
					}
					.rot4 {
						writeln('    pop rdi')
						writeln('    pop rsi')
						writeln('    pop rdx')
						writeln('    pop rbx')
						writeln('    push rdi')
						writeln('    push rbx')
						writeln('    push rdx')
						writeln('    push rsi')
						body_size += 8
					}
					.drop {
						writeln('    add rsp, 8')
						body_size += 1
					}
					.trap_breakpoint {
						writeln('    mov rax, [rsp]')
						writeln('    db 0xcc')
						body_size += 2
					}
					.equ {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    xor rax, rax')
						writeln('    cmp rdi, rsi')
						writeln('    sete al')
						writeln('    push rax')
						body_size += 6
					}
					.nequ {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    xor rax, rax')
						writeln('    cmp rdi, rsi')
						writeln('    setne al')
						writeln('    push rax')
						body_size += 6
					}
					.gt {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    xor rax, rax')
						writeln('    cmp rdi, rsi')
						writeln('    seta al')
						writeln('    push rax')
						body_size += 6
					}
					.lt {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    xor rax, rax')
						writeln('    cmp rdi, rsi')
						writeln('    setb al')
						writeln('    push rax')
						body_size += 6
					}
					.gte {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    xor rax, rax')
						writeln('    cmp rdi, rsi')
						writeln('    setae al')
						writeln('    push rax')
						body_size += 6
					}
					.lte {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    xor rax, rax')
						writeln('    cmp rdi, rsi')
						writeln('    setbe al')
						writeln('    push rax')
						body_size += 6
					}
					.w8 {
						writeln('    pop rax')
						writeln('    pop rdi')
						writeln('    mov byte [rdi], al')
						body_size += 3
					}
					.w16 {
						writeln('    pop rax')
						writeln('    pop rdi')
						writeln('    mov word [rdi], ax')
						body_size += 3
					}
					.w32 {
						writeln('    pop rax')
						writeln('    pop rdi')
						writeln('    mov dword [rdi], eax')
						body_size += 3
					}
					.w64 {
						writeln('    pop rax')
						writeln('    pop rdi')
						writeln('    mov qword [rdi], rax')
						body_size += 3
					}
					.r8 {
						writeln('    pop rdi')
						writeln('    movsx rdi, byte [rdi]')
						writeln('    push rdi')
						body_size += 3
					}
					.r16 {
						writeln('    pop rdi')
						writeln('    movsx rdi, word [rdi]')
						writeln('    push rdi')
						body_size += 3
					}
					.r32 {
						writeln('    pop rdi')
						writeln('    mov edi, [rdi]')
						writeln('    push rdi')
						body_size += 3
					}
					.r64 {
						writeln('    pop rdi')
						writeln('    push qword [rdi]')
						body_size += 2
					}
					.syscall0 {
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 3
					}
					.syscall1 {
						writeln('    pop rsi')
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 4
					}
					.syscall2 {
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 5
					}
					.syscall3 {
						writeln('    pop rdx')
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 6
					}
					.syscall4 {
						writeln('    pop r10')
						writeln('    pop rdx')
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 7
					}
					.syscall5 {
						writeln('    pop r8')
						writeln('    pop r10')
						writeln('    pop rdx')
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 8
					}
					.syscall6 {
						writeln('    pop r9')
						writeln('    pop r8')
						writeln('    pop r10')
						writeln('    pop rdx')
						writeln('    pop rsi')
						writeln('    pop rdi')
						writeln('    pop rax')
						writeln('    syscall')
						writeln('    push rax')
						body_size += 9
					}
					// else { eprintln(ir_stream[pos]) assert false, "unreachable" }
				}
			}
		}
	}

	return body_size
}
