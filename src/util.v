[noreturn]
fn compile_error_t(msg string, token u32) {
	compile_error_(msg, token_stream[token].row, token_stream[token].col, token_stream[token].file)
	exit(1)
}

[noreturn]
fn compile_error_i(msg string, inst u32) {
	tok := token_stream[ir_stream[inst].idx]
	compile_error_(msg, tok.row, tok.col, tok.file)
	exit(1)
}

[noreturn]
fn compile_error_e(msg string, row u32, col u32, file_idx StringPointer) {
	compile_error_(msg, row, col, file_idx)
	exit(1)
}

// <bold><red>filename:row:col: </bold></red>msg
fn compile_error_(msg string, row u32, col u32, file_idx StringPointer) {
	eprintln(compile_error_to_s(msg, row, col, file_idx))
}

// <bold><red>filename:row:col: </bold></red>msg
fn compile_error_to_s(msg string, row u32, col u32, file_idx StringPointer) string {
	return '\x1b[1m' + '\x1b[31m'+'${file_idx}:${row + 1}:${col + 1}: ' + '\x1b[39m' + '\x1b[22m' + msg
}

[noreturn]
fn compile_error_f(msg string, file_idx StringPointer) {
	eprintln('\x1b[1m' + '\x1b[31m'+'${file_idx}: ' + '\x1b[39m' + '\x1b[22m' + msg)
	exit(1)
}