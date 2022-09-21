import os

__global initial_tokens = []Token{}

fn main() {
	data := os.read_file('add.stas') or { panic(err) }
//	std := os.read_file('std.stas') or { panic(err) }

	if os.args.len == 2 && os.args[1] == 'obj' {
		create_debug_object = true
	}

//	scan_file(std)
	scan_file(data)
	preprocess()
	inspect()
	get_asm()

	//eprintln(function_list)
	for idx, a in tokens {
		eprintln('${'$a.tok':14}${a.pos:5}${idx:5} ${a.usr1:5}')
	}
}