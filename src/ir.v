enum Inst {
	push_str
	push_num
	// push_cstr
	
	do_cond_jmp // do_block
	do_jmp      // jmp

	fn_prelude
	fn_ret_cleanup
	stack_size_start
	stack_size_end

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