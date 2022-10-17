fn writeln(str string) {
	println(str)
}

fn write(str string) {
	print(str)
}

fn gen() {
	/* if !is_object_file && main_fn == -1 {
		assert false, 'no main function'
		// compile_error_f("no main function", 0)
	} */

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
	writeln('    call main')
	writeln('    xor rdi, rdi')
	writeln('_exit:')
	writeln('    mov eax, 60')
	writeln('    syscall')

	mut pos := u32(0)

	for ; pos < ir_stream.len ; pos++ {
		ir_data := ir_stream[pos].data

		match ir_stream[pos].inst {
			.label {
				writeln('.${ir_data}:')
			}
			.fn_prelude {
				fn_c := &Function(ir_data)
				if is_object_file {
					writeln('public ${fn_c.name.str()}')
				}
				writeln('${fn_c.name.str()}:')
				if fn_c.a_sp > 0 {
					writeln('    sub rsp, ${fn_c.a_sp}')
				}
				writeln('    mov [_rs_p], rsp')
				writeln('    mov rsp, rbp')
			}
			.fn_leave {
				fn_c := &Function(ir_data)
				writeln('    mov rbp, rsp')
				writeln('    mov rsp, [_rs_p]')
				if fn_c.a_sp > 0 {
					writeln('    add rsp, ${fn_c.a_sp}')
				}
				writeln('    ret')
			}
			.fn_call {
				fn_c := &Function(ir_data)
				writeln('    mov rbp, rsp')
				writeln('    mov rsp, [_rs_p]')
				writeln('    call ${fn_c.name.str()}')
				writeln('    mov [_rs_p], rsp')
				writeln('    mov rsp, rbp')
			}
			.push_local_addr {
				if ir_data == 0 {
					writeln('    push qword [_rs_p]')
				} else {
					writeln('    mov rdi, [_rs_p]')
					writeln('    add rdi, ${ir_data}')
					writeln('    push rdi')	
				}
			}
			.do_cond_jmp {
				writeln('    pop rax')
				writeln('    test al, al')
				writeln('    jz .${ir_data}')
			}
			.do_jmp {
				writeln('    jmp .${ir_data}')
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
			.trap_breakpoint {
				writeln('    mov rax, [rsp]')
				writeln('    db 0xcc')
			}
			.equ {
				writeln('    pop rsi')
				writeln('    pop rdi')
				writeln('    xor rax, rax')
				writeln('    cmp rdi, rsi')
				writeln('    sete al')
				writeln('    push rax')
			}
			.nequ {
				writeln('    pop rsi')
				writeln('    pop rdi')
				writeln('    xor rax, rax')
				writeln('    cmp rdi, rsi')
				writeln('    setne al')
				writeln('    push rax')
			}
			.gt {
				writeln('    pop rsi')
				writeln('    pop rdi')
				writeln('    xor rax, rax')
				writeln('    cmp rdi, rsi')
				writeln('    seta al')
				writeln('    push rax')
			}
			.lt {
				writeln('    pop rsi')
				writeln('    pop rdi')
				writeln('    xor rax, rax')
				writeln('    cmp rdi, rsi')
				writeln('    setb al')
				writeln('    push rax')
			}
			.gte {
				writeln('    pop rsi')
				writeln('    pop rdi')
				writeln('    xor rax, rax')
				writeln('    cmp rdi, rsi')
				writeln('    setae al')
				writeln('    push rax')
			}
			.lte {
				writeln('    pop rsi')
				writeln('    pop rdi')
				writeln('    xor rax, rax')
				writeln('    cmp rdi, rsi')
				writeln('    setbe al')
				writeln('    push rax')
			}
			.w8 {
				writeln('    pop rax')
				writeln('    pop rdi')
				writeln('    mov byte [rdi], al')
			}
			.w16 {
				writeln('    pop rax')
				writeln('    pop rdi')
				writeln('    mov word [rdi], ax')
			}
			.w32 {
				writeln('    pop rax')
				writeln('    pop rdi')
				writeln('    mov dword [rdi], eax')
			}
			.w64 {
				writeln('    pop rax')
				writeln('    pop rdi')
				writeln('    mov qword [rdi], rax')
			}
			.r8 {
				writeln('    pop rdi')
				writeln('    movsx rdi, byte [rdi]')
				writeln('    push rdi')
			}
			.r16 {
				writeln('    pop rdi')
				writeln('    movsx rdi, word [rdi]')
				writeln('    push rdi')
			}
			.r32 {
				writeln('    pop rdi')
				writeln('    mov edi, [rdi]')
				writeln('    push rdi')
			}
			.r64 {
				writeln('    pop rdi')
				writeln('    push qword [rdi]')
			}
			// else { eprintln(ir_stream[pos]) assert false, "unreachable" }
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