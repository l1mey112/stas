enum Tok {
	name
	string_lit
	number_lit

	l_cb // {
	r_cb // }
	arrw // ->

	// Misc
		fn_decl
		trap_breakpoint
	//	d_import
	// Control flow
		do_block
		if_block
		else_block
		elif_block
		while_block
		break_block
		continue_block
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
	// Conditionals
		equ
		nequ
		gt
		lt
		gte
		lte
	// Pointers
		w8
		w16
		w32
		w64
		r8
		r16
		r32
		r64
	// Memory
		reserve
		auto
		pop
}

struct Token {
	row u32
	col u32
	file StringPointer
	tok Tok
	data u64
}

fn (t Token) str() string {
	data_str := if t.tok == .name {
		'${StringPointer(&u8(t.data)).str()}'
	} else if t.tok == .string_lit {
		'\'${StringPointer(&u8(t.data)).str()}\''
	} else {
		t.data.str()
	}

	return compile_error_to_s('	${t.tok:12}${data_str:10}', t.row, t.col, t.file)
}

fn scan_file(data string, file_str StringPointer){
	mut pos := 0
	mut row := u32(0)
	mut col := u32(0)

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

		start := pos
		start_col := col

		for data[pos] !in [`\r`, `\n`, `\t`, ` `] {
			if is_number && !(data[pos] >= `0` && data[pos] <= `9`) {
				is_number = false
			}

			if !is_number && (
					data[pos] in [`'`, `"`, `;`, `{`, `}`] ||
					(pos + 1 <= data.len && data[pos] == `-` && data[pos + 1] == `>`)
				) {
				ret_len := pos - start

				// flush last token, start parsing new one
				if ret_len != 0 {
					if !is_number {
						token_stream << Token {
							row: row
							col: start_col
							file: file_str
							tok: .name
							data: u64(push_string_view(unsafe{data.str + start}, ret_len))
						}
					} else {
						token_stream << Token {
							row: row
							col: start_col
							file: file_str
							tok: .number_lit
							data: data[start..pos].u64()
						}
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
								compile_error_e('unterminated string literal', str_f_row, str_f_col, file_str)
							}

							if data[pos] == str_quote {
								break
							} else if data[pos] == `\n` {
								row++
								col = 0	
							}
						}

						str_len := pos - str_start - 1

						token_stream << Token {
							row: str_f_row
							col: str_f_col
							file: file_str
							tok: .string_lit
							data: u64(push_string_view(unsafe{data.str + str_start}, str_len))
						}

						col++
						pos++
					}
					`;` {
						for data[pos] != `\n` {
							pos++
							if pos >= data.len {
								break outer
							}
						}
					}
					`{` {
						token_stream << Token {
							row: row
							col: col
							file: file_str
							tok: .l_cb
						}
						col++
						pos++
					}
					`}` {
						token_stream << Token {
							row: row
							col: col
							file: file_str
							tok: .r_cb
						}
						col++
						pos++
					}
					`-` {
						token_stream << Token {
							row: row
							col: col
							file: file_str
							tok: .arrw
						}
						col+=2
						pos+=2
					}
					else { assert false }
				}

				continue outer
			}

			col++
			pos++ 
			if pos >= data.len {
				break // do not break outer
			}
		}

		ret_len := pos - start 

		if !is_number {
			ret_lit := push_string_view(unsafe{data.str + start}, ret_len)
			ret_tok := parse_token(ret_lit)
			token_stream << Token {
				row: row
				col: start_col
				file: file_str
				tok: ret_tok
				data: if ret_tok == .name { u64(ret_lit) } else { 0 }
			}
		} else {
			token_stream << Token {
				row: row
				col: start_col
				file: file_str
				tok: .number_lit
				data: data[start..pos].u64()
			}
		}
	}
}

fn parse_token(str StringPointer) Tok {
	return match unsafe {get_v_string(str)} {
		"fn" {.fn_decl}
	//	"import" {.d_import}
		"do" {.do_block}
		"if" {.if_block}
		"else" {.else_block}
		"elif" {.elif_block}
		"while" {.while_block}
		"break" {.break_block}
		"continue" {.continue_block}
		"+" {.plus}
		"-" {.sub}
		"*" {.mul}
		"/" {.div}
		"%" {.mod}
		"--" {.dec}
		"++" {.inc}
		"%%" {.divmod}
		"swap" {.swap}
		"dup" {.dup}
		"over" {.over}
		"rot" {.rot}
		"drop" {.drop}
		"_breakpoint" {.trap_breakpoint}
		"=" {.equ}
		"!=" {.nequ}
		">" {.gt}
		"<" {.lt}
		">=" {.gte}
		"<=" {.lte}
		"w8" {.w8}
		"w16" {.w16}
		"w32" {.w32}
		"w64" {.w64}
		"r8" {.r8}
		"r16" {.r16}
		"r32" {.r32}
		"r64" {.r64}
		"reserve" {.reserve}
		"auto" {.auto}
		"pop" {.pop}
		else {.name}
	}
}