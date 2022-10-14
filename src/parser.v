__global ir_stream = []IR{}

fn parse() {
	mut pos := u32(0)

	pos_r := &mut pos
	ir := fn [pos_r] (inst Inst, data u64) {
		ir_stream << IR{inst: inst, data: data, tok: *pos_r}
	}

	for ; pos < token_stream.len ; pos++ {
		match token_stream[pos].tok {
			.string_lit {
				ir(.push_str, token_stream[pos].data)
			}
			.number_lit {
				ir(.push_num, token_stream[pos].data)
			}
			else { panic('unreachable') }
		}
	}

	eprintln(ir_stream)
}