[noreturn]
fn compile_error_i(msg string, token u64) {
	compile_error_(msg, initial_tokens[token].row, initial_tokens[token].col, initial_tokens[token].file_idx)
}

[noreturn]
fn compile_error_t(msg string, token u64) {
	compile_error_(msg, tokens[token].row, tokens[token].col, tokens[token].file_idx)
}

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