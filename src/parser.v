struct Parser {
mut:
	s Scanner // contains file + error handling
	
	tokens []Token
	curr Token
	pos int
	cap int
	is_started bool

	ctx DataContext
}

fn (mut g Parser) iter(){
	g.pos++
	if g.pos >= g.cap {
		g.s.error_tok("Unexpected EOF", g.curr) 
	}
	g.curr = g.tokens[g.pos]
}

fn (mut g Parser) next(expected Tok){
	g.iter()
	if g.curr.token != expected {
		g.s.error_tok("Expected $expected, got $g.curr.token",g.curr)
	}
}

fn str_to_u64(s string)u64{
	if s[0] == `-` {
		return -s[1..].u64()
	} else {
		return s.u64()
	}
}

fn (mut g Parser) new_var(){
	type_tok := g.curr
	g.next(.name)
	name_tok := g.curr
	g.iter()
	if g.curr.token !in [.string_lit, .number_lit] {
		if g.curr.token == .name && g.is_var(g.curr) {
			g.s.error_tok("Referencing other variables are not allowed",g.curr)
		}
		g.s.error_tok("Expected literal data, got '$g.curr.token'",g.curr)
	}
	if g.curr.token == .string_lit && type_tok.token == .global {
		g.s.error_tok("String literal pointers are immutable, try a declaration",g.curr)
	}
	// success! now add variable
	g.verify_var(name_tok)

	spec := if type_tok.token == .declare {Spec_t.declare} else {Spec_t.global}
	
	match g.curr.token {
		.string_lit {
			g.ctx.variables[name_tok.lit] = Str_t {
				name: name_tok.lit
				spec: spec
				tok: g.curr
			}
		}
		.number_lit {
			g.ctx.variables[name_tok.lit] = U64_t {
				name: name_tok.lit
				spec: spec
				tok: g.curr
				d: str_to_u64(g.curr.lit)
			}
		}
		else {
			panic("new_var unhandled")
		}
	}
}

fn (g &Parser) verify_var(tok Token) {
	if _ := g.ctx.variables[tok.lit] {
		g.s.error_tok("Duplicate variable '$tok.lit'",tok)
	}

	// actually name collisions arent actually possible
	// due to actually being interpreted as a keyword token
	// lol
	/* if keyw := keywords[tok.lit] {
		g.s.error_tok("Variable name conflicts with keyword '$keyw'",tok)
	} */
}

[inline]
fn (g &Parser) is_var(tok Token) bool {
	return tok.lit in g.ctx.variables
}

fn (g &Parser) get_var(tok Token)Data_t {
	return g.ctx.variables[tok.lit] or {
		g.s.error_tok("Variable '$tok.lit' does not exist",tok)
	}
}

fn (g &Parser) expected_var<T>(tok Token){
	tp := g.get_var(tok)
	if tp !is T {
		g.s.error_tok("Expected type '${T.name}'",g.curr)
	}
}

[unsafe] 
fn new_lit_hash() string {
	mut static index := 1
	mut x := index
	x = ((x >> 16) ^ x) * 0x45d9f3b
	x = ((x >> 16) ^ x) * 0x45d9f3b
	x = (x >> 16) ^ x
	
	index++
	return 'lit_'+x.str()
}

fn (mut g Parser) new_push()IR_Statement{
	g.iter()
	if g.curr.token == .string_lit {
		hash := unsafe { new_lit_hash() }
		g.ctx.variables[hash] = Str_t {
			name: hash
			spec: .literal
			tok: g.curr
		}
		return IR_PUSH_VAR {
			var: hash
		}
	} else if g.curr.token == .number_lit {
		return IR_PUSH_NUMBER {
			data: str_to_u64(g.curr.lit)
		}
	} else {
		if g.curr.token == .name {
			g.get_var(g.curr)
			return IR_PUSH_VAR {
				var: g.curr.lit
			}
		} else {
			g.s.error_tok("Expected literal data or variable, got '$g.curr.token'",g.curr)
		}
	}
}

fn (mut g Parser) parse_token()?IR_Statement{
	for {
		if _likely_(g.is_started){
			g.pos++
			if g.pos >= g.cap {
				return none
			}
			g.curr = g.tokens[g.pos]
		} else {
			g.is_started = true
		}

		match g.curr.token {
			.declare, .global {
				g.new_var()
				continue 
			}
			.push {
				return g.new_push()
			}
			.print {return IR_PRINT{}}
			.println {return IR_PRINTLN{} }
			.uput {return IR_UPUT{} }
			.uputln {return IR_UPUTLN{} }
			// values with types only enter the stack from push,
			// typechecking is very deterministic
			// perform some dummy interpretation of the tokens up to now

			// write debug info about simulation, make that a different process
			// like hand off information to a different struct and file once
			// parser is done

			.pop {
				g.iter()
				var := g.get_var(g.curr)
				if var.spec == .declare {
					g.s.error_tok("Declared variables are immutable",g.curr)
				}
				
				// like i said above, do basic typechecking
				return IR_POP{
					var: g.curr.lit
				}
			}
			.add  {return IR_ADD{}}
			.sub  {return IR_SUB{}}
			.mul  {return IR_MUL{}}
			.div  {return IR_DIV{}}
			.mod  {return IR_MOD{}}
			.divmod  {return IR_DIVMOD{}}
			.drop {return IR_DROP{}}

			.name, .number_lit, .string_lit {
				g.s.error_tok("Unexpected name or literal",g.curr)
			}

			else {panic("Parser not exaustive!")}
		}
		break
	}
	return none
}