type Str = string

[direct_array_access]
pub fn (s Str) normalize_tabs(tablen int) Str {
	if s.len == 0 {
		return s.clone()
	}

	mut idxs := []int{cap: s.len}
	defer {
		unsafe { idxs.free() }
	}
	mut idx := 0
	for i, ch in s {
		if ch == `\t` {
			idxs << i
		}
	}
	if idxs.len == 0 {
		return s.clone()
	}
	// TODO PERF Allocating ints is expensive. Should be a stack array
	// Get locations of all reps within this string
	mut idxs := []int{cap: s.len / rep.len}
	defer {
		unsafe { idxs.free() }
	}
	mut idx := 0
	for {
		idx = s.index_after(rep, idx)
		if idx == -1 {
			break
		}
		idxs << idx
		idx += rep.len
	}
	// Dont change the string if there's nothing to replace
	if idxs.len == 0 {
		return s.clone()
	}
	// Now we know the number of replacements we need to do and we can calc the len of the new string
	new_len := s.len + idxs.len * (with.len - rep.len)
	mut b := unsafe { malloc_noscan(new_len + 1) } // add space for the null byte at the end
	// Fill the new string
	mut b_i := 0
	mut s_idx := 0
	for _, rep_pos in idxs {
		for i in s_idx .. rep_pos { // copy everything up to piece being replaced
			unsafe {
				b[b_i] = s[i]
			}
			b_i++
		}
		s_idx = rep_pos + rep.len // move string index past replacement
		for i in 0 .. with.len { // copy replacement piece
			unsafe {
				b[b_i] = with[i]
			}
			b_i++
		}
	}
	if s_idx < s.len { // if any original after last replacement, copy it
		for i in s_idx .. s.len {
			unsafe {
				b[b_i] = s[i]
			}
			b_i++
		}
	}
	unsafe {
		b[new_len] = 0
		return tos(b, new_len)
	}
}

fn main() {
	hello := Str("Hello")

	println(
		hello.normalize_tabs()
	)
}