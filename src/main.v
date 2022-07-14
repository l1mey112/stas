import os

fn compile_file_to_asm(filename string)string{
	data := os.read_file(filename) or {
		eprintln("Cannot read file '$filename'!")
		exit(1)
	}
	mut scanner := Scanner {
		text: data
		cap: data.len
		filename: filename
	}
	mut tokens := []Token{cap: 10}
	for {
		i := scanner.scan_token()
		if i.token == .eof {
			break
		} else { tokens << i }
	}
	mut parser := Parser {
		s: mut scanner
		tokens: tokens
		curr: tokens[0]
		cap: tokens.len
	}
	mut statements := []IR_Statement{cap: 10}
	for {
		i := parser.parse_token()
		if i is IR_EOF {
			break
		} else { statements << i }
	}
	mut gen := Gen {
		var_globals: parser.var_globals
		var_decls: parser.var_decls
		statements: statements
		string_lits: parser.string_lits
		s: mut scanner
	}
	gen.gen_all()
	return gen.file.str()
}

fn main(){
	filename := "./file"

	source := compile_file_to_asm(filename)
	os.write_file('$filename-compile.asm',source) or {
		panic("Failed to write $filename-compile.asm")
	}
	if '-r' in os.args {
		os.execute_or_panic('nasm -g -felf64 -o $filename-compile.o $filename-compile.asm')
		os.execute_or_panic('ld $filename-compile.o -o $filename-compile')
		os.execvp('./$filename-compile',[]) or {
			panic("Failed to start program $filename-compile")
		}
	} else {
		os.execvp('bat', ['-l','nasm','$filename-compile.asm']) or {
			panic("Failed to start BAT")
		}
	}
}