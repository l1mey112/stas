import strings

struct DataContext {
mut:
	variables map[string]Data_t
}

enum Spec_t {
	literal
	declare
	global
//	some other specifier
//	volitile
}

interface Data_t {
	name string
	tok Token
	spec Spec_t

	gen(&Gen) string
	push(&Gen) string
	pop(&Gen) string
}

const (
	escape_ch = {
		`a` : '0x07'
		`b` : '0x08'
		`e` : '0x1B'
		`f` : '0x0C'
		`n` : '0x0A'
		`r` : '0x0D'
		`t` : '0x09'
		`v` : '0x0B'
	}
)

// parse string escape chars
fn (g Gen) parse_string(tok Token) string {
	str := tok.lit[1 .. tok.lit.len-1] // trim quotes
	mut ret := strings.new_builder(str.len)
	if str == '' {
		g.s.error_tok("Empty literal string",tok)
	}
	ret.write_u8(`'`)
	mut pos := 0
	for {
		c := str[pos]
		if c == `\\` {
			pos++
			if pos >= str.len {
				g.s.error_tok("Unhandled escape character",tok)
			}
			nextc := str[pos]
			if nextc == `\\` {
				ret.write_u8(c)
				continue
			}
			escape := escape_ch[nextc] or {
				g.s.error_tok("Escape char '${nextc.ascii_str()}' does not exist",tok)
			}
			if pos+1 >= str.len {
				ret.write_string("', $escape")
				break
			} else {
				ret.write_string("', $escape, '")
			}
		} else {
			ret.write_u8(c)
		}

		pos++
		if pos >= str.len {
			ret.write_u8(`'`)
			break
		}
	}
	return ret.str()
}

// assert str_t.spec != global
struct Str_t {
	name string
	tok Token
	spec Spec_t
}

fn (t &Str_t) gen(gen &Gen) string {
	match t.spec {
		.literal {
			return "$t.name: db ${gen.parse_string(t.tok)}, 0"
		}
		.declare {
			return "decl_$t.name: db ${gen.parse_string(t.tok)}, 0"
		}
		else {panic("Unhandled")}
	}
}

fn (t &Str_t) push(gen &Gen) string {
	match t.spec {
		.literal {
			return "push qword $t.name"
		}
		.declare {
			return "push qword decl_$t.name"
		}
		else {panic("Unhandled")}
	}
}

fn (t &Str_t) pop(gen &Gen) string {
	panic("Cannot pop into string literal!")
}
// TODO: maybe remove the global_* and decl_* prefixes? its kind of getting annoying

struct U64_t {
	name string
	tok Token
	spec Spec_t
	d u64
}

fn (t &U64_t) gen(gen &Gen) string {
	match t.spec {
		.declare {
			return "decl_$t.name: dq ${t.d}"
		}
		.global {
			return "global_$t.name: dq ${t.d}"
		}
		else {panic("Unhandled")}
	}
}

fn (t &U64_t) push(gen &Gen) string {
	match t.spec {
		.declare {
			return "push qword [decl_$t.name]"
		}
		.global {
			return "push qword [global_$t.name]"
		}
		else {panic("Unhandled")}
	}
}

fn (t &U64_t) pop(gen &Gen) string {
	match t.spec {
		.declare {
			return "pop qword [decl_$t.name]"
		}
		.global {
			return "pop qword [global_$t.name]"
		}
		else {panic("Unhandled")}
	}
}

// pointer type only useful for type checking 
// when stack simulation comes around.
// kind of pointless when u64 exists

/* struct Ptr_t {
	name string
	tok Token
	spec Spec_t
	d u64
} */

/* struct Array_t {
	tok Token
	spec Spec_t
	d []Data_t // real element size all 64bits wide
} */