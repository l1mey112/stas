import os

enum Tok {
	name
	string_lit
	number_lit

	d_include
	d_define
	d_enddef

	reserve // define Wordsize 8 enddef
	        // reserve Wordsize quadword_var

	//retarrw  // ->
	
	func
	endfunc
	do_block

	if_block
	else_block
	endif_block

	while_block
	endwhile_block

	// as much as i love braces, using them
	// for function definitions only when
	// if, while and for loops will exist
	// will just make it inconsistent
	//
	// gotta keep parsing simple everybody.
	// 
	// l_cb     // {
	// r_cb     // }

	inc      // ++
	dec      // --
	add      // +
	sub      // -
	mul      // *
	div      // /
	mod      // %
	divmod   // %%
	equal    // =
	notequal // !=
	greater  // >
	less     // <
	shr      // >>
	shl      // <<

//	deref8   
//	deref16  
//	deref32  
//	deref64  
//	write8   
//	write16  
//	write32  
//	write64  

//	drop
	ret

//	dup      // dup
//	swap     // swap
//	drop     // drop
//	rot      // rot
//	pop      // pop

	_asm
	_breakpoint_inspect_
}

/* 

asm 2 3
"
"

*/

__global name_strings = []string{}

fn match_token(data string, pos int, rowe int, col int, file_idx int) Token {
	new := fn [pos, rowe, col, file_idx] (a Tok) Token {
		return Token {pos: pos, tok: a, row: rowe, col: col, file_idx: file_idx}
	}

	return match data {
		"++" { new(.inc)      }
		"--" { new(.dec)      }
		"+"  { new(.add)      }
		"-"  { new(.sub)      }
		"*"  { new(.mul)      }
		"/"  { new(.div)      }
		"%"  { new(.mod)      }
		"%%" { new(.divmod)   }
		"="  { new(.equal)    }
		"!=" { new(.notequal) }
		">"  { new(.greater)  }
		"<"  { new(.less)     }
		">>" { new(.shr)      }
		"<<" { new(.shl)      }

		"ret" { new(.ret) }
		"reserve" { new(.reserve) }
		"endfn" { new(.endfunc) }
		"do" { new(.do_block) }

		"if" { new(.if_block) }
		"endif" { new(.endif_block) }
		"else" { new(.else_block) }

		"while" { new(.while_block) }
		"endwhile" { new(.endwhile_block) }

//		"*8"  { new(.deref8)  }
//		"*16" { new(.deref16) }
//		"*32" { new(.deref32) }
//		"*64" { new(.deref64) }
//		"&8"  { new(.write8)  }
//		"&16" { new(.write16) }
//		"&32" { new(.write32) }
//		"&64" { new(.write64) }

		"enddef" { new(.d_enddef) }
		"include" { new(.d_include) }
		"define" { new(.d_define) }

		"asm" { new(._asm) }
		"_breakpoint_inspect_" { new(._breakpoint_inspect_) }
		else {
			if data == "fn" { new(.func) }
			else {
				nsl := u64(name_strings.len)
				name_strings << data

				Token {pos: pos, tok: .name, usr1: nsl, row: rowe, col: col, file_idx: file_idx}
			}
		}
	}
}

struct Token {
	pos int

	row int
	col int
	file_idx int
	
	tok  Tok
//	lit string
mut:
	usr1 u64
}

fn (t Token) str() string {
	if t.tok == .name {
		return
'Token(name){
    pos: ${t.pos}
    tok: ${t.tok}
    usr1: ${name_strings[t.usr1]}
}'
	}
	return
'Token{
    pos: ${t.pos}
    tok: ${t.tok}
    usr1: ${t.usr1}
}'
}
/* for pos := 0 ; pos < initial_tokens.len {
		pos++
		if pos >= initial_tokens.len {
			break
		}
	} */
// for file inclusions, since it's a global variable
// the entire process can just be recursed. just call
// scan_file('std.stas') when recursing.

__global filenames = []string{}

// token scanner is incredibly simpler now
// 
// splits every token on whitespace, except
// on strings, where normal string scanning
// would take place
// 
// whole line comments are denoted with `;`
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
						compile_error_('file to include could not be found', str_f_row, str_f_col, file_idx)
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