__global string_buffer     = [4096]u8{}
__global string_buffer_len = u32(0)

type StringPointer = &u8

fn (s StringPointer) str() string {
	return unsafe{ get_v_string(s) }
}

fn (a StringPointer) cmp(b StringPointer) bool {
	if *(&u64(a)) != *(&u64(b)) {
		return false
	}

	unsafe { return get_v_string(a) == get_v_string(b) }
}

[unsafe]
fn get_v_string(ptr StringPointer) string {
	unsafe {
		return string {
			len: int(*(&u64(ptr)))
			str: &u8(&u8(ptr) + sizeof(u64))
			is_lit: 1
		}
	}
}

// MY GOD these are so fucking unsafe
// just don't push another string view in the middle of appending to a string

[unsafe]
fn push_empty_string() StringPointer {
	ptr := &string_buffer[string_buffer_len]
	unsafe { *(&u64(ptr)) = 0 }
	string_buffer_len += sizeof(u64)
	return StringPointer(ptr)
}

[unsafe]
fn push_char(ptr StringPointer, ch u8) {
	len := unsafe { *(&u64(ptr)) }
	mut ch_p := unsafe { &u8(ptr) + sizeof(u64) + len }

	(*ch_p) = ch

	unsafe {
		*(&u64(ptr)) = len + 1
		string_buffer_len++
	}
}

[unsafe]
fn push_nul(ptr StringPointer) {
	len := unsafe { *(&u64(ptr)) }
	mut ch_p := unsafe { &u8(ptr) + sizeof(u64) + len }

	(*ch_p) = 0
	string_buffer_len++
}

fn push_string_view(str &u8, len int) StringPointer {
	assert len > 0
	sizeof_entry := sizeof(u64) + u32(len)

	if string_buffer_len + sizeof_entry + 1 >= 4096 {
		panic("used up all memory")
	}

	unsafe {
		ptr := &string_buffer[string_buffer_len]

		*(&u64(ptr)) = u64(len)
		vmemcpy(ptr + sizeof(u64), str, len)
		*(&u8(ptr + sizeof_entry)) = 0

		string_buffer_len += sizeof_entry + 1

		return StringPointer(ptr)
	}
}