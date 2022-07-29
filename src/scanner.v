import os

fn scan_file(data string, filename string)([]Token, CompilePrefs){
	mut scanner := Scanner {
		text: data
		cap: data.len
		filename: filename
		tokens: []Token{cap: 20}
	}
	for {
		if i := scanner.scan_token() {
			scanner.tokens << i
		} else {
			break
		}
	}
	if scanner.tokens.len == 0 {
		comp_error_file("No readable tokens",filename)
	}
	return scanner.tokens, scanner.prefs
}

struct Scanner {
	text string
	filename string

	cap int
mut:
	prefs CompilePrefs
	pos int
	row int
	l_nl int = -1

	is_started bool
	tokens []Token
}

fn (s Scanner) get_fp() FilePos {
	return FilePos {
		row: s.row, 
		col: s.pos - s.l_nl - 1, 
		len: 1
		filename: s.filename, 
	}
}

[noreturn]
fn error_tok(err string,tok Token) {
	comp_error(err,tok.fpos())
}

[inline]
fn is_valid_name(c u8) bool {
	return (c >= `a` && c <= `z`) || (c >= `A` && c <= `Z`) || c == `_`
}

[inline]
fn (mut s Scanner) inc_line() {
	s.l_nl = s.pos
	s.row++
}

[direct_array_access]
fn (mut s Scanner) march_name() string {
	start := s.pos
	s.pos++
	for s.pos < s.cap {
		c := s.text[s.pos]
		if (c >= `a` && c <= `z`) || (c >= `A` && c <= `Z`) || (c >= `0` && c <= `9`) || c == `_` {
			s.pos++
			continue
		}
		break
	}
	name := s.text[start..s.pos]
	s.pos--
	return name
}

[direct_array_access]
fn (mut s Scanner) march_number(is_neg bool) string {
	if is_neg {s.pos++}
	start := s.pos
	for s.pos < s.cap {
		c := s.text[s.pos]
		if !c.is_digit() {
			if c.is_letter() {
				comp_error('Number literal contains non digit',s.get_fp())
			}
			break
		}
		s.pos++
	}
	s.pos--
	mut ret := s.text[start..s.pos+1]
	if is_neg {ret = '-'+ret }
	return ret
}

[direct_array_access]
fn (mut s Scanner) march_string() string {
	quote := s.text[s.pos]	
	start := s.pos

	for {
		s.pos++
		if s.pos >= s.cap {
			comp_error('Unfinished string literal',s.get_fp())
		}
		c := s.text[s.pos]
		if c == `\r` || c == `\n` {
			comp_error('String can not span multiple lines',s.get_fp())
		}
		if c == quote {
			break
		} // end of string
	}
	mut lit := ''
	mut end := s.pos+1
	if start <= s.pos {
		lit = s.text[start..end]
	}
	return lit
}

/* [inline; direct_array_access]
fn (mut s Scanner) next_is_whitespace()bool{
	for s.pos+1 < s.cap {
		return true
	}
	c = s.text[s.pos+1]
	if c == 9 {
		return true
	} // 9 = tab
	if c == 32 || (c > 8 && c < 14) || (c == 0x85) || (c == 0xa0) {
		return true
	} // 32 = space
	c_is_nl := c == `\r` || c == `\n`
	if c_is_nl && !(s.pos > 0 && s.text[s.pos - 1] == `\r` && c == `\n`) {
		s.inc_line()
		return true
	}
} */

fn (mut s Scanner) assert_whitespace(c u8){
	if !(c == 9 || c == 32 || (c > 8 && c < 14) || (c == 0x85) || (c == 0xa0)) {
		s.pos++
		comp_error('Unexpected character',s.get_fp())
	}
}


[direct_array_access; inline]
fn (mut s Scanner) skip_whitespace() {
	for s.pos < s.cap {
		c := s.text[s.pos]
		if c == 9 {
			s.pos++
			continue
		} // 9 = tab
		if !(c == 32 || (c > 8 && c < 14) || (c == 0x85) || (c == 0xa0)) {
			return
		} // 32 = space
		c_is_nl := c == `\r` || c == `\n`
		if c_is_nl && !(s.pos > 0 && s.text[s.pos - 1] == `\r` && c == `\n`) {
			s.inc_line()
		}
		s.pos++
	}
}

[inline]
fn (mut s Scanner) new_token(tok_kind Tok, lit string, len int) Token {
	return Token{
		token: tok_kind
		lit: lit
		pos: s.pos - len + 1
		len: len

		file: s.filename

		row: s.row
		col: s.pos - len - s.l_nl
	}
}

/* [inline]
fn (mut s Scanner) eof() Token {
	return Token{
		token: .eof
		lit: ''
		pos: s.pos
		len: 1
	}
} */

[direct_array_access; inline]
fn (s &Scanner) next() u8 {
	if s.pos + 1 < s.cap {
		return s.text[s.pos + 1]
	} else {
		return `\x00`
	}
}

[direct_array_access; inline]
fn (mut s Scanner) skip_line() {
	for s.pos < s.cap && s.text[s.pos] !in [`\n`,`\r`] {
		s.pos++
	}
}

fn (mut s Scanner) new_directive() {
	s.pos++
	name := s.march_name()
	match name {
		"include" {
			s.pos++
			s.skip_whitespace()
			if s.text[s.pos] !in [`'`,`"`] {
				comp_error('Include directive requires a string',s.get_fp())
			}
			st := s.march_string()
			str := st[1..st.len-1]
			if str.len == 0 {
				comp_error('Cannot include empty path',s.get_fp())
			}
			
			data, real_fp := file_container.open_file(str,os.dir(s.filename)) // ALMOST A PR LOL -> os.path_base(s.filename)
			tokens_file, _ := scan_file(data, real_fp)
			s.tokens << tokens_file
			//eprintln("Inserted file '$str' into '$s.filename'")
		}
		"use_dump" {
			s.prefs.use_dump = true
		}
		else {
			comp_error('Unknown preprocessor directive',s.get_fp())
		}
	}
}

[direct_array_access]
fn (mut s Scanner) scan_token() ?Token {
	for {
		if _likely_(s.is_started){ s.pos++ } 
		else { s.is_started = true }

		s.skip_whitespace()
		if s.pos >= s.cap { return none }

		c := s.text[s.pos]
		nextc := s.next()

		if c == `_` && !is_valid_name(nextc) {
			return s.new_token(.drop, '', 1)
		}


		isneg := c == `-` && nextc.is_digit()
		if is_valid_name(c) { // name or keyword
			name := s.march_name()
			kind := get_keyword_token(name)
			if kind != -1 {
				return s.new_token(Tok(kind), name, name.len)
			}

			return s.new_token(.name, name, name.len)
		} else if c.is_digit() || isneg { // number literals
			num := s.march_number(isneg)
			return s.new_token(.number_lit, num, num.len)
		}
		match c {
			`#` {
				s.new_directive()
				continue
			}
			`"`, `'` {
				str := s.march_string()
				return s.new_token(.string_lit, str, str.len)
			}
			`;` {  // new comment
				s.skip_line()
				s.inc_line()
				continue
			}
			`+` {
				if nextc == `=` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.add, '', 2)
				} else if nextc == `+` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.inc, '', 2)
				} else {
					comp_error('Unexpected character',s.get_fp())
				}
			}
			`-` {
				if nextc == `=` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.sub, '', 2)
				} else if nextc == `-` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.dec, '', 2)
				} else {
					comp_error('Unexpected character',s.get_fp())
				}
			}
			`*` {
				if nextc == `=` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.mul, '', 2)
				} else {
					s.assert_whitespace(s.next())
					return s.new_token(.deref, '', 1)
				}
			}
			`/` {
				if nextc == `=` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.div, '', 2)
				} else {
					comp_error('Unexpected character',s.get_fp())
				}
			}
			`%` {
				if nextc == `=` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.mod, '', 2)
				} else if nextc == `%` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.divmod, '', 2)
				} else {
					comp_error('Unexpected character',s.get_fp())
				}
			}
			`=` {
				s.assert_whitespace(s.next())
				return s.new_token(.equal, '', 1)
			}
			`>` {
				s.assert_whitespace(s.next())
				return s.new_token(.greater, '', 1)
			}
			`<` {
				s.assert_whitespace(s.next())
				return s.new_token(.less, '', 1)
			}
			`@` {
				s.assert_whitespace(s.next())
				return s.new_token(.dup, '', 1)
			}
			`~` {
				s.assert_whitespace(s.next())
				return s.new_token(.swap, '', 1)
			}
			`!` {
				if nextc == `=` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.notequal, '', 2)
				} else {
					s.assert_whitespace(s.next())
					return s.new_token(.void, '', 1)
				}
			}
			`:` {
				if nextc == `:` {
					s.pos++
					s.assert_whitespace(s.next())
					return s.new_token(.sspec, '', 2)
				} else {
					comp_error('Unexpected character',s.get_fp())
				}
			}
			`[` {
				return s.new_token(.sb_l, '', 1)
			}
			`]` {
				return s.new_token(.sb_r, '', 1)
			}
			`&` {
				s.assert_whitespace(s.next())
				return s.new_token(.writep, '', 1)
			}
			else {
				comp_error('Unexpected character',s.get_fp())
			}
		}
		break
	}
	return none
}