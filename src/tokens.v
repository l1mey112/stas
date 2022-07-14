struct Token {
	pos int
	len int // length

	row int
	col int

	lit    string // literal representation
mut:
	token  Tok
}

enum Tok {
	error // unknown token
	eof

	name       // identifier
//	comment    // ; (lasts till end of line)
	
//	left_sqbr  // [
//	right_sqbr // ]
//	separator  // ,
//	arrays come later, i should add them though!

	string_lit // "abc" -> just a char pointer
	number_lit // 0123456789
//	array_lit  // [xxx,xxx]

	add // +
	sub // -
	mul // *
	div // /

	_keywords_begin_
	declare // declare
	global  // declare
	push    // push
	pop     // pop
	drop    // drop
	print   // for char pointers
	uput    // for unsigned numbers
//	sput    // for signed numbers
//	dispatch
	_keywords_end_

	_end_
}

fn build_token_literals() []string {
	mut a := []string{len: int(Tok._end_)}
	a[Tok.error] = "ERROR"
	a[Tok.eof] = "EOF"
	a[Tok.name] = "name"
//	a[Tok.comment] = ";"
//	a[Tok.left_sqbr] = "["
//	a[Tok.right_sqbr] = "]"
//	a[Tok.separator] = ","
	a[Tok.string_lit] = "string"
	a[Tok.number_lit] = "number"
	a[Tok.declare] = "declare"
	a[Tok.global] = "global"
	a[Tok.push] = "push"
	a[Tok.pop] = "pop"
	a[Tok.drop] = "drop"
	a[Tok.print] = "print"
	a[Tok.uput] = "uput"
//	a[Tok.sput] = "sput"
//	a[Tok.dispatch] = "dispatch"
	return a
}

const (
	token_lit = build_token_literals() // tokens to literal text
	keywords = build_keywords() // keyword literals to tokens
)

fn build_keywords() map[string]Tok {
	mut res := map[string]Tok{}
	for t in int(Tok._keywords_begin_) + 1 .. int(Tok._keywords_end_) {
		key := token_lit[t]
		res[key] = Tok(t)
	}
	return res
}

// do binary search or something later, linear time is okay for now
// v/vlib/v/token/keywords_matcher.v:70 for inspiration
fn get_keyword_token(word string) int {
	for literal, token in keywords {
		if word == literal {
			return int(token)
		}
	}
	return -1
}