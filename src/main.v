import os

__global is_object_file = false
__global token_stream = []Token{}
__global ir_stream = []IR{}
__global slits = []StringPointer{}

fn main() {
	if os.args.len == 1 {
		eprintln('no args')
		exit(1)
	}

	if os.args.len > 1 {
		if os.args.len == 2 && os.args[1] == '-elf' {
			eprintln('supply file')
			exit(1)
		}

		for filename in os.args[1..] {
			if filename == '-elf' {
				is_object_file = true
			} else {
				file_str := new_string_view(filename.str, filename.len)

				data := os.read_file(filename) or { compile_error_f('file not found', file_str) }

				scan_file(data, file_str)
			}
		}
	}

	/*
	for idx, i in token_stream {
		eprintln("($idx) $i")
	}*/
	parse()
	/*
	eprintln(functions)
	for idx, i in ir_stream {
		eprintln("($idx) [$i.idx] $i.inst $i.data")
	}*/
	gen()
}
