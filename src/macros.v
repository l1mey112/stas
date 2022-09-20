fn preprocess() {
	mut macros := []u64{}

	// d_define > d_enddef
	
	mut pos := u64(0)
	for {
		match initial_tokens[pos].tok {
			.d_include {
				pos++
				assert initial_tokens[pos].tok == .string_lit, "filepath to include must be a string"

				// handling files inclusions makes the most sense in a seperate function
				// as those included files would need to be preprocessed too
				// 
				// you would need to copy a macro context if you are going to do it recursively
			}
			.d_define {
				start := pos
				pos++
				assert pos < initial_tokens.len, "unexpected EOF when processing macro definition"
				assert initial_tokens[pos].tok != .d_enddef, "cannot define empty macro definition"
				assert initial_tokens[pos].tok == .name, "macro definition must not be an intrinsic"
				pos++
				assert initial_tokens[pos].tok != .d_enddef, "cannot define macro with no body"
				assert pos < initial_tokens.len, "unexpected EOF when processing macro definition"
				mut enddf := false
				for ; pos < initial_tokens.len ; pos++ {
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
				mut found := false
				for i_ in macros {
					i := name_strings[initial_tokens[i_ + 1].usr1]
					if initial_tokens[pos].tok != .name {
						break
					}
					j := name_strings[initial_tokens[pos].usr1]
					if j == i {
						dend := initial_tokens[i_].usr1
						for dpos := i_ + 2 ; dpos < dend ; dpos++ {
							tokens << initial_tokens[dpos]
						}
						found = true
						break
					}
				}
				if !found {
					tokens << initial_tokens[pos]
				}
			}	
		}
		pos++
		if pos >= initial_tokens.len {
			break
		}
	}
}