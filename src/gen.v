fn writeln(str string) {
	println(str)
}

fn write(str string) {
	print(str)
}

fn gen() {
	if !is_object_file && main_fn == -1 {
		assert false, 'no main function'
		// compile_error_f("no main function", 0)
	}

	writeln('use64')
	if is_object_file {
		writeln('format ELF64')
		writeln('section \'.text\' executable')
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
	writeln('    call _addr_${main_fn}')
	writeln('    xor rdi, rdi')
	writeln('_exit:')
	writeln('    mov eax, 60')
	writeln('    syscall')

	mut sp := u32(0)
	mut pos := u32(0)
	
	pos_r := &pos
	mut sp_r := &mut sp
	sp_assert := fn [pos_r, mut sp_r] (argc u32, retc u32) {
		if *sp_r < argc {
			compile_error_i("not enough values to consume", *pos_r)
		}
		unsafe { *sp_r = *sp_r - argc + retc }
	}

	for ; pos < ir_stream.len ; pos++ {
		ir_data := ir_stream[pos].data

		writeln('_addr_${pos}:')
		match ir_stream[pos].inst {
			.fn_prelude {
				assert sp == 0
				fn_c := &Function(ir_data)
				sp = fn_c.argc
				writeln('    mov [_rs_p], rsp')
				writeln('    mov rsp, rbp')
			}
			.fn_leave {
				fn_c := &Function(ir_data)
				if sp > fn_c.retc {
					eprintln("--- $sp $fn_c.argc $fn_c.retc")
					compile_error_i("unhandled data on the stack", fn_c.idx)
				} else if sp < fn_c.retc {
					compile_error_i("not enough values on the stack on function return", fn_c.idx)
				}
				// sp == fn_c.retc
				sp = 0
				writeln('    mov rbp, rsp')
				writeln('    mov rsp, [_rs_p]')
				writeln('    ret')
			}
			.fn_call {
				fn_c := &Function(ir_data)
				if sp < fn_c.argc {
					compile_error_i("not enough values to consume for function call", pos)
				}
				sp -= fn_c.argc
				writeln('    mov rbp, rsp')
				writeln('    mov rsp, [_rs_p]')
				writeln('    call _addr_${fn_c.idx}')
				writeln('    mov [_rs_p], rsp')
				writeln('    mov rsp, rbp')
			}
			.cond_if {
				if sp == 0 {
					compile_error_i("no value on stack to consume for conditional jump", pos)
				}
				sp--
				writeln('    pop rax')
				writeln('    test al, al')
				writeln('    jz _addr_${ir_data}')
			}
			.do_jmp {
				writeln('    jmp _addr_${ir_data}')
			}
			.push_str {
				sp += 2
				len := *&u64(ir_data)
				writeln('    push ${len}')
				writeln('    push _slit_${pos}')
			}
			.push_num {
				sp++
				writeln('    push ${ir_data}')
			}
			.plus {
				sp_assert(2, 1)
				writeln('    pop rdi')
				writeln('    add [rsp], rdi')
			}
			.sub {
				sp_assert(2, 1)
				writeln('    pop rdi')
				writeln('    sub [rsp], rdi')
			}
			.mul {
				sp_assert(2, 1)
				writeln('    pop rdi')
				writeln('    imul [rsp], rdi')
			}
			.div {
				sp_assert(2, 1)
				writeln('    pop rdi')
				writeln('    pop rax')
				writeln('    xor rdx, rdx')
				writeln('    div rdi')
				writeln('    push rax')
			}
			.mod {
				sp_assert(2, 1)
				writeln('    pop rdi')
				writeln('    pop rax')
				writeln('    xor rdx, rdx')
				writeln('    div rdi')
				writeln('    push rdx')
			}
			.inc {
				sp_assert(1, 1)
				writeln('    inc qword [rsp]')
			}
			.dec {
				sp_assert(1, 1)
				writeln('    dec qword [rsp]')
			}
			.divmod {
				sp_assert(2, 2)
				writeln('    pop rdi')
				writeln('    pop rax')
				writeln('    xor rdx, rdx')
				writeln('    div rdi')
				writeln('    push rax')
				writeln('    push rdx')
			}
			.swap {
				sp_assert(2, 2)
				writeln('    pop rdi')
				writeln('    pop rsi')
				writeln('    push rdi')
				writeln('    push rsi')
			}
			.dup {
				sp_assert(1, 2)
				writeln('    mov rdi, [rsp]')
				writeln('    push rdi')
			}
			.over {
				sp_assert(2, 3)
				writeln('    mov rdi, [rsp - 8]')
				writeln('    push rdi')
			}
			.rot {
				sp_assert(3, 3)
				writeln('    pop rdi')
				writeln('    pop rsi')
				writeln('    pop rdx')
				writeln('    push rdi')
				writeln('    push rdx')
				writeln('    push rsi')
			}
			.drop {
				sp_assert(1, 0)
				writeln('    add rsp, 8')
			}
			.trap_breakpoint {
				writeln('    mov rax, [rsp]')
				writeln('    db 0xcc')
			}
			.stack_size_start, .stack_size_end {}
			// else { eprintln(ir_stream[pos]) assert false, "unreachable" }
		}
	}
	assert sp == 0

	if is_object_file {
		writeln('section \'.rodata\'')
	} else {
		writeln('segment readable')
	}
	for s in slits {
		len := *&u64(ir_stream[s].data)
		str := unsafe { &u8(ir_stream[s].data) + sizeof(u64) }
		write('_slit_${s}: db ')
		unsafe {
			for i := 0 ; i < len ; i++ {
				write("${str[i]}, ")
			}
		}
		writeln("0")
	}
	if is_object_file {
		writeln('section \'.bss\'')
	} else {
		writeln('segment readable writable')
	}
	writeln('_rs_p: rq 1')
	writeln('_rs: rb 65536')
	writeln('_rs_top:')
}