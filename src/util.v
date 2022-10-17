[noreturn]
fn compile_error_t(msg string, token u32) {
	print_backtrace()
	compile_error_(msg, token_stream[token].row, token_stream[token].col, token_stream[token].file)
	exit(1)
}

[noreturn]
fn compile_error_e(msg string, row u32, col u32, file_idx StringPointer) {
	print_backtrace()
	compile_error_(msg, row, col, file_idx)
	exit(1)
}

fn compile_error_(msg string, row u32, col u32, file_idx StringPointer) {
	eprintln(compile_error_to_s(msg, row, col, file_idx))
}

fn compile_info_(msg string, row u32, col u32, file_idx StringPointer) {
	eprintln(compile_info_to_s(msg, row, col, file_idx))
}

// <bold><red>filename:row:col: </bold></red>msg
fn compile_error_to_s(msg string, row u32, col u32, file_idx StringPointer) string {
	return '\x1b[1m' + '\x1b[31m'+'${file_idx}:${row + 1}:${col + 1}: ' + '\x1b[39m' + '\x1b[22m' + msg
}

// <bold><yellow>filename:row:col: </bold></yellow>msg
fn compile_info_to_s(msg string, row u32, col u32, file_idx StringPointer) string {
	return '\x1b[1m' + '\x1b[33m'+'${file_idx}:${row + 1}:${col + 1}: ' + '\x1b[39m' + '\x1b[22m' + msg
}

[noreturn]
fn compile_error_f(msg string, file_idx StringPointer) {
	print_backtrace()
	eprintln('\x1b[1m' + '\x1b[31m'+'${file_idx}: ' + '\x1b[39m' + '\x1b[22m' + msg)
	exit(1)
}