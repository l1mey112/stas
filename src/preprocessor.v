__global macros = []u64{}

fn preprocess() {
	// d_define > d_enddef
	
	mut pos := u64(0)
	for {
		match initial_tokens[pos].tok {
			.d_define {
				start := pos
				pos += 2

				if pos >= initial_tokens.len {
					compile_error_i("unexpected EOF when processing macro definition", start)
				}
				name_tok := start + 1
				if initial_tokens[name_tok].tok != .name {
					compile_error_i("macro definition must be a name", name_tok)
				}
				if initial_tokens[pos].tok == .d_enddef {
					compile_error_i("cannot define empty macro definition", pos)
				}

				mut enddf := false
				for ; pos < initial_tokens.len ; pos++ {
					if initial_tokens[pos].tok == .name {
						if name_strings[initial_tokens[pos].usr1] ==
						name_strings[initial_tokens[name_tok].usr1] {
							compile_error_i("macro cannot call itself", pos)
						}
					}						
					if initial_tokens[pos].tok == .d_enddef {
						enddf = true
						break
					}
				}
				if !enddf {
					compile_error_i("unexpected EOF, macro definition never ended", start)
				}
				initial_tokens[start].usr1 = pos
				macros << start
			}
			.d_import {
				start := pos
				pos++
				if pos >= initial_tokens.len {
					compile_error_i("unexpected EOF when processing file import", start)
				}
				if initial_tokens[pos].tok != .string_lit {
					compile_error_i("file path to import must be a string", pos)
				}
				imported_files << name_strings[initial_tokens[pos].usr1]
			}
			.d_enddef {
				compile_error_i("cannot end macro definition while not defining a macro", pos)
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