struct Scanner {
	text string
	filename string

	cap int
mut:
	pos int
	row int
	l_nl int = -1

	is_started bool
}

fn (s Scanner) get_fp() FilePos {
	return FilePos {
		row: s.row, 
		col: s.pos - s.l_nl - 1, 
		len: 1
		filename: s.filename, 
		text: s.text
	}
}

[noreturn]
fn (s Scanner) error_tok(err string,tok Token) {
	comp_error(err,FilePos{
		row: tok.row
		col: tok.col
		len: tok.len
		filename: s.filename
		text: s.text
	})
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

		row: s.row
		col: s.pos - len - s.l_nl
	}
}

[inline]
fn (mut s Scanner) eof() Token {
	return Token{
		token: .eof
		lit: ''
		pos: s.pos
		len: 1
	}
}

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
	for s.pos < s.cap && s.text[s.pos] != `\n` {
		s.pos++
	}
}

fn (mut s Scanner) scan_token() Token {
	for {
		if _likely_(s.is_started){ s.pos++ } 
		else { s.is_started = true }

		s.skip_whitespace()
		if s.pos >= s.cap { return s.eof() }

		c := s.text[s.pos]
		nextc := s.next()
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
			`"`, `'` {
				str := s.march_string()
				return s.new_token(.string_lit, str, str.len)
			}
			`;` {
				s.skip_line()
				s.inc_line()
				continue
			}
			`+` {
				return s.new_token(.add, '', 1)
			}
			`-` {
				return s.new_token(.sub, '', 1)
			}
			`*` {
				return s.new_token(.mul, '', 1)
			}
			`/` {
				return s.new_token(.div, '', 1)
			}
			`%` {
				return s.new_token(.mod, '', 1)
			}
			else {}
		}
		break
	}
	return s.eof()
}