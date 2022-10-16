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
	// Conditionals
		equ
		nequ
		gt
		lt
		gte
		lte
}

struct IR {
	idx u32
mut:
	inst Inst
	data u64
}