import os

fn main() {
	data := os.read_file('add.stas') or { panic(err) }

	scan_file(data)
	inspect()
	get_asm()

	/* eprintln(function_list)
	for idx, a in tokens {
		eprintln('${'$a.tok':14}${a.pos:5}${idx:5} ${a.usr1:5}')
	} */
}