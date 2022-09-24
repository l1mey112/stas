import os

__global initial_tokens = []Token{}

const alwaysinc = 'include "lib/arith.stas" include "lib/builtin.stas"'

// modules can only be imported and they can export functions
// modules can define macros, but they will be local to the file only
// importing a file is exactly like adding them to the command line arguments
// files can be imported, it is best practice for those files to contain macros only
// like the std arith and builtin files

__global imported_files = []string{}

fn stas_file(filename string){
	idx := filenames.len
	filenames << filename

	data := os.read_file(filename) or {
		compile_error_f("file not found", idx)
	}

	scan_file(alwaysinc, idx)
	scan_file(data, idx)
	preprocess()

	unsafe { initial_tokens.len = 0 }
	unsafe { macros.len = 0 }
}

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
				stas_file(filename)
			}
		}
	}
	for a in imported_files {
		stas_file(a)
	}

	parse()
	get_asm()

	/* for idx, a in tokens {
		eprintln('${'$a.tok':14}${a.row:5}${idx:5} ${a.usr1:5}')
	}
	for n in name_strings {
		eprintln("'$n'")
	}
	eprintln(function_list) */
}