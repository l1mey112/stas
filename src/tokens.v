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
	name       // identifier
//	comment    // ; (lasts till end of line)
	
//	left_sqbr  // [
//	right_sqbr // ]
//	separator  // ,
//	arrays come later, i should add them though!

	string_lit // "abc" -> just a char pointer
	number_lit // 0123456789
//	array_lit  // [xxx,xxx]

	inc // +
	dec // -
	add // +=
	sub // -=
	mul // *=
	div // /=
	mod // %=
	divmod // %%

	_keywords_begin_
	declare // declare
	global  // declare
	push    // push
	pop     // pop
	drop    // drop
	print   // for char pointers
	println
	uput    // for unsigned numbers
	uputln
//	sput    // for signed numbers
//	dispatch

	until
	do
	end_block

	_keywords_end_

	_end_
}

fn build_token_literals() []string {
	mut a := []string{len: int(Tok._end_), init: "__NONE__"}
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
	a[Tok.println] = "println"
	a[Tok.uput] = "uput"
	a[Tok.uputln] = "uputln"
//	a[Tok.sput] = "sput"
//	a[Tok.dispatch] = "dispatch"

	a[Tok.until] = "until"
	a[Tok.do] = "do"
	a[Tok.end_block] = "end"

	$if !prod {
		for s in a[int(Tok._keywords_begin_)+1..int(Tok._keywords_end_)] {
			if s == '__NONE__' {
				panic("Token literals not exaustive")
			}
		}
	}

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