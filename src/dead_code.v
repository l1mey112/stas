__global main_fn = u32(-1)

const inline_cutoff = 8

fn markused() {
	for idx, f in functions {
		if f.name.str() == 'main' {
			main_fn = u32(idx)
		}
	}

	if main_fn == -1 {
		assert false, 'no main function'
	}

	recurse_function(main_fn)
}

// TODO:
//     'reference counting' on global variables and slits
//     so they can be removed entirely as they are dead code.

fn recurse_function(fn_idx u32) {
	mut fn_c := &Function(&functions[fn_idx])

	c := fn_c.end_inst + 1 - fn_c.start_inst
	// empty function, count = 2
	// fn_prelude + fn_leave
	// inline_cutoff must account for this

	fn_c.is_used = true

	if c >= inline_cutoff && !fn_c.forbid_inline {
		fn_c.forbid_inline = true
	}

	// eprintln('$fn_c.name')
	// eprintln('    size = $c')
	// eprintln('    is_inlinable = ${!fn_c.forbid_inline}')

	mut pos := u32(0)
	for pos = fn_c.start_inst ; pos < fn_c.end_inst ; pos++ {
		if ir_stream[pos].inst == .fn_call {
			if !functions[ir_stream[pos].data].is_used {
				recurse_function(u32(ir_stream[pos].data))
			}
		}
	}
	assert ir_stream[pos].inst == .fn_leave
}