enum Inst {
	push_str
	push_num
	push_local_addr
	pop_local_stack_var
	push_local_stack_var
	// push_cstr
	
	// Control flow
		do_cond_jmp
		do_jmp
		label

	fn_prelude
	fn_leave
	fn_call

	trap_breakpoint

	// Arithmetic
		plus
		sub
		mul
		div
		mod
		inc
		dec
		divmod
		shr
		shl
		b_and
		b_or
		b_not
		b_xor
	// Stack manipulation
		swap
		dup
		over
		rot
		rot4
		drop
	// Conditionals
		equ
		nequ
		gt
		lt
		gte
		lte
	// Pointers
		w8
		w16
		w32
		w64
		r8
		r16
		r32
		r64
	// Syscalls
		syscall0
		syscall1
		syscall2
		syscall3
		syscall4
		syscall5
		syscall6
}

struct IR {
	idx u32
mut:
	inst Inst
	data u64
}