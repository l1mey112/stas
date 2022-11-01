fn writeln(str string) {
	println(str)
}

fn write(str string) {
	print(str)
}

/* fn gen() {
	for a in ir_stream {
		eprintln('{a.idx}\t{a.data}\t{a.inst}')
	}
} */

fn gen() {
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
	writeln('    mov [_arg_p], rsp')
	writeln('    mov qword [_rs_p], _rs_top')
	writeln('    mov rbp, rsp')
	writeln('    mov rsp, [_rs_p]')
	writeln('    call ${mangled_name(&functions[main_fn])}')
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
	writeln('_arg_p: rq 1')
	writeln('_rs_p: rq 1')
	writeln('_rs: rb 65536')
	writeln('_rs_top:')
}

fn is_alpha(ch u8) bool {
	return (ch >= `a` && ch <= `z`) || (ch >= `A` && ch <= `Z`)
}

fn is_forbidden_ch(ch u8) bool {
	return ch == `[` || ch == `]` || ch == `<` || ch == `>` || ch == `*`
}


fn mangled_name(f &Function) StringPointer {
	mut buf := unsafe { new_empty_string() }

	unsafe {
		for ch in f.name.str() {
			if is_forbidden_ch(ch) {
				push_char(buf, `$`)
				a := ch.str()
				push_string_view(buf, a.str, a.len)
			} else {
				push_char(buf, ch)
			}
		}
		push_nul(buf)
	}
	
	return buf
}

fn gen_range(start u32, end u32) {
	mut const_stack := []u64{}
	mut const_stack_r := &mut const_stack
	
	flush_const_stack := fn [mut const_stack_r] () {
		for n in *const_stack_r {
			r_push_const(n)
		}
		unsafe {
			(*const_stack_r).len = 0
		}
	}

	for pos := start ; pos < end; pos++ {
		ir_data := ir_stream[pos].data

		if !eval_one_inst(mut const_stack, pos) {
			flush_const_stack()

			match ir_stream[pos].inst {
				._assert {
					lbl := label_allocate()
					r_pop_r(.rax)
					writeln('    test al, al')
					writeln('    jnz .$lbl')
					writeln('    mov eax, 1')
					writeln('    mov edi, 2')
					writeln('    mov rsi, _slit_$ir_data')
					writeln('    mov rdx, ${*(&u64(slits[ir_data]))}')
					writeln('    syscall')
					writeln('    mov rdi, 1')
				//	writeln('    jmp _exit')
					writeln('    mov eax, 60')
					writeln('    syscall')
					writeln('    nop')
					writeln('.$lbl:')
					r_free(.rax)
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
					fn_c := functions[ir_data]

					if !fn_c.is_used || (!fn_c.forbid_inline && fn_c.is_used) {
						pos = fn_c.end_inst
						continue
					}

					if is_object_file {
						writeln('public ${mangled_name(fn_c)}')
					}
					writeln('${mangled_name(fn_c)}:')
					if fn_c.a_sp > 0 {
						writeln('    sub rsp, $fn_c.a_sp')
					}
					writeln('    mov [_rs_p], rsp')
					writeln('    mov rsp, rbp')
				}
				.fn_leave {
					r_flush()

					fn_c := functions[ir_data]
					writeln('    mov rbp, rsp')
					writeln('    mov rsp, [_rs_p]')
					if fn_c.a_sp > 0 {
						writeln('    add rsp, $fn_c.a_sp')
					}
					writeln('    ret')
				}
				.fn_call {
					fn_c := functions[ir_data]
					c := fn_c.end_inst + 1 - fn_c.start_inst
					if c == 2 {
						// a noop function
						continue
					}

					// inlined functions get the privilege of not using
					// the push pop calling convention, just called with
					// args in registers instead
					if !fn_c.forbid_inline {
						gen_range(fn_c.start_inst + 1, fn_c.end_inst)
					} else {
						r_flush()						
						writeln('    mov rbp, rsp')
						writeln('    mov rsp, [_rs_p]')
						writeln('    call ${mangled_name(fn_c)}')
						writeln('    mov [_rs_p], rsp')
						writeln('    mov rsp, rbp')
					}
				}
				.push_local_addr {
					r_push_const_word('qword [_rs_p]')
					if ir_data != 0 {
						a := r_pop()
						writeln('    add $a, $ir_data')
						r_push(a)
					}
				}
				.push_local_stack_var {
					a := unsafe { &u32(&ir_data) }
					addr := unsafe { a[0] }
					count := unsafe { a[1] }

					r := r_new()
					writeln('    mov $r, qword [_rs_p]')

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
					writeln('    mov $r, qword [_rs_p]')

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
					writeln('    mov $r, qword _global_$var.name')

					count := var.size / 8

					for i in 0 .. count {
						r_push_const_word('qword [$r + ${(count - i - 1) * 8}]')
					}
					r_free(r)
				}
				.pop_global_stack_var {
					var := global_var_context[ir_data]

					r := r_new()
					writeln('    mov $r, qword _global_$var.name')

					count := var.size / 8

					for i in 0 .. count {
						r_pop_const_word('qword [$r + ${i * 8}]')
					}
					r_free(r)
				}
				.do_cond_jmp {
					r_pop_r(.rax)
					r_flush()
					writeln('    test rax, rax')
					writeln('    jz .$ir_data')
					r_free(.rax)
				}
				.do_jmp {
					r_flush()
					writeln('    jmp .$ir_data')
				}
				.plus {
					b := r_pop()
					a := r_pop()
					writeln('    add $a, $b')
					r_push(a)
					r_free(b)
				}
				.sub {
					b := r_pop()
					a := r_pop()
					writeln('    sub $a, $b')
					r_push(a)
					r_free(b)
				}
				.mul {
					b := r_pop()
					a := r_pop()
					writeln('    imul $a, $b')
					r_push(a)
					r_free(b)
				}
				.div {
					b := r_pop()
					r_pop_r(.rax)
					r_release(.rdx)
					writeln('    xor rdx, rdx')
					writeln('    div $b')
					r_push(.rax)
					r_free(.rdx)
					r_free(b)
				}
				.mod {
					b := r_pop()
					r_pop_r(.rax)
					r_release(.rdx)
					writeln('    xor rdx, rdx')
					writeln('    div $b')
					r_push(.rdx)
					r_free(.rax)
					r_free(b)
				}
				.inc {
					b := r_top()
					writeln('    inc $b')
				}
				.dec {
					b := r_top()
					writeln('    dec $b')
				}
				.divmod {
					r_new_r(.rdx)
					b := r_pop()
					r_pop_r(.rax)
					writeln('    xor rdx, rdx')
					writeln('    div $b')
					r_free(b)
					r_push(.rax)
					r_push(.rdx)
				}
				.shr {
					r_pop_r(.rcx)
					a := r_pop()
					writeln('    shr $a, cl')
					r_push(a)
					r_free(.rcx)
				}
				.shl {
					r_pop_r(.rcx)
					a := r_pop()
					writeln('    shl $a, cl')
					r_push(a)
					r_free(.rcx)
				}
				.b_and {
					b := r_pop()
					a := r_pop()
					writeln('    and $a, $b')
					r_push(a)
					r_free(b)
				}
				.b_or {
					b := r_pop()
					a := r_pop()
					writeln('    or $a, $b')
					r_push(a)
					r_free(b)
				}
				.b_not {
					a := r_pop()
					writeln('    not $a')
					r_push(a)
				}
				.b_xor {
					b := r_pop()
					a := r_pop()
					writeln('    xor $a, $b')
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
					writeln('    db 0xcc')
					r_push(.rax)
				}
				.not {
					r_pop_r(.rax)
					writeln('    test rax, rax')
					writeln('    sete al')
					r_push(.rax)
				}
				.equ {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    sete al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.nequ {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setne al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.gt {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    seta al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.lt {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setb al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.gte {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setae al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.lte {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setbe al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.s_gt {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setg al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.s_lt {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setl al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.s_gte {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setge al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.s_lte {
					r_new_r(.rax)
					b := r_pop()
					a := r_pop()
					writeln('    xor rax, rax')
					writeln('    cmp $a, $b')
					writeln('    setle al')
					r_push(.rax)
					r_free(a)
					r_free(b)
				}
				.w8 {
					r_pop_r(.rax)
					a := r_pop()
					writeln('    mov byte [$a], al')
					r_free(.rax)
					r_free(a)
				}
				.w16 {
					r_pop_r(.rax)
					a := r_pop()
					writeln('    mov word [$a], ax')
					r_free(.rax)
					r_free(a)
				}
				.w32 {
					r_pop_r(.rax)
					a := r_pop()
					writeln('    mov dword [$a], eax')
					r_free(.rax)
					r_free(a)
				}
				.w64 {
					r_pop_r(.rax)
					a := r_pop()
					writeln('    mov qword [$a], rax')
					r_free(.rax)
					r_free(a)
				}
				.r8 {
					a := r_pop()
					r_new_r(.rax)
					writeln('    xor rax, rax')
					writeln('    mov al, [$a]')
					r_push(.rax)
					r_free(a)
				}
				.r16 {
					a := r_pop()
					r_new_r(.rax)
					writeln('    xor rax, rax')
					writeln('    mov ax, [$a]')
					r_push(.rax)
					r_free(a)
				}
				.r32 {
					r_pop_r(.rax)
					writeln('    mov eax, [rax]')
					r_push(.rax)
				}
				.r64 {
					a := r_pop()
					writeln('    mov $a, [$a]')
					r_push(a)
				}
				.syscall0 {
					r_pop_r(.rax)
					writeln('    syscall')
					r_push(.rax)
				}
				.syscall1 {
					r_pop_r(.rax)
					r_pop_r(.rdi)
					writeln('    syscall')
					r_push(.rax)
					r_free(.rdi)
				}
				.syscall2 {
					r_pop_r(.rax)
					r_pop_r(.rsi)
					r_pop_r(.rdi)
					writeln('    syscall')
					r_push(.rax)
					r_free(.rdi)
					r_free(.rsi)
				}
				.syscall3 {
					r_pop_r(.rax)
					r_pop_r(.rdx)
					r_pop_r(.rsi)
					r_pop_r(.rdi)
					writeln('    syscall')
					r_push(.rax)
					r_free(.rdi)
					r_free(.rsi)
					r_free(.rdx)
				}
				.syscall4 {
					r_pop_r(.rax)
					r_pop_r(.r10)
					r_pop_r(.rdx)
					r_pop_r(.rsi)
					r_pop_r(.rdi)
					writeln('    syscall')
					r_push(.rax)
					r_free(.rdi)
					r_free(.rsi)
					r_free(.rdx)
					r_free(.r10)
				}
				.syscall5 {
					r_pop_r(.rax)
					r_pop_r(.r8)
					r_pop_r(.r10)
					r_pop_r(.rdx)
					r_pop_r(.rsi)
					r_pop_r(.rdi)
					writeln('    syscall')
					r_push(.rax)
					r_free(.rdi)
					r_free(.rsi)
					r_free(.rdx)
					r_free(.r10)
					r_free(.r8)
				}
				.syscall6 {
					r_pop_r(.rax)
					r_pop_r(.r9)
					r_pop_r(.r8)
					r_pop_r(.r10)
					r_pop_r(.rdx)
					r_pop_r(.rsi)
					r_pop_r(.rdi)
					writeln('    syscall')
					r_push(.rax)
					r_free(.rdi)
					r_free(.rsi)
					r_free(.rdx)
					r_free(.r10)
					r_free(.r8)
					r_free(.r9)
				}
				.push_argc {
					a := r_alloc()
					writeln('    mov $a, qword [_arg_p]')
					writeln('    mov $a, [$a]')
					r_push(a)
				}
				.push_argv {
					a := r_alloc()
					writeln('    mov $a, qword [_arg_p]')
					writeln('    add $a, 8')
					r_push(a)
				}
				// else { eprintln(ir_stream[pos]) assert false, "unreachable" }
			}
		}
	}
	flush_const_stack() // for inlined functions
}
