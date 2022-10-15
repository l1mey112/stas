fn writeln(str string) {
	eprintln(str)
}

fn write(str string) {
	eprint(str)
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
	writeln('    mov eax, 60') // moving immediate to a 32 bit reg zeros the 
	writeln('    syscall')     // higher 32 bit part in the whole 64 bit reg

	mut pos := u32(0)
	for ; pos < ir_stream.len ; pos++ {
		ir_data := ir_stream[pos].data

		writeln('_addr_${pos}:')
		match ir_stream[pos].inst {
			.fn_prelude {
				writeln('    mov [_rs_p], rsp')
				writeln('    mov rsp, rbp')
			}
			.fn_leave {
				writeln('    mov rbp, rsp')
				writeln('    mov rsp, [_rs_p]')
				writeln('    ret')
			}
			.fn_call {
				writeln('    mov rbp, rsp')
				writeln('    mov rsp, [_rs_p]')
				writeln('    call _addr_${ir_data}')
				writeln('    mov [_rs_p], rsp')
				writeln('    mov rsp, rbp')
			}
			.do_cond_jmp {
				writeln('    pop rax')
				writeln('    test al, al')
				writeln('    jz _addr_${ir_data}')
			}
			.do_jmp {
				writeln('    jmp _addr_${ir_data}')
			}
			.push_str {
				len := *&u64(ir_data)
				writeln('    push ${len}')
				writeln('    push _slit_${pos}')
			}
			.push_num {
				writeln('    push ${ir_data}')
			}
			.plus {
				writeln('    pop rdi')
				writeln('    add [rsp], rdi')
			}
			.sub {
				writeln('    pop rdi')
				writeln('    sub [rsp], rdi')
			}
			.mul {
				writeln('    pop rdi')
				writeln('    imul [rsp], rdi')
			}
			.div {
				writeln('    pop rdi')
				writeln('    pop rax')
				writeln('    xor rdx, rdx')
				writeln('    div rdi')
				writeln('    push rax')
			}
			.mod {
				writeln('    pop rdi')
				writeln('    pop rax')
				writeln('    xor rdx, rdx')
				writeln('    div rdi')
				writeln('    push rdx')
			}
			.inc {
				writeln('    inc qword [rsp]')
			}
			.dec {
				writeln('    dec qword [rsp]')
			}
			.divmod {
				writeln('    pop rdi')
				writeln('    pop rax')
				writeln('    xor rdx, rdx')
				writeln('    div rdi')
				writeln('    push rax')
				writeln('    push rdx')
			}
			.swap {
				writeln('    pop rdi')
				writeln('    pop rsi')
				writeln('    push rdi')
				writeln('    push rsi')
			}
			.dup {
				writeln('    mov rdi, [rsp]')
				writeln('    push rdi')
			}
			.over {
				writeln('    mov rdi, [rsp - 8]')
				writeln('    push rdi')
			}
			.rot {
				writeln('    pop rdi')
				writeln('    pop rsi')
				writeln('    pop rdx')
				writeln('    push rdi')
				writeln('    push rdx')
				writeln('    push rsi')
			}
			.drop {
				writeln('    add rsp, 8')
			}
			else { eprintln(ir_stream[pos]) assert false, "unreachable" }
		}
	}

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