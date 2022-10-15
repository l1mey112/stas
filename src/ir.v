enum Inst {
	push_str
	push_num
	// push_cstr
	
	// If and else statements
		cond_if
		do_jmp

	fn_prelude
	fn_leave
	fn_call
	stack_size_start
	stack_size_end

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
	// Stack manipulation
		swap
		dup
		over
		rot
		drop
}

struct IR {
	idx u32
mut:
	inst Inst
	data u64
}