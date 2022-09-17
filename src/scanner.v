enum Tok {
	name
	string_lit
	number_lit

	d_include
	d_define
	d_enddef

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

	dup      // dup
	swap     // swap
	drop     // drop
	rot      // rot
//	pop      // pop

	__end__
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

		if data[pos] in [`'`, `"`] {
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
		} else if data[pos] == `;` {
			for data[pos] != `\n` {
				pos++ 
				if pos >= data.len {
					return
				}
			}
			continue
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

fn match_token(data string, pos int) Token {
	new := fn [data, pos] (a Tok) Token {
		return Token {lit: data, pos: pos, tok: a}
	}

	return match data {
		"++"   { new(.inc)      }
		"--"   { new(.dec)      }
		"+"    { new(.add)      }
		"-"    { new(.sub)      }
		"*"    { new(.mul)      }
		"/"    { new(.div)      }
		"%"    { new(.mod)      }
		"%%"   { new(.divmod)   }
		"="    { new(.equal)    }
		"!="   { new(.notequal) }
		">"    { new(.greater)  }
		"<"    { new(.less)     }
		"dup"  { new(.dup)      }
		"swap" { new(.swap)     }
		"drop" { new(.drop)     }
		"rot"  { new(.rot)      }

		"enddef" { new(.d_enddef) }

		"include" { new(.d_include) }
		"define" { new(.d_define) }
		else   { new(.name) }
	}
}