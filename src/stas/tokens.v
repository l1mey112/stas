module stas

struct Token {
	pos int
	len int

	row int
	col int

	file string
	/* 
	   what file did this come from? 
	   e.g included files 
	*/
mut:
	lit string

	token  Tok
}

fn (tok Token) fpos() FilePos {
	return FilePos{
		row: tok.row
		col: tok.col
		len: tok.len
		filename: tok.file
	}
}

enum Tok {
	name
	string_lit
	number_lit

	inc      // +
	dec      // -
	add      // +=
	sub      // -=
	mul      // *=
	div      // /=
	mod      // %=
	divmod   // %%
	equal    // =
	notequal // !=
	greater  // >
	less     // <

	sb_l     // [
	sb_r     // ]

	// stack manipulation
	dup     // @
	swap    // ~
	drop    // _
	
	// pointers
	deref   // *
	writep  // &
	sspec   // ::

	void    // !

	_keywords_begin_
	pop
	local
	ret
	
	in_block
	do_block

	while_block
	if_block
	else_block
	end_block
	match_block

	_true
	_false
	
	integer // int
	boolean // bool
//	pointer // *

	syscall
	syscall1
	syscall2
	syscall3
	syscall4
	syscall5
	syscall6

	_assert

	debug_stack_dump
	debug_filepos
	debug_nop

	_keywords_end_

	_end_
}

fn build_token_literals() []string {
	mut a := []string{len: int(Tok._end_), init: "__NONE__"}
	a[Tok.name] = "name"
	a[Tok.string_lit] = "string"
	a[Tok.number_lit] = "number"
	
	a[Tok.pop] = "pop"
	a[Tok.local] = "local"
	a[Tok.ret] = "return"

	a[Tok.in_block] = "in"
	a[Tok.do_block] = "do"
	a[Tok.while_block] = "while"
	a[Tok.if_block] = "if"
	a[Tok.else_block] = "else"
	a[Tok.end_block] = "end"
	a[Tok.match_block] = "match"

	a[Tok._true] = "true"
	a[Tok._false] = "false"

	a[Tok.integer] = "int"
	a[Tok.boolean] = "bool"

	a[Tok.syscall]  = "syscall"
	a[Tok.syscall1] = "syscall1"
	a[Tok.syscall2] = "syscall2"
	a[Tok.syscall3] = "syscall3"
	a[Tok.syscall4] = "syscall4"
	a[Tok.syscall5] = "syscall5"
	a[Tok.syscall6] = "syscall6"

	a[Tok._assert] = "assert"

	a[Tok.debug_stack_dump] = "_dump"
	a[Tok.debug_filepos] = "_here"
	a[Tok.debug_nop] = "_nop"
	
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