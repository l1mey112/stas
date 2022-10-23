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
	writeln('    nop') // gdb will report that the exit syscall happens in a different function

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
		writeln("section '.bss' writable")
	} else {
		writeln('segment readable writable')
	}
	for v in global_var_context {
		writeln('_global_$v.name: rb $v.size')
	}
	writeln('_rs_p: rq 1')
	writeln('_rs: rb 65536')
	writeln('_rs_top:')
}

__global overhead = u32(0)
__global body_size = u32(0)

fn fn_body_writeln(str string) {
	println(str)
	body_size++
}

fn fn_overhead_writeln(str string) {
	println(str)
	overhead++
}

fn gen_range(start u32, end u32) u32 {
	mut const_stack := []u64{}
	mut const_stack_r := &mut const_stack
	mut pos := start

	flush_const_stack := fn [mut const_stack_r] () {
		for n in *const_stack_r {
			r_push_const(n)
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
			/* ins == .plus && const_stack.len >= 2 {
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
				const_stack << a / b
				const_stack << a % b
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
			ins == .b_and && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a & b
			}
			ins == .b_or && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a | b
			}
			ins == .b_not && const_stack.len >= 1 {
				b := const_stack.pop()
				const_stack << ~b
			}
			ins == .b_xor && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a ^ b
			}
			ins == .swap && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << b
				const_stack << a
			}
			ins == .dup && const_stack.len >= 1 {
				b := const_stack.pop()
				const_stack << b
				const_stack << b
			} */
			/* ins == .over && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a b
			} */
			/* ins == .rot && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a b
			}
			ins == .rot4 && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << a b
			} */
			/* ins == .drop && const_stack.len >= 1 {
				const_stack.pop()
			}
			ins == .equ && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << u64(a == b)
			}
			ins == .nequ && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << u64(a != b)
			}
			ins == .gt && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << u64(a > b)
			}
			ins == .lt && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << u64(a < b)
			}
			ins == .gte && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << u64(a >= b)
			}
			ins == .lte && const_stack.len >= 2 {
				b := const_stack.pop()
				a := const_stack.pop()
				const_stack << u64(a <= b)
			} */
			/* ins == .do_cond_jmp && const_stack.len >= 1 {
				c := const_stack.pop()

				if c == 0 {
					mut d := false
					for mpos := pos; mpos < end; mpos++ {
						if ir_stream[mpos].inst == .label && ir_stream[mpos].data == ir_data {
							pos = mpos - 1
							d = true
							break
						}
					}
					assert d, 'unreachable'
				}
			}
			ins == ._assert && const_stack.len >= 1 {
				c := const_stack.pop()

				if c == 0 {
					eprint("(comptime) ")
					eprint(slits[ir_data])
					exit(1)
				}
			} */
			else {
				flush_const_stack()

				match ir_stream[pos].inst {
					._assert {
						lbl := label_allocate()
						r_pop_r(.rax)
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
						r_free(.rax)
						body_size += 10
					}
					.push_num {
						assert false, 'unreachable'
					}
					.push_str {
						len := *&u64(slits[ir_data])
						r_push_const_word('_slit_$ir_data')
						r_push_const(len)
					}
					.label {
						r_flush()
						writeln('.$ir_data:')
					}
					.fn_prelude {
						assert rallocator_stack.len == 0
						fn_c := &Function(ir_data)

						// assert isnil(function_context)
						// function_context = fn_c
						assert overhead == 0 && body_size == 0

						if is_object_file {
							writeln('public $fn_c.name.str()')
						}
						writeln('$fn_c.name.str():')
						if fn_c.a_sp > 0 {
							fn_overhead_writeln('    sub rsp, $fn_c.a_sp')
						}
						fn_overhead_writeln('    mov [_rs_p], rsp')
						fn_overhead_writeln('    mov rsp, rbp')
					}
					.fn_leave {
						r_flush()

						mut fn_c := &Function(ir_data)
						fn_overhead_writeln('    mov rbp, rsp')
						fn_overhead_writeln('    mov rsp, [_rs_p]')
						if fn_c.a_sp > 0 {
							fn_overhead_writeln('    add rsp, $fn_c.a_sp')
						}
						fn_overhead_writeln('    ret')

						// plus the overhead for actually calling the function
						overhead += 5

						if !fn_c.forbid_inline && overhead < body_size {
							fn_c.forbid_inline = true
						}

						eprintln("function ${fn_c.name.str()}, overhead $overhead, body size $body_size, inlinable: ${!fn_c.forbid_inline}")

						overhead, body_size = 0, 0
					}
					.fn_call {
						r_flush()

						fn_c := &Function(ir_data)
						/* if !fn_c.forbid_inline {
							eprintln("inlining function ${fn_c.name.str()}")
							body_start := fn_c.start_inst + 1
							mut body_end := body_start
							for ; ir_stream[body_end].inst != .fn_leave; body_end++ {
								assert body_end < end
							}
							mut body_size_old := body_size
							mut overhead_old := overhead
							body_size = 0
							overhead = 0
							body_size_old += gen_range(body_start, body_end)
							body_size = body_size_old
							overhead = overhead_old
						} else { */
							fn_body_writeln('    mov rbp, rsp')
							fn_body_writeln('    mov rsp, [_rs_p]')
							fn_body_writeln('    call $fn_c.name.str()')
							fn_body_writeln('    mov [_rs_p], rsp')
							fn_body_writeln('    mov rsp, rbp')
						/* } */
					}
					.push_local_addr {
						r_push_const_word('qword [_rs_p]')
						if ir_data != 0 {
							a := r_pop()
							fn_body_writeln('    add $a, $ir_data')
							r_push(a)
						}
					}
					.push_local_stack_var {
						a := unsafe { &u32(&ir_data) }
						addr := unsafe { a[0] }
						count := unsafe { a[1] }

						r := r_new()
						fn_body_writeln('    mov $r, qword [_rs_p]')

						for i in 0 .. count {
							r_push_const_word('qword [$r + ${addr + (count - i - 1) * 8}]')
						}
						r_free(r)
					}
					.pop_local_stack_var {
						a := unsafe { &u32(&ir_data) }
						addr := unsafe { a[0] }
						count := unsafe { a[1] }
						
						r := r_new()
						fn_body_writeln('    mov $r, qword [_rs_p]')

						for i in 0 .. count {
							r_pop_const_word('qword [$r + ${addr + i * 8}]')
						}
						r_free(r)
					}
					.push_global_var_name {
						var := global_var_context[ir_data]
						r_push_const_word('qword _global_$var.name')
					}
					.push_global_stack_var {
						var := global_var_context[ir_data]

						r := r_new()
						fn_body_writeln('    mov $r, qword _global_$var.name')

						count := var.size / 8

						for i in 0 .. count {
							r_push_const_word('qword [$r + ${(count - i - 1) * 8}]')
						}
						r_free(r)
					}
					.pop_global_stack_var {
						var := global_var_context[ir_data]

						r := r_new()
						fn_body_writeln('    mov $r, qword _global_$var.name')

						count := var.size / 8

						for i in 0 .. count {
							r_pop_const_word('qword [$r + ${i * 8}]')
						}
						r_free(r)
					}
					.do_cond_jmp {
						r_pop_r(.rax)
						r_flush()
						fn_body_writeln('    test al, al')
						fn_body_writeln('    jz .$ir_data')
						r_free(.rax)
					}
					.do_jmp {
						r_flush()
						fn_body_writeln('    jmp .$ir_data')
					}
					.plus {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    add $a, $b')
						r_push(a)
						r_free(b)
					}
					.sub {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    sub $a, $b')
						r_push(a)
						r_free(b)
					}
					.mul {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    imul $a, $b')
						r_push(a)
						r_free(b)
					}
					.div {
						b := r_pop()
						r_pop_r(.rax)
						r_release(.rdx)
						fn_body_writeln('    xor rdx, rdx')
						fn_body_writeln('    div $b')
						r_push(.rax)
						r_free(.rdx)
						r_free(b)
					}
					.mod {
						b := r_pop()
						r_pop_r(.rax)
						r_release(.rdx)
						fn_body_writeln('    xor rdx, rdx')
						fn_body_writeln('    div $b')
						r_push(.rdx)
						r_free(.rax)
						r_free(b)
					}
					.inc {
						b := r_top()
						fn_body_writeln('    inc $b')
					}
					.dec {
						b := r_top()
						fn_body_writeln('    dec $b')
					}
					.divmod {
						r_new_r(.rdx)
						b := r_pop()
						r_pop_r(.rax)
						fn_body_writeln('    xor rdx, rdx')
						fn_body_writeln('    div $b')
						r_free(b)
						r_push(.rax)
						r_push(.rdx)
					}
					.shr {
						r_pop_r(.rcx)
						a := r_pop()
						fn_body_writeln('    shr $a, cl')
						r_push(a)
						r_free(.rcx)
					}
					.shl {
						r_pop_r(.rcx)
						a := r_pop()
						fn_body_writeln('    shl $a, cl')
						r_push(a)
						r_free(.rcx)
					}
					.b_and {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    and $a, $b')
						r_push(a)
						r_free(b)
					}
					.b_or {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    or $a, $b')
						r_push(a)
						r_free(b)
					}
					.b_not {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    not $a, $b')
						r_push(a)
						r_free(b)
					}
					.b_xor {
						b := r_pop()
						a := r_pop()
						fn_body_writeln('    xor $a, $b')
						r_push(a)
						r_free(b)
					}
					.swap {
						b := r_pop()
						a := r_pop()
						r_push(b)
						r_push(a)
					}
					.dup {
						a := r_top()
						r_dup(a)
					}
					.over {
						if rallocator_stack.len < 2 {
							r_push_const_word('qword [rsp + ${(1 - rallocator_stack.len) * 8}]')
						} else {
							a := rallocator_stack[rallocator_stack.len - 2]
							r_dup(a)
						}
					}
					.over2 {
						if rallocator_stack.len < 3 {
							r_push_const_word('qword [rsp + ${(2 - rallocator_stack.len) * 8}]')
						} else {
							a := rallocator_stack[rallocator_stack.len - 3]
							r_dup(a)
						}
					}
					.rot {
						c := r_pop()
						b := r_pop()
						a := r_pop()
						r_push(c)
						r_push(a)
						r_push(b)
					}
					.rot4 {
						d := r_pop()
						c := r_pop()
						b := r_pop()
						a := r_pop()
						r_push(d)
						r_push(a)
						r_push(b)
						r_push(c)
					}
					.drop {
						r_drop()
					}
					.trap_breakpoint {
						r_pop_r(.rax)
						fn_body_writeln('    db 0xcc')
						r_push(.rax)
					}
					.equ {
						b := r_pop()
						a := r_pop()
						r_release(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    cmp $a, $b')
						fn_body_writeln('    sete al')
						r_push(.rax)
						r_free(a)
						r_free(b)
					}
					.nequ {
						b := r_pop()
						a := r_pop()
						r_release(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    cmp $a, $b')
						fn_body_writeln('    setne al')
						r_push(.rax)
						r_free(a)
						r_free(b)
					}
					.gt {
						b := r_pop()
						a := r_pop()
						r_release(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    cmp $a, $b')
						fn_body_writeln('    seta al')
						r_push(.rax)
						r_free(a)
						r_free(b)
					}
					.lt {
						b := r_pop()
						a := r_pop()
						r_release(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    cmp $a, $b')
						fn_body_writeln('    setb al')
						r_push(.rax)
						r_free(a)
						r_free(b)
					}
					.gte {
						b := r_pop()
						a := r_pop()
						r_release(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    cmp $a, $b')
						fn_body_writeln('    setae al')
						r_push(.rax)
						r_free(a)
						r_free(b)
					}
					.lte {
						b := r_pop()
						a := r_pop()
						r_release(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    cmp $a, $b')
						fn_body_writeln('    setbe al')
						r_push(.rax)
						r_free(a)
						r_free(b)
					}
					.w8 {
						r_pop_r(.rax)
						a := r_pop()
						fn_body_writeln('    mov byte [$a], al')
						r_free(.rax)
						r_free(a)
					}
					.w16 {
						r_pop_r(.rax)
						a := r_pop()
						fn_body_writeln('    mov word [$a], ax')
						r_free(.rax)
						r_free(a)
					}
					.w32 {
						r_pop_r(.rax)
						a := r_pop()
						fn_body_writeln('    mov dword [$a], eax')
						r_free(.rax)
						r_free(a)
					}
					.w64 {
						r_pop_r(.rax)
						a := r_pop()
						fn_body_writeln('    mov dword [$a], eax')
						r_free(.rax)
						r_free(a)
					}
					.r8 {
						a := r_pop()
						r_new_r(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    mov al, [$a]')
						r_push(.rax)
						r_free(a)
					}
					.r16 {
						a := r_pop()
						r_new_r(.rax)
						fn_body_writeln('    xor rax, rax')
						fn_body_writeln('    mov ax, [$a]')
						r_push(.rax)
						r_free(a)
					}
					.r32 {
						r_pop_r(.rax)
						fn_body_writeln('    mov eax, [rax]')
						r_push(.rax)
					}
					.r64 {
						a := r_pop()
						fn_body_writeln('    mov $a, [$a]')
						r_push(a)
					}
					.syscall0 {
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
					}
					.syscall1 {
						r_pop_r(.rsi)
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
						r_free(.rsi)
					}
					.syscall2 {
						r_pop_r(.rsi)
						r_pop_r(.rdi)
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
						r_free(.rdi)
						r_free(.rsi)
					}
					.syscall3 {
						r_pop_r(.rdx)
						r_pop_r(.rsi)
						r_pop_r(.rdi)
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
						r_free(.rdi)
						r_free(.rsi)
						r_free(.rdx)
					}
					.syscall4 {
						r_pop_r(.r10)
						r_pop_r(.rdx)
						r_pop_r(.rsi)
						r_pop_r(.rdi)
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
						r_free(.rdi)
						r_free(.rsi)
						r_free(.rdx)
						r_free(.r10)
					}
					.syscall5 {
						r_pop_r(.r8)
						r_pop_r(.r10)
						r_pop_r(.rdx)
						r_pop_r(.rsi)
						r_pop_r(.rdi)
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
						r_free(.rdi)
						r_free(.rsi)
						r_free(.rdx)
						r_free(.r10)
						r_free(.r8)
					}
					.syscall6 {
						r_pop_r(.r9)
						r_pop_r(.r8)
						r_pop_r(.r10)
						r_pop_r(.rdx)
						r_pop_r(.rsi)
						r_pop_r(.rdi)
						r_pop_r(.rax)
						fn_body_writeln('    syscall')
						r_push(.rax)
						r_free(.rdi)
						r_free(.rsi)
						r_free(.rdx)
						r_free(.r10)
						r_free(.r8)
						r_free(.r9)
					}
					//else { eprintln(ir_stream[pos]) assert false, "unreachable" }
				}
			}
		}
	}

	return body_size
}
