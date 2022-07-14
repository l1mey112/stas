enum DataTypes {
	string
	number
}

type Data = string | u64

struct Parser {
mut:
	s Scanner // contains file + error handling
	
	tokens []Token
	curr Token
	pos int
	cap int
	is_started bool

	var_globals map[string]Token
	var_decls map[string]Token
	string_lits []Token
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

fn (mut g Parser) var_expect_exists(tok Token){
	if g.curr.lit !in g.var_globals && g.curr.lit !in g.var_decls {
		g.s.error_tok("Variable '$tok.lit' does not exist",tok)
	}
}

fn (mut g Parser) var_expect_not_dupe(tok Token){
	if tok.lit in g.var_globals || tok.lit in g.var_decls {
		g.s.error_tok("Duplicate variable '$tok.lit'",tok)
	}
}

fn (mut g Parser) new_var(){
	type_tok := g.curr
	g.next(.name)
	name_tok := g.curr
	g.iter()
	if g.curr.token !in [.string_lit, .number_lit] {
		if g.curr.token == .name && ( g.curr.lit in g.var_globals || g.curr.lit in g.var_decls ) {
			g.s.error_tok("Referencing other variables are not allowed",g.curr)
		}
		g.s.error_tok("Expected literal data, got '$g.curr.token'",g.curr)
	}
	if g.curr.token == .string_lit && type_tok.token == .global {
		g.s.error_tok("String pointers are immutable, try a declaration",g.curr)
	}
	// success! now add variable
	g.var_expect_not_dupe(name_tok)

	if type_tok.token == .declare {
		g.var_decls[name_tok.lit] = g.curr
	} else {
		g.var_globals[name_tok.lit] = g.curr
	}
}

fn (mut g Parser) new_push()IR_Statement{
	g.iter()
	if g.curr.token == .string_lit {
		g.string_lits << g.curr
		return IR_PUSH_STRING {
			literal_index: u32(g.string_lits.len-1)
		}
	} else if g.curr.token == .number_lit {
		return IR_PUSH_NUMBER {
			data: g.curr.lit.u64()
		}
	} else {
		if g.curr.token == .name {
			g.var_expect_exists(g.curr)
			return IR_PUSH_VAR {
				var: g.curr.lit
			}
		} else {
			g.s.error_tok("Expected literal data or variable, got '$g.curr.token'",g.curr)
		}
	}
}

fn (mut g Parser) is_var(var string, expected DataTypes){
	tp := g.get_var(var)
	match expected {
		.string {
			if tp.token == .string_lit {
				return
				
			}
		}
		.number {
			if tp.token == .number_lit {
				return
			}
		}
	}
	g.s.error_tok("Expected type '$expected'",g.curr)
}

fn (mut g Parser) get_var(var string)Token{
	if var in g.var_globals {
		return g.var_globals[var] or {
			panic("Indexing sum type failed!")
		}
	} else if var in g.var_decls {
		return g.var_decls[var] or {
			panic("Indexing sum type failed!")
		}
	} else {
		panic("Not handled!")
	}
}

// expect type, whether it be literal or a variable 
fn (mut g Parser) expect_type(expected DataTypes){
	g.iter()
	if g.curr.token == .name {
		g.var_expect_exists(g.curr)
		g.is_var(g.curr.lit, expected)
	} else if g.curr.token !in [.string_lit, .number_lit] {
		g.s.error_tok("Expected '$expected' type, got '$g.curr.token'",g.curr)
	}
}

fn (mut g Parser) parse_token()IR_Statement{
	for {
		if _likely_(g.is_started){
			g.pos++
			if g.pos >= g.cap {
				return IR_EOF{}
			}
			g.curr = g.tokens[g.pos]
		} else {
			g.is_started = true
		}

		match g.curr.token {
			.declare, .global {
				g.new_var()
				continue 
				// vars are seperate
				// they get their own constructor called at the end
			}
			.push {
				return g.new_push()
			}
			.print {return IR_PRINT{}}
			.uput  {return IR_UPUT{} }
			// values with types only enter the stack from push,
			// typechecking is very deterministic
			// perform some dummy interpretation of the tokens up to now
			.pop {
				g.iter()
				if g.curr.token == .declare {
					g.s.error_tok("Declared variables are immutable",g.curr)
				}
				g.var_expect_exists(g.curr)
				// like i said above, do basic typechecking
				return IR_POP{
					var: g.curr.lit
				}
			}
			.add  {return IR_ADD{}}
			.sub  {return IR_SUB{}}
			.mul  {return IR_MUL{}}
			.div  {return IR_DIV{}}
			.drop {return IR_DROP{}}

			.name, .number_lit, .string_lit {
				g.s.error_tok("Unexpected name or literal",g.curr)
			}

			else {panic("Parser not exaustive!")}
		}
		break
	}
	return IR_EOF{}
}