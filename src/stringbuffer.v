__global string_buffer     = [4096]u8{}
__global string_buffer_len = u32(0)

type StringPointer = &u8

fn (s StringPointer) str() string {
	return unsafe{ get_v_string(s) }
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