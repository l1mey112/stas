struct Parser {
mut:
	tokens []Token
	curr Token
	pos int
	cap int

	has_main bool

	fns map[string]&Function
	ctx &Function

	inside_if    bool
	inside_while bool
}

fn (mut g Parser) iter(){
	g.pos++
	if g.pos >= g.cap {
		error_tok("unexpected EOF", g.curr) 
	}
	g.curr = g.tokens[g.pos]
}

fn (mut g Parser) next(expected Tok){
	g.iter()
	if g.curr.token != expected {
		error_tok("expected $expected, got $g.curr.token",g.curr)
	}
}

fn (mut g Parser) current(expected Tok){
	if g.curr.token != expected {
		error_tok("expected $expected, got $g.curr.token",g.curr)
	}
}

fn (mut g Parser) next_bool(expected Tok) bool {
	g.iter()
	return g.curr.token == expected
}

fn (mut g Parser) peek_bool(expected Tok) bool {
	if g.pos+1 >= g.cap {
		error_tok("unexpected EOF", g.curr) 
	}
	return g.tokens[g.pos+1].token == expected
}

fn str_to_u64(s string)u64{
	if s[0] == `-` {
		return -s[1..].u64()
	} else {
		return s.u64()
	}
}

fn (mut g Parser) new_push()IR_Statement{
	if g.curr.token == .name {
		if g.curr.lit in g.fns {
			g.trace("new func call '$g.curr.lit'")
			g.ctx.is_stack_frame = true
			return IR_CALL_FUNC {
				argc: g.fns[g.curr.lit].args.len
				func: g.curr.lit
				no_return: g.fns[g.curr.lit].no_return
			}
		}
		if g.ctx.get_var(g.curr.lit) {
			g.trace("new push var '$g.curr.lit'")
			g.ctx.is_stack_frame = true
			return IR_PUSH_VAR {
				var: g.curr.lit
			}
		} else if g.ctx.get_buf(g.curr.lit) {
			g.trace("new push buffer '$g.curr.lit'")
			g.ctx.is_stack_frame = true
			return IR_PUSH_BUF_PTR {
				var: g.curr.lit
			}
		} else {
			error_tok("Variable or function '$g.curr.lit' not found",g.curr)
		}
	} else if g.curr.token == .string_lit {
		hash := unsafe { new_lit_hash() }
		g.ctx.slit[hash] = g.curr
		return IR_PUSH_STR_VAR {
			var: hash
		}
	} else if g.curr.token == .number_lit {
		return IR_PUSH_NUMBER {
			data: str_to_u64(g.curr.lit)
		}
	}

	error_tok("Expected literal data or variable, got '$g.curr.token'",g.curr)
}

fn (mut g Parser) check_exists(tok Token){
	if g.ctx == unsafe { nil } {
		return
	}

	if tok.lit in g.fns {
		error_tok("Name is already function '$tok.lit'",tok)
	} else if tok.lit in g.ctx.args {
		error_tok("Name is already a function argument '$tok.lit'",tok)
	} else if tok.lit in g.ctx.bufs {
		error_tok("Duplicate variable '$tok.lit'",tok)
	} else if tok.lit in g.ctx.vars {
		error_tok("Duplicate variable '$tok.lit'",tok)
	}
}

fn (mut g Parser) eof_cleanup(){
	// done parsing all, parse_func should not be called anymore

	if !g.has_main {
		eprintln("No main function!!!")
		eprintln("TODO: MAKE PROPER GENERAL ERROR FUNCTION")
		exit(1)
	}

	assert !g.inside_if
	assert !g.inside_while

	g.trace("eof cleanup")
}

fn (mut g Parser) new_stack_var()?IR_Statement{
	g.next(.name)
	name_tok := g.curr
	g.check_exists(name_tok)
	g.trace("new stack var '$name_tok.lit'")
	g.iter()

	if g.curr.token == .string_lit {
		g.ctx.vars[name_tok.lit] = VarT {g.curr,g.ctx.vari}
		g.ctx.vari++
		hash := unsafe { new_lit_hash() }
		g.ctx.slit[hash] = g.curr
		return IR_VAR_INIT_STR {
			var: name_tok.lit
			data: hash
		}
	} else if g.curr.token == .number_lit {
		g.ctx.vars[name_tok.lit] = VarT {g.curr,g.ctx.vari}
		g.ctx.vari++
		return IR_VAR_INIT_NUMBER {
			var: name_tok.lit
			data: str_to_u64(g.curr.lit)
		}
	} else if g.curr.token == .sb_l {
		g.next(.number_lit)
		buf_count_tok := g.curr
		g.next(.sb_r)

		buf_count := buf_count_tok.lit.int()
		if buf_count <= 0 {
			error_tok("Contiguous stack memory cannot be 0 or negative!",g.curr)
		}
		g.ctx.bufs[name_tok.lit] = BufT {s: buf_count}
		return none
	}

	/* if g.curr.token == .name && g.ctx.get_var(g.curr.lit) {
		g.ctx.vars[name_tok.lit] = VarT {g.curr,g.ctx.vari}
		g.ctx.vari++
	} */
	/* for assigning arguments to variables
	   its quite useless and wastes precious stack space 
	*/

	error_tok("Expected literal data or variable, got '$g.curr.token'",g.curr)
}

fn (mut g Parser) parse_new_func()?{
	g.current(.name)
	name := g.curr
	g.trace("new func '$name.lit'")

	g.ctx = &Function{}

	g.iter()
	if g.curr.token == .void {
		g.ctx.no_return = true
		g.next(.in_block)
	} else {
		g.current(.in_block)
	}

	g.check_exists(name)

	if name.lit == "main" {
		g.ctx.no_return = true // needed
		g.has_main = true
	}
	g.ctx.name = name.lit
	g.fns[g.ctx.name] = g.ctx

	for g.next_bool(.name) {
		g.check_exists(g.curr)
		g.ctx.args << g.curr.lit
	}
	assert g.ctx.args.len <= 6 
		// 'limitation' of fastcall
	g.trace("args func '$name.lit', $g.ctx.args")
	g.current(.do_block)

	for {
		if i := g.parse_token() {
			g.ctx.body << i
		} else {
			if g.curr.token == .end_block {
				g.trace("end func '$name.lit'")
				if g.pos+1 >= g.cap {
					return error('')
				} else {
					g.iter()
				}
				return
			}
			error_tok("function does not end",g.curr)
		}
	}
	panic("")
}

[if parser_trace?]
fn (mut g Parser) trace(str string){
	eprintln("TRACE -- $str")
}

fn (mut g Parser) parse_if()IR_IF{
	g.trace("new if")

	mut ctx := IR_IF{}
	g.inside_if = true
	defer {g.inside_if = false}

	for {
		if i := g.parse_token() {
			ctx.top << i
		} else {
			if g.curr.token == .do_block {
				g.trace("end if args")
				break
			}
			error_tok("starting statement in if does not end",g.curr)
		}
	}

	for {
		if i := g.parse_token() {
			ctx.body << i
		} else {
			if g.curr.token == .else_block {
				for {
					if i := g.parse_token() {
						ctx.other << i
					} else {
						if g.curr.token == .end_block {
							g.trace("end if else")
							break
						} else {
							error_tok("if statement does not end",g.curr)
						}
					}
				}
				break
			} else if g.curr.token == .end_block {
				g.trace("end if")
				break
			} else {
				error_tok("if statement does not end",g.curr)
			}
		}
	}

	return ctx
}

fn (mut g Parser) parse_while()IR_WHILE{
	g.trace("new while")

	mut ctx := IR_WHILE{}
	g.inside_while = true
	defer {g.inside_while = false}

	for {
		if i := g.parse_token() {
			ctx.top << i
		} else {
			if g.curr.token == .do_block {
				g.trace("end while args")
				break
			}
			error_tok("starting statement in while does not end",g.curr)
		}
	}

	for {
		if i := g.parse_token() {
			ctx.body << i
		} else {
			if g.curr.token == .end_block {
				g.trace("end while")
				break
			} else {
				error_tok("while loop does not end",g.curr)
			}
		}
	}

	return ctx
}

fn (mut g Parser) new_deref()IR_Statement{
	if g.next_bool(.sspec) {
		g.next(.number_lit)
		match g.curr.lit.int() {
			8 {
				return IR_DEREF_8{}
			}
			16 {
				return IR_DEREF_16{}
			}
			32 {
				return IR_DEREF_32{}
			}
			64 {
				return IR_DEREF_64{}
			}
			else {
				error_tok("Size specification for dereference operation not 8, 16, 32 or 64",g.curr)
			}
		}
	} else {
		return IR_DEREF_64{}
	}
}

fn (mut g Parser) new_writep()IR_Statement{
	if g.next_bool(.sspec) {
		g.next(.number_lit)
		match g.curr.lit.int() {
			8 {
				return IR_WRITEP_8{}
			}
			16 {
				return IR_WRITEP_16{}
			}
			32 {
				return IR_WRITEP_32{}
			}
			64 {
				return IR_WRITEP_64{}
			}
			else {
				error_tok("Size specification for write pointer operation not 8, 16, 32 or 64",g.curr)
			}
		}
	} else {
		return IR_WRITEP_64{}
	}
}

fn (mut g Parser) parse_token()?IR_Statement{
	for {
		g.pos++
		if g.pos >= g.cap {
			return none
		}
		g.curr = g.tokens[g.pos]

		match g.curr.token {
			.local {
				return g.new_stack_var() or {
					continue
				}
			}

			.uput    {g.ctx.is_stack_frame = true return IR_UPUT{} }
			.uputln  {g.ctx.is_stack_frame = true return IR_UPUTLN{} }

			.syscall  {return IR_SYSCALL{}}
			.syscall1 {return IR_SYSCALL1{}}
			.syscall2 {return IR_SYSCALL2{}}
			.syscall3 {return IR_SYSCALL3{}}
			.syscall4 {return IR_SYSCALL4{}}
			.syscall5 {return IR_SYSCALL5{}}
			.syscall6 {return IR_SYSCALL6{}}

			/* .pop {
				g.iter()
				var := g.get_var(g.curr)
				if var.spec == .declare {
					error_tok("Declared variables are immutable",g.curr)
				}
				
				// like i said above, do basic typechecking
				return IR_POP{
					var: g.curr.lit
				}
			} */

			.deref    {return g.new_deref()}
			.writep   {return g.new_writep()}

			.add      {return IR_ADD{}}
			.sub      {return IR_SUB{}}
			.mul      {return IR_MUL{}}
			.div      {return IR_DIV{}}
			.mod      {return IR_MOD{}}
			.divmod   {return IR_DIVMOD{}}
			.inc      {return IR_INC{}}
			.dec      {return IR_DEC{}}
			.greater  {return IR_GREATER{}}
			.less     {return IR_LESS{}}
			.equal    {return IR_EQUAL{}}
			.notequal {return IR_NOTEQUAL{}}
			.ret      {return IR_RETURN{}}
			.dup      {return IR_DUP{}}
			.drop     {return IR_DROP{}}

			.name, .number_lit, .string_lit {
				return g.new_push()
			}

			.if_block {
				return g.parse_if()
			}
			.while_block {
				return g.parse_while()
			}
			.else_block {
				if g.inside_if {
					return none
				} else {
					error_tok("unexpected else while not inside if",g.curr)
				}
			}


			.end_block {
				return none
				/* if g.inside_if && g.inside_if */
			}

			.do_block {
				if g.inside_if || g.inside_while {
					return none
				} else {
					error_tok("unexpected keyword",g.curr)
				}
			}

			else {panic("Parser not exaustive! 'Tok.$g.curr.token'")}
		}
		break
	}
	return none
}
