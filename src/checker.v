fn check() {
	/* mut pos := u32(0)

	mut function_context := &Function(0)
	mut stack := u32(0)

	for ; pos < ir_stream.len ; pos++ {
		match ir_stream[pos].inst {
			.push_str {
				stack += 2
			}
			.push_num {
				stack++
			}
			.do_cond_jmp {
				stack--
			}
			.do_jmp {}
			.fn_prelude {
				if !isnil(function_context) {
					compile_error_i("ssssssss", pos)
				}
				assert stack == 0, "unreachable"
				function_context = &functions[ir_stream[pos].data]

				stack += function_context.argc
			}
			else {}
		}
	} */
}