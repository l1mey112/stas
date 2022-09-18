fn preprocess(tokens []Token, mut final_bucket []Token) {
	mut macros := map[string]([]Token)
	
	mut pos := 0
	for {
		match tokens[pos].tok {
			.d_include {
				pos++
				assert tokens[pos].tok == .string_lit, "filepath to include must be a string"
				
				// handling files inclusions makes the most sense in a seperate function
				// as those included files would need to be preprocessed too
				// 
				// you would need to copy a macro context if you are going to do it recursively
			}
			.d_define {
				pos++
				assert pos < tokens.len, "unexpected EOF when processing macro definition"
				assert tokens[pos].tok != .d_enddef, "cannot define empty macro definition"
				assert tokens[pos].tok == .name, "macro definition must not be an intrinsic"
				macro_tok := tokens[pos]
				mut macro_toks := []Token{}
				pos++
				assert tokens[pos].tok != .d_enddef, "cannot define macro with no body"
				assert pos < tokens.len, "unexpected EOF when processing macro definition"
				for tokens[pos].tok != .d_enddef {
					macro_toks << tokens[pos]
					pos++
					assert pos < tokens.len, "unexpected EOF when processing macro definition"
				}
				macros[macro_tok.lit] = macro_toks
			}
			.d_enddef {
				assert false, "cannot end macro definition while not defining a macro"
			}
			else {
				if tokens[pos].lit in macros {
					final_bucket << macros[tokens[pos].lit]
				} else {
					final_bucket << tokens[pos]
				}
			}	
		}
		pos++
		if pos >= tokens.len {
			break
		}
	}
}