enum Tok {
	name
	string_lit
	number_lit

	d_include
	d_define
	d_enddef

	reserve // define Wordsize 8 enddef
	        // reserve Wordsize quadword_var

	retarrw  // ->
	func
	endfunc
	do_block
//	in_block // function arguments, maybe...

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

	deref8   
	deref16  
	deref32  
	deref64  
	write8   
	write16  
	write32  
	write64  

	drop

//	dup      // dup
//	swap     // swap
//	drop     // drop
//	rot      // rot
//	pop      // pop

	__breakpoint_inspect
}

fn match_token(data string, pos int) Token {
	new := fn [data, pos] (a Tok) Token {
		return Token {lit: data, pos: pos, tok: a}
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

		"drop" { new(.drop) }
		"reserve" { new(.reserve) }
		"endfn" { new(.endfunc) }
		"do" { new(.do_block) }
		"->" { new(.retarrw) }

		"*8"  { new(.deref8)  }
		"*16" { new(.deref16) }
		"*32" { new(.deref32) }
		"*64" { new(.deref64) }
		"&8"  { new(.write8)  }
		"&16" { new(.write16) }
		"&32" { new(.write32) }
		"&64" { new(.write64) }

		"enddef" { new(.d_enddef) }
		"include" { new(.d_include) }
		"define" { new(.d_define) }

		"__breakpoint_inspect" { new(.__breakpoint_inspect) }
		else {
			if data == "fn" { new(.func) }
			else {new(.name)}
		}
	}
}

struct Token {
	pos int
//	len int
//	file_idx int
	
	tok  Tok
	lit string
}

[inline]
fn is_whitespace(c u8) bool {
	return c in [`\r`, `\n`, `\t`, ` `]
}

// token scanner is incredibly simpler now
// 
// splits every token on whitespace, except
// on strings, where normal string scanning
// would take place
// 
// whole line comments are denoted with `;`
fn scan_file(data string, mut token_bucket []Token){
	mut pos := 0
	mut start := 0

	for {
		mut is_number := true
		if pos >= data.len {
			return
		}
		for is_whitespace(data[pos]) {
			pos++
			if pos >= data.len {
				return
			}
		}

		match data[pos] {
			`'`, `"` {
				str_quote := data[pos]
				str_start := pos + 1 
				// skip quotes, .lit will be the actual string data

				for {
					pos++
					assert pos < data.len, 'unfinished string literal'

					if data[pos] == str_quote {
						break
					}
				}

				pos++

				token_bucket << Token {
					lit: data[str_start..pos-1]
					pos: str_start
					tok: .string_lit
				}

				continue
			}
			`;` {
				for data[pos] != `\n` {
					pos++ 
					if pos >= data.len {
						return
					}
				}
				continue
			}
			else {}
		}

		start = pos

		for !is_whitespace(data[pos]) {
			if is_number && !(data[pos] >= `0` && data[pos] <= `9`) {
				is_number = false
			}
			pos++ 
			if pos >= data.len {
				break
			}
		}

		ret := data[start..pos]

		if !is_number {
			token_bucket << match_token(ret, start)
		} else {
			token_bucket << Token {
				lit: ret
				pos: start
				tok: .number_lit
			}
		}
	}
}