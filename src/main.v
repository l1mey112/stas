import os

__global initial_tokens = []Token{}

[noreturn]
fn compile_error_i(msg string, token u64) {
	compile_error_(msg, initial_tokens[token].row, initial_tokens[token].col, initial_tokens[token].file_idx)
}

[noreturn]
fn compile_error_t(msg string, token u64) {
	compile_error_(msg, tokens[token].row, tokens[token].col, tokens[token].file_idx)
}

/* [noreturn]
fn compile_error(msg string, token Token) {
	compile_error_(msg, token.row, token.col, token.file_idx)
} */

// <bold><red>filename:row:col: </bold></red>msg
[noreturn]
fn compile_error_(msg string, row int, col int, file_idx int) {
	eprintln('\x1b[1m' + '\x1b[31m'+'${filenames[file_idx]}:${row + 1}:${col + 1}: ' + '\x1b[39m' + '\x1b[22m' + msg)
	exit(1)
}

[noreturn]
fn compile_error_f(msg string, file_idx int) {
	eprintln('\x1b[1m' + '\x1b[31m'+'${filenames[file_idx]}: ' + '\x1b[39m' + '\x1b[22m' + msg)
	exit(1)
}

fn main() {
	data := os.read_file('add.stas') or { panic(err) }
	filenames << 'add.stas'

	if os.args.len == 2 && os.args[1] == 'obj' {
		create_debug_object = true
	}

	scan_file(data, 0)
	preprocess()
	inspect()
	get_asm()

	/* for idx, a in tokens {
		eprintln('${'$a.tok':14}${a.pos:5}${idx:5} ${a.usr1:5}')
	} */
	//eprintln(function_list)
}