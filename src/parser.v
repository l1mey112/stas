__global global_buffers = []u64{}

fn is_existing_global_name(name_tok u64) {
	for f in global_buffers {
		if name_strings[tokens[f+2].usr1] == name_strings[tokens[name_tok].usr1] {
			compile_error_t("name is existing global variable", name_tok)
		}
	}
	for f in function_list {
		if name_strings[f.name] == name_strings[tokens[name_tok].usr1] {
			compile_error_t("name cannot be existing function name", name_tok)
		}
	}
}

fn is_global_buffer(name_tok u64) bool {
	for f in global_buffers {
		if name_strings[tokens[f+2].usr1] == name_strings[tokens[name_tok].usr1] {
			return true
		}
	}
	return false
}

fn parse() {
	mut idx := u64(0)
	for ; idx < tokens.len ; idx++ {
		// eprintln("->> ${tokens[idx]}")
		match tokens[idx].tok {
			.func {
				idx = parse_function(idx)
			}
			.reserve {
				is_valid := idx + 2 <= tokens.len &&
					tokens[idx+1].tok == .number_lit && 
					tokens[idx+2].tok == .name
				
				if !is_valid {
					compile_error_t("global reserve keyword must contain a number and a name", idx)
				}
				// all of these fors inside this reserve and function locals
				// should be moved into a function, all the data is global anyway
				
				

				global_buffers << idx

				idx += 2
			}
			else {
				compile_error_t("unexpected toplevel token", idx) 
			}
		}
	}
}

struct StackVar {
	tok u64
	loc u64
//	size u64
}

struct Function {
mut:
	name u64
	argc u64
	retc u64

	idx_start u64
	idx_end u64

	string_lits []u64

	stackvars []StackVar
	stackframe u64
}

__global function_list = []Function{}
__global has_main = false
__global tokens = []Token{}

fn (f StackVar) str() string {
	return 'StackVar{
    tok: ${name_strings[tokens[f.tok].usr1]}
    loc: $f.loc
}'
}

fn (f Function) str() string {
	mut slit := '['
	for i, s in f.string_lits {
		slit += "'${name_strings[tokens[s].usr1]}'"
		if i < f.string_lits.len - 1 {
			slit += ', '
		}
	}
	slit += ']'
	return
'Function{
    name: ${name_strings[f.name]}
    argc: ${f.argc}
    retc: ${f.retc}
    idx_start: ${f.idx_start}
    idx_end: ${f.idx_end}
    string_lits: $slit
    stackvars: $f.stackvars
    stackframe: $f.stackframe
}'
}

fn parse_function(_idx u64) u64 {
	mut idx := _idx

	mut func := Function{}
	tokens[idx].usr1 = u64(function_list.len)

	idx += 2
	if idx >= tokens.len {
		compile_error_t("unexpected EOF when parsing function", _idx)
	}
	
	name_tok := _idx + 1
	if tokens[name_tok].tok != .name {
		compile_error_t("function name must not be an intrinsic", _idx)
	}
	// assert name_strings[tokens[name_tok].usr1][0] != `_`, "function name must not contain a leading underscore"
	if name_strings[tokens[name_tok].usr1] == 'main' {
		has_main = true
	}
	is_existing_global_name(name_tok)
	func.name = tokens[name_tok].usr1

	if tokens[idx].tok != .do_block {
		argc_tok := idx
		idx += 2
		if idx >= tokens.len {
			compile_error_t("unexpected EOF when parsing function argument and return counts", argc_tok)
		}
		if tokens[argc_tok].tok != .number_lit {
			compile_error_t("function argument count must be a number", argc_tok)
		}
		if tokens[argc_tok+1].tok != .number_lit {
			compile_error_t("function return count must be a number", argc_tok + 1)
		}
		func.argc = tokens[argc_tok    ].usr1
		func.retc = tokens[argc_tok + 1].usr1
		
		if func.argc > 6 {
			compile_error_t("function must not accept more that 6 arguments", argc_tok)
		}
		if func.retc > 6 {
			compile_error_t("function must not return more that 6 arguments", argc_tok + 1)
		}
	}

	if tokens[idx].tok != .do_block {
		compile_error_t("do block keyword not found after function definition", _idx)
	}

	idx++
	func.idx_start = idx // skip over do block
	                     // for f.idx_start ; <= f.idx_end ; ipos++

	for ; idx < tokens.len ; idx++ {
		match tokens[idx].tok {
			.endfunc {
				func.idx_end = idx // for pos < idx_end
				break
			}
			else {
				idx = parse_one(idx, mut func)
			}
		}
	}

	if func.idx_end == 0 {
		compile_error_t("function never ended with an 'endfn'", _idx)
	}

	function_list << func
	return idx // do not skip over .endfunc, will be incremented anyway
}

__global latest_while_tok = u64(0)

fn parse_one(_idx u64, mut func Function) u64 {
	mut idx := _idx
	match tokens[idx].tok {
		.if_block {
			mut elsep := u64(0)
			mut broken := false
			
			idx++ // skip if
			
			for ; idx < tokens.len ; idx++ {
				match tokens[idx].tok {
					.else_block {
						if elsep != 0 {
							compile_error_t("if statement cannot contain multiple else blocks", idx)
						}
						elsep = idx
					}
					.endif_block {
						broken = true
						break
					}
					else {
						idx = parse_one(idx, mut func)
					}
				}
			}

			if !broken {
				compile_error_t("unexpected EOF, if statement not ended", _idx)
			}

			if elsep != 0 {
				tokens[_idx].usr1 = elsep
				tokens[elsep].usr1 = idx
				tokens[idx].usr1 = 0
			} else {
				tokens[_idx].usr1 = idx
				tokens[idx].usr1 = 0
			}

			// if -> else -> endif -> 0
		}
		.while_block {
			mut broken := false
			mut dop := u64(0)

			idx++

			latest_while_tok = _idx
			for ; idx < tokens.len ; idx++ {
				match tokens[idx].tok {
					.do_block { 
						if dop != 0 {
							compile_error_t("while statement cannot contain multiple do blocks", idx)
						}
						dop = idx
					}
					.endwhile_block {
						broken = true
						break
					}
					else {
						idx = parse_one(idx, mut func)
					}
				}
			}

			if !broken {
				compile_error_t("unexpected EOF, while statement not ended", _idx)
			}
			if dop == 0 {
				compile_error_t("while statement header is not terminated with a do block", _idx)
			}

			tokens[_idx].usr1 = dop
			tokens[dop].usr1 = idx
			tokens[idx].usr1 = 0

			latest_while_tok = 0
			// while  -> do -> endwhile -> 0
		}
		._asm {
			is_valid := idx + 3 <= tokens.len &&
				tokens[idx+1].tok == .number_lit && 
				tokens[idx+2].tok == .number_lit &&
				tokens[idx+3].tok == .string_lit
			
			if !is_valid {
				compile_error_t("asm expects numbers being inputs and outputs with a string literal as the 3 next tokens", idx)
			}

			idx += 3 // skip over
		}
		.break_block {
			if latest_while_tok == 0 {
				compile_error_t("using the break keyword whilst not inside a while block", idx)
			}
			tokens[idx].usr1 = latest_while_tok
		}
		.reserve {
			is_valid := idx + 2 <= tokens.len &&
				tokens[idx+1].tok == .number_lit && 
				tokens[idx+2].tok == .name

			if !is_valid {
				compile_error_t("reserve keyword must contain a number and a name", idx)
			}

			is_existing_global_name(idx+2)

			for f in func.stackvars {
				if name_strings[tokens[f.tok].usr1] == name_strings[tokens[idx+2].usr1] {
					compile_error_t("duplicate stack variable name", idx+2)
				}
			}
			if name_strings[func.name] == name_strings[tokens[idx+2].usr1] {
				compile_error_t("reserved stack variable cannot be parent function name", idx+2)
			}

			// don't want UB because unaligned stack
			
			align := fn (n u64) u64 {
				return ((n + 7) & ~(7))
			}
			
			func.stackframe += align(tokens[idx+1].usr1)
			func.stackvars << StackVar {
				tok: idx + 2
				loc: func.stackframe
			//	size: tokens[idx+1].usr1
			}

			idx += 2
		}
		.string_lit {
			func.string_lits << idx
		}
		.func {
			compile_error_t("cannot define a function inside a function, function above may have not been terminated", idx)
		}
		else {}
	}
	return idx
}