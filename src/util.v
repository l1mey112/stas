import term
import strings

struct FilePos {
	row int
	col int
	len int
	filename string
	text string
}

[noreturn]
fn comp_error(err string, fp FilePos) {
	mut str := strings.new_builder(40)
	rrow := fp.row+1
	rcol := fp.col+1
	str.writeln("$fp.filename:$rrow:$rcol: ${term.red(err)}")
	error_line := fp.text.split_into_lines()[fp.row]
	prefix := "$rrow | "
	str.writeln(prefix+error_line)
	str.ensure_cap(fp.col+prefix.len+fp.len)
	for _ in 0 .. fp.col+prefix.len {str.write_u8(` `)}
	for _ in 0 .. fp.len {str.write_u8(`~`)}
	eprintln(str.str())
	exit(1)
}

/* fn (t Token) str() string {
	return "${term.magenta("TOK:$t.row:$t.col")}	${t.token:20} ${term.red(t.lit)}"
} */