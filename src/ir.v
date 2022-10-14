enum Inst {
	push_str
	push_num
	// push_cstr
	
	do_cond_jmp // do_block

	assert_stack_size // Scope + Arrw

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
	inst Inst
	data u64
	tok u32
}