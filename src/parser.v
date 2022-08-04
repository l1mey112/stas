import strconv

struct Parser {
	prefs CompilePrefs
mut:
	tokens []Token
	curr Token
	fpos FilePos
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
	g.fpos = g.curr.fpos()
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

fn str_to_u64(t Token)u64{
	isneg := t.lit[0] == `-`
	str := if isneg {t.lit[1..]} else {t.lit}
	
	num := strconv.parse_uint(str,10,64) or {
		error_tok("Unsigned integer overflow (64 bit)",t)
	}

	return if isneg {-num} else {num}
}

fn (mut g Parser) new_push()IR_Statement{
	if g.curr.token == .name {
		if g.curr.lit in g.fns {
			g.trace("new func call '$g.curr.lit'")
			g.ctx.is_stack_frame = true
			if g.curr.lit != g.ctx.name {
				g.ctx.fn_calls << g.curr.lit
			}
			return IR_CALL_FUNC {
				argc: g.fns[g.curr.lit].args.len
				func: g.curr.lit
				no_return: g.fns[g.curr.lit].ret == .void_t
				pos: g.fpos
			}
		}
		if g.ctx.get_var(g.curr.lit) {
			g.trace("new push var '$g.curr.lit'")
			g.ctx.is_stack_frame = true
			return IR_PUSH_VAR {
				var: g.curr.lit
				pos: g.fpos
			}
		} else if g.ctx.get_buf(g.curr.lit) {
			g.trace("new push buffer '$g.curr.lit'")
			g.ctx.is_stack_frame = true
			return IR_PUSH_BUF_PTR {
				var: g.curr.lit
				pos: g.fpos
			}
		} else {
			error_tok("Variable or function '$g.curr.lit' not found",g.curr)
		}
	} else if g.curr.token == .string_lit {
		hash := unsafe { new_lit_hash() }
		g.ctx.slit[hash] = g.curr
		return IR_PUSH_STR_VAR {
			var: hash
			pos: g.fpos
		}
	} else if g.curr.token == .number_lit {
		return IR_PUSH_NUMBER {
			data: str_to_u64(g.curr)
			pos: g.fpos
		}
	}

	error_tok("Expected literal data or variable, got '$g.curr.token'",g.curr)
}

fn (mut g Parser) check_exists(tok Token){
	if tok.token != .name {
		error_tok("Unexpected keyword",tok)
	}
	if g.ctx == unsafe { nil } {
		return
	}
	if tok.lit in g.fns {
		error_tok("Name is already function '$tok.lit'",tok)
	} else if g.ctx.args.is_in(tok.lit) {
		error_tok("Name is already a function argument '$tok.lit'",tok)
	} else if tok.lit in g.ctx.bufs {
		error_tok("Duplicate variable '$tok.lit'",tok)
	} else if tok.lit in g.ctx.vars {
		error_tok("Duplicate variable '$tok.lit'",tok)
	}
}

fn (mut g Parser) eof_cleanup(){
	// done parsing all, parse_func should not be called anymore

	assert !g.inside_if
	assert !g.inside_while

	g.trace("eof cleanup")
}

fn (mut g Parser) new_stack_var()?IR_Statement{
	fpos := g.fpos
	g.iter()
	var_tok := g.curr
	var_typ := g.get_type() or {
		error_tok("Expected type keyword",var_tok)
	}
	if var_typ == .void_t {
		error_tok("Stack variables cannot have void type",var_tok)
	}
	g.next(.name)
	name_tok := g.curr
	g.check_exists(name_tok)
	g.trace("new stack var '$name_tok.lit'")
	g.iter()

	if g.curr.token == .string_lit {
		if var_typ != .ptr_t {
			error_tok("String literals must have type pointer",var_tok)
		}
		g.ctx.vars[name_tok.lit] = VarT {g.curr,g.ctx.vari, .ptr_t}
		g.ctx.vari++
		hash := unsafe { new_lit_hash() }
		g.ctx.slit[hash] = g.curr
		return IR_VAR_INIT_STR {
			var: name_tok.lit
			data: hash
			pos: fpos.to(g.fpos)
		}
	} else if g.curr.token == .number_lit {
		g.ctx.vars[name_tok.lit] = VarT {g.curr,g.ctx.vari, var_typ}
		g.ctx.vari++
		return IR_VAR_INIT_NUMBER {
			var: name_tok.lit
			data: str_to_u64(g.curr)
			pos: fpos.to(g.fpos)
		}
	} else if g.curr.token in [._true, ._false] {
		g.ctx.vars[name_tok.lit] = VarT {g.curr,g.ctx.vari, var_typ}
		g.ctx.vari++
		return IR_VAR_INIT_NUMBER {
			var: name_tok.lit
			data: if g.curr.token == ._true {u64(1)} else {u64(0)}
			pos: fpos.to(g.fpos)
		} // variable inits are ignored by the checker

		// types aren't as integrated into the language as they should be
		// everything is one single width, 8 bytes
		// this language can really go far if types were implemented from the begining.
		// - lm
	} else if g.curr.token == .sb_l {
		g.next(.number_lit)
		buf_count_tok := g.curr
		g.next(.sb_r)

		buf_count := buf_count_tok.lit.int()
		if var_typ != .ptr_t {
			error_tok("Contiguous stack memory must have type pointer",var_tok)
		}
		if buf_count <= 0 {
			error_tok("Contiguous stack memory cannot be 0 or negative",g.curr)
		}
		g.ctx.bufs[name_tok.lit] = buf_count
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

fn (mut g Parser) get_type()?BuiltinType{
	match g.curr.token {
		.void {
			return .void_t
		}
		.integer {
			return .int_t
		}
		.boolean {
			return .bool_t
		}
		.deref {
			return .ptr_t
		}
		else {
			return none
		}
	}
}

fn (mut g Parser) parse_new_func()?{
	g.current(.name)
	name := g.curr
	g.trace("new func '$name.lit'")

	g.ctx = &Function{}

	g.iter()
	g.ctx.ret = g.get_type() or {
		error_tok("Function must specify type",name)
	}
	g.next(.in_block)
	g.check_exists(name)

	if name.lit == "main" {
		// g.ctx.no_return = true
		g.has_main = true
	}
	g.ctx.name = name.lit
	g.fns[g.ctx.name] = g.ctx

	for g.next_bool(.name) {
		g.check_exists(g.curr)
		arg_name_tok := g.curr
		g.iter()
		g.ctx.args << ArgT {
			name: arg_name_tok.lit
			typ: g.get_type() or {
				error_tok("Argument must specify type",arg_name_tok)
			}
		}
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

	mut ctx := IR_IF{pos: g.fpos}
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

	mut ctx := IR_WHILE{pos: g.fpos}
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
	fpos := g.fpos
	if g.next_bool(.sspec) {
		g.next(.number_lit)
		match g.curr.lit.int() {
			8 {
				return IR_DEREF_8{fpos.to(g.fpos)}
			}
			16 {
				return IR_DEREF_16{fpos.to(g.fpos)}
			}
			32 {
				return IR_DEREF_32{fpos.to(g.fpos)}
			}
			64 {
				return IR_DEREF_64{fpos.to(g.fpos)}
			}
			else {
				error_tok("Size specification for dereference operation not 8, 16, 32 or 64",g.curr)
			}
		}
	} else {
		return IR_DEREF_64{fpos}
	}
}

fn (mut g Parser) new_writep()IR_Statement{
	fpos := g.fpos
	if g.next_bool(.sspec) {
		g.next(.number_lit)
		match g.curr.lit.int() {
			8 {
				return IR_WRITEP_8{fpos.to(g.fpos)}
			}
			16 {
				return IR_WRITEP_16{fpos.to(g.fpos)}
			}
			32 {
				return IR_WRITEP_32{fpos.to(g.fpos)}
			}
			64 {
				return IR_WRITEP_64{fpos.to(g.fpos)}
			}
			else {
				error_tok("Size specification for write pointer operation not 8, 16, 32 or 64",g.curr)
			}
		}
	} else {
		return IR_WRITEP_64{fpos}
	}
}

fn (mut g Parser) parse_token()?IR_Statement{
	for {
		g.pos++
		if g.pos >= g.cap {
			return none
		}
		g.curr = g.tokens[g.pos]
		g.fpos = g.tokens[g.pos].fpos()

		match g.curr.token {
			.local {
				return g.new_stack_var() or {
					continue
				}
			}

			.syscall  {return IR_SYSCALL{g.fpos}}
			.syscall1 {return IR_SYSCALL1{g.fpos}}
			.syscall2 {return IR_SYSCALL2{g.fpos}}
			.syscall3 {return IR_SYSCALL3{g.fpos}}
			.syscall4 {return IR_SYSCALL4{g.fpos}}
			.syscall5 {return IR_SYSCALL5{g.fpos}}
			.syscall6 {return IR_SYSCALL6{g.fpos}}

			.pop {
				g.iter()
				name := g.curr.lit

				if g.ctx.args.is_in(name) || (name in g.ctx.vars 
					&& g.ctx.vars[name].t.token == .number_lit) 
				{
					return IR_POP_NUM_VAR{var:name pos:g.fpos + g.tokens[g.pos].fpos()}
				}
				
				error_tok("Cannot mutate anything other than number variables!",g.curr)
			}

			.deref    {return g.new_deref()}
			.writep   {return g.new_writep()}

			.add      {return IR_ADD{g.fpos}}
			.sub      {return IR_SUB{g.fpos}}
			.mul      {return IR_MUL{g.fpos}}
			.div      {return IR_DIV{g.fpos}}
			.mod      {return IR_MOD{g.fpos}}
			.divmod   {return IR_DIVMOD{g.fpos}}
			.inc      {return IR_INC{g.fpos}}
			.dec      {return IR_DEC{g.fpos}}
			.greater  {return IR_GREATER{g.fpos}}
			.less     {return IR_LESS{g.fpos}}
			.equal    {return IR_EQUAL{g.fpos}}
			.notequal {return IR_NOTEQUAL{g.fpos}}
			.ret      {return IR_RETURN{g.fpos}}
			.dup      {return IR_DUP{g.fpos}}
			.drop     {return IR_DROP{g.fpos}}
			.swap     {return IR_SWAP{g.fpos}}

			._true {
				return IR_PUSH_BOOL {
					data: true
					pos: g.fpos
				}
			}
			._false {
				return IR_PUSH_BOOL {
					data: false
					pos: g.fpos
				}
			}
			
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

			.debug_stack_dump {
				if g.prefs.use_dump {
					return DEBUG_DUMP{pos: g.fpos}
				}
				continue
			}
			.debug_filepos {
				hash := unsafe { new_lit_hash() }
				mut tok := g.curr
				tok.lit = '"$g.fpos.plain_str()"'
				g.ctx.slit[hash] = tok
				return IR_PUSH_STR_VAR {
					var: hash
					pos: g.fpos
				}
			}

			else {panic("Parser not exaustive! 'Tok.$g.curr.token'")}
		}
		break
	}
	return none
}
