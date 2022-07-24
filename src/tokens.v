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
	name
	string_lit
	number_lit

	inc     // +
	dec     // -
	add     // +=
	sub     // -=
	mul     // *=
	div     // /=
	mod     // %=
	divmod  // %%
	equal   // =
	greater // >
	less    // <

	// stack manipulation
	dup     // @
	swap    // ~
	drop    // _

	void    // !
	// return none in functions

	_keywords_begin_
	print
	println
	uput
	uputln

	pop
	local
	ret
	
	in_block
	do_block

	while_block
	if_block
	else_block
	end_block

	syscall
	syscall1
	syscall2
	syscall3
	syscall4
	syscall5
	syscall6

	_keywords_end_

	_end_
}

fn build_token_literals() []string {
	mut a := []string{len: int(Tok._end_), init: "__NONE__"}
	a[Tok.name] = "name"
	a[Tok.string_lit] = "string"
	a[Tok.number_lit] = "number"

	a[Tok.print] = "print"
	a[Tok.println] = "println"
	a[Tok.uput] = "uput"
	a[Tok.uputln] = "uputln"
	
	a[Tok.pop] = "pop"
	a[Tok.local] = "local"
	a[Tok.ret] = "return"

	a[Tok.in_block] = "in"
	a[Tok.do_block] = "do"
	a[Tok.while_block] = "while"
	a[Tok.if_block] = "if"
	a[Tok.else_block] = "else"
	a[Tok.end_block] = "end"

	a[Tok.syscall]  = "syscall"
	a[Tok.syscall1] = "syscall1"
	a[Tok.syscall2] = "syscall2"
	a[Tok.syscall3] = "syscall3"
	a[Tok.syscall4] = "syscall4"
	a[Tok.syscall5] = "syscall5"
	a[Tok.syscall6] = "syscall6"
	
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