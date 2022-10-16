enum Inst {
	push_str
	push_num
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