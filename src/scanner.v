import os

enum Tok {
	name
	string_lit
	number_lit

	fn_decl
	d_import

	l_cb // {
	r_cb // }
	arrw // ->

	// Control flow
		do_block
		if_block
		else_block
		// elif_block
		// while_block
		// break_block
		// continue_block
	// Arithmetic
		plus
		sub
		mul
		div
		mod
		inc
		dec
		divmod
	// Stack manipulation
		swap
		dup
		over
		rot
		drop
	// Memory
		// reserve
		// auto
		// pop
}

struct Token {
	row u32
	col u32
	file u32
	tok Tok
	lit &u8
}

fn scan_file(data string, file_idx int){
	mut pos := 0
	mut start := 0
	mut next_str_include := false

	mut row := 0
	mut col := 0

	outer: for {
		mut is_number := true
		if pos >= data.len {
			break outer
		}
		for data[pos] in [`\r`, `\n`, `\t`, ` `] {
			if data[pos] == `\n` {
				row++
				col = 0	
			} else {
				col++
			}
			pos++
			if pos >= data.len {
				break outer
			}
		}

		match data[pos] {
			`'`, `"` {
				str_quote := data[pos]
				str_start := pos + 1 
				str_f_row := row
				str_f_col := col
				// skip quotes, .lit will be the actual string data

				for {
					pos++
					col++
					if pos >= data.len {
						compile_error_('unterminated string literal', str_f_row, str_f_col, file_idx)
					}

					if data[pos] == str_quote {
						break
					} else if data[pos] == `\n` {
						row++
						col = 0	
					}
				}

				string_data := data[str_start..pos]

				if next_str_include {
					file := os.read_file(string_data) or {
						compile_error_e('file to include could not be found', str_f_row, str_f_col, file_idx)
					}
					fidx := filenames.len
					filenames << string_data
					scan_file(file, fidx)

					next_str_include = false
				} else {
					nsl := u64(name_strings.len)
					name_strings << string_data

					initial_tokens << Token {
						pos: str_start
						tok: .string_lit
						usr1: nsl
						row: row
						col: col
						file_idx: file_idx
					}
				}
				col++
				pos++
				continue
			}
			`;` {
				for data[pos] != `\n` {
					pos++
					if pos >= data.len {
						break outer
					}
				}
				continue
			}
			else {}
		}

		start = pos
		start_col := col

		for data[pos] !in [`\r`, `\n`, `\t`, ` `] {
			if is_number && !(data[pos] >= `0` && data[pos] <= `9`) {
				is_number = false
			}
			col++
			pos++ 
			if pos >= data.len {
				break // do not break outer
			}
		}

		ret := data[start..pos]

		if !is_number {
			token := match_token(ret, start, row, start_col, file_idx)
			if token.tok == .d_include {
				next_str_include = true
			} else {
				initial_tokens << token
			}
		} else {
			initial_tokens << Token {
			//	lit: ret
				pos: start
				tok: .number_lit
				row: row
				col: start_col
				file_idx: file_idx
				
				usr1: ret.u64()
			}
		}
	}
	
	assert !next_str_include, "unexpected EOF when handling file inclusion"
}

// assertations should never call and are not a substitute for compiler errors anymore

/* fn stub__(){
	$if prod {
		$compile_error('cannot be compiled with prod, this will remove asserts')
	}
} */