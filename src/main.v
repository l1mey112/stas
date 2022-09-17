import os

fn main() {
	data := os.read_file('add.stas') or { panic(err) }

	mut initial_bucket := []Token{cap: 10}
	mut final_bucket := []Token{cap: 10}

	scan_file(data, mut initial_bucket)
	preprocess(initial_bucket, mut final_bucket)

	for a in final_bucket {
		println('${'$a.tok':14} - $a.pos	$a.lit')
	}
}
