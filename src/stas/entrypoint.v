module stas

import term

/*

import stas
stas.run_nasm()

stack datatype

local stack buf [100]
2
pop buf
buf {
	5 2 1
}
push buf
push buf
push buf
push buf

_push:
#bounds_checking ; runtime bounds c

*/

__global file_container = FileCache{} 

pub fn parse_entirety (filename string) map[string]&Function {
	data, _ := file_container.open_file(filename, '')
	mut tokens, prefs := scan_file(data, filename)
	mut parser := Parser {
		tokens: tokens
		curr: tokens[0]
		cap: tokens.len
		ctx: unsafe { nil }
		prefs: prefs
	}
	for {
		parser.parse_new_func() or {
			parser.eof_cleanup()
			if !parser.has_main {
				comp_error_file("No main function",filename)
			}
			if parser.fns["main"].ret != .void_t {
				comp_error_file("Main function must return void",filename)
			}
			break
		}
	}
	return parser.fns
}

pub fn check_entirety (fns map[string]&Function) &Checker {
	mut checker := &Checker {
		fns: fns
		curr:  unsafe { &DEBUG_DUMP(0) }
	}
	checker.check_all()
	return checker
}

pub fn compile_nasm (filename string, is_tutor bool)string{
	
	fns := parse_entirety(filename)
	mut checker := check_entirety(fns)

	if is_tutor {
		checker.is_tutor = true
		term.clear()
		checker.check_all()
		exit(0)
	}

	mut gen := Gen {
		fns: mut fns
	}
	out := gen.gen_all()
	return out
}