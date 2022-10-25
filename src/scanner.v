import os

struct Token {
	row  u32
	col  u32
	file StringPointer
mut:
	tok  Tok
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

fn scan_file(data string, file_str StringPointer) {
	mut pos := 0
	mut row := u32(0)
	mut col := u32(0)

	mut is_next_inc := false

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

			if !is_number && (data[pos] in [`'`, `"`, `;`, `{`, `}`, /* `&` */]
				|| (pos + 1 <= data.len && data[pos] == `-` && data[pos + 1] == `>`)) {
				ret_len := pos - start

				// flush last token, start parsing new one
				if ret_len != 0 {
					if !is_number {
						token_stream << Token{
							row: row
							col: start_col
							file: file_str
							tok: .name
							data: u64(new_string_view(unsafe { data.str + start }, ret_len))
						}
					} else {
						token_stream << Token{
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
						str_f_row := row
						str_f_col := col
						// skip quotes, .lit will be the actual string data

						mut str_buf := unsafe { new_empty_string() }

						mut delim := false
						for {
							pos++
							col++
							if pos >= data.len {
								compile_error_e('unterminated string literal', str_f_row,
									str_f_col, file_str)
							}

							if data[pos] == str_quote {
								break
							}

							if delim {
								unsafe {
									match data[pos] {
										`\\` {
											push_char(str_buf, `\\`)
										}
										`a` {
											push_char(str_buf, 0x07)
										}
										`b` {
											push_char(str_buf, 0x08)
										}
										`e` {
											push_char(str_buf, 0x1B)
										}
										`f` {
											push_char(str_buf, 0x0C)
										}
										`n` {
											push_char(str_buf, 0x0A)
										}
										`r` {
											push_char(str_buf, 0x0D)
										}
										`t` {
											push_char(str_buf, 0x09)
										}
										`v` {
											push_char(str_buf, 0x0B)
										}
										else {
											compile_error_e('escape character does not exist',
												row, col, file_str)
										}
									}
								}
								delim = false
								continue
							}

							if data[pos] == `\\` {
								delim = true
								continue
							} else if data[pos] == `\n` {
								row++
								col = 0
							}

							unsafe { push_char(str_buf, data[pos]) }
						}

						unsafe { push_nul(str_buf) }

						if delim {
							compile_error_e('unhandled escape character', row, col, file_str)
						}

						if is_next_inc {
							a := os.read_file(str_buf.str()) or {
								compile_error_e('file to include cannot be read', str_f_row,
									str_f_col, file_str)
							}

							scan_file(a, str_buf)

							is_next_inc = false
						} else {
							token_stream << Token{
								row: str_f_row
								col: str_f_col
								file: file_str
								tok: .string_lit
								data: u64(str_buf)
							}
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
						token_stream << Token{
							row: row
							col: col
							file: file_str
							tok: .l_cb
						}
						col++
						pos++
					}
					/*`&` {
						token_stream << Token{
							row: row
							col: col
							file: file_str
							tok: .amps
						}
						col++
						pos++
					}*/
					`}` {
						token_stream << Token{
							row: row
							col: col
							file: file_str
							tok: .r_cb
						}
						col++
						pos++
					}
					`-` {
						token_stream << Token{
							row: row
							col: col
							file: file_str
							tok: .arrw
						}
						col += 2
						pos += 2
					}
					else {
						assert false
					}
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
			ret_lit := new_string_view(unsafe { data.str + start }, ret_len)
			if is_next_inc {
				compile_error_e('file to include is not a string', row, col, file_str)
			}
			if ret_lit.str() == 'include' {
				is_next_inc = true
				continue
			}
			ret_tok := parse_token(ret_lit)
			token_stream << Token{
				row: row
				col: start_col
				file: file_str
				tok: ret_tok
				data: if ret_tok == .name { u64(ret_lit) } else { 0 }
			}
		} else {
			token_stream << Token{
				row: row
				col: start_col
				file: file_str
				tok: .number_lit
				data: data[start..pos].u64()
			}
		}
	}

	if is_next_inc {
		compile_error_e('unexpected EOF when parsing file to include', row, col, file_str)
	}
}

fn parse_token(str StringPointer) Tok {
	return match unsafe { get_v_string(str) } {
		'fn' { .fn_decl }
		//	"import" {.d_import}
		'ret' { .ret }
		'if' { .if_block }
		'else' { .else_block }
		'elif' { .elif_block }
		'while' { .while_block }
		'break' { .break_block }
		'continue' { .continue_block }
		'assert' { ._assert }
		'argc' { .argc }
		'argv' { .argv }
		'+' { .plus }
		'-' { .sub }
		'*' { .mul }
		'/' { .div }
		'%' { .mod }
		'--' { .dec }
		'++' { .inc }
		'%%' { .divmod }
		'&' { .b_and }
		'|' { .b_or }
		'~' { .b_not }
		'^' { .b_xor }
		'<<' { .shl }
		'>>' { .shr }
		'swap' { .swap }
		'dup' { .dup }
		'over' { .over }
		'over2' { .over2 }
		'rot' { .rot }
		'rot4' { .rot4 }
		'drop' { .drop }
		'_breakpoint' { .trap_breakpoint }
		'const' { .const_expression }
		'=' { .equ }
		'!=' { .nequ }
		'>' { .gt }
		'<' { .lt }
		'>=' { .gte }
		'<=' { .lte }
		'>s' { .s_gt }
		'<s' { .s_lt }
		'>=s' { .s_gte }
		'<=s' { .s_lte }
		'w8' { .w8 }
		'w16' { .w16 }
		'w32' { .w32 }
		'w64' { .w64 }
		'r8' { .r8 }
		'r16' { .r16 }
		'r32' { .r32 }
		'r64' { .r64 }
		'reserve' { .reserve }
		'auto' { .auto }
		'pop' { .pop }
		'syscall0' { .syscall0 }
		'syscall1' { .syscall1 }
		'syscall2' { .syscall2 }
		'syscall3' { .syscall3 }
		'syscall4' { .syscall4 }
		'syscall5' { .syscall5 }
		'syscall6' { .syscall6 }
		else { .name }
	}
}
