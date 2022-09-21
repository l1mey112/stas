__global macros = []u64{}

/* fn inclusions() {
	
	/* .d_include {
		pos++
		assert initial_tokens[pos].tok == .string_lit, "filepath to include must be a string"
	} */
} */

fn preprocess() {
	// d_define > d_enddef
	
	mut pos := u64(0)
	for {
		match initial_tokens[pos].tok {
			.d_define {
				start := pos
				pos++
				assert pos < initial_tokens.len, "unexpected EOF when processing macro definition"
				assert initial_tokens[pos].tok != .d_enddef, "cannot define empty macro definition"
				assert initial_tokens[pos].tok == .name, "macro definition must not be an intrinsic"
				name_tok := pos
				pos++
				assert initial_tokens[pos].tok != .d_enddef, "cannot define macro with no body"
				assert pos < initial_tokens.len, "unexpected EOF when processing macro definition"
				mut enddf := false
				for ; pos < initial_tokens.len ; pos++ {
					if initial_tokens[pos].tok == .name {
						assert name_strings[initial_tokens[pos].usr1] !=
						name_strings[initial_tokens[name_tok].usr1],
						"macro cannot call itself"
					}						
					if initial_tokens[pos].tok == .d_enddef {
						enddf = true
						break
					}
				}
				assert enddf, "unexpected EOF when processing macro definition"
				initial_tokens[start].usr1 = pos
				macros << start
			}
			.d_enddef {
				assert false, "cannot end macro definition while not defining a macro"
			}
			else {
				match_name_to_macro(pos)
			}	
		}
		pos++
		if pos >= initial_tokens.len {
			break
		}
	}
}

fn match_name_to_macro(pos u64){
	if initial_tokens[pos].tok != .name {
		tokens << initial_tokens[pos]
		return
	}
	mut found := false
	for i_ in macros {
		i := name_strings[initial_tokens[i_ + 1].usr1]
		j := name_strings[initial_tokens[pos].usr1]
		if j == i {
			dend := initial_tokens[i_].usr1
			for dpos := i_ + 2 ; dpos < dend ; dpos++ {
				match_name_to_macro(dpos)
			}
			found = true
			break
		}
	}
	if !found {
		tokens << initial_tokens[pos]
	}
}