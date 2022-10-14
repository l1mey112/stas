import os

__global create_debug_object = false
__global filenames = []string{}

fn main() {
	if os.args.len == 1 {
		eprintln("no args")
		exit(1)
	}

	if os.args.len > 1 {
		if os.args.len == 2 && os.args[1] == '-elf' {
			eprintln("supply file")
			exit(1)
		}

		for filename in os.args[1..] {
			if filename == '-elf' {
				create_debug_object = true
			} else {
				idx := filenames.len
				filenames << filename

				data := os.read_file(filename) or {
					compile_error_f("file not found", idx)
				}

				scan_file(data)
			}
		}
	}

	eprintln('')
}