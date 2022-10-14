__global string_buffer     = [4096]u8{}
__global string_buffer_len = u32(0)

[unsafe]
fn get_v_string(ptr &u8) string {
	unsafe {
		return string {
			len: int(*(&u64(ptr)))
			str: &u8(ptr + sizeof(u64))
			is_lit: 1
		}
	}
}

fn push_string_view(str &u8, len int) &u8 {
	sizeof_entry := sizeof(u64) + u32(len)

	if string_buffer_len + sizeof_entry >= 4096 {
		panic("used up all the memory")
	}

	unsafe {
		ptr := &string_buffer[string_buffer_len]

		*(&u64(ptr)) = u64(len)
		vmemcpy(ptr + sizeof(u64), str, len)
		*(&u8(ptr + sizeof_entry)) = 0

		string_buffer_len += sizeof_entry + 1

		return ptr
	}
}

fn main() {
	a := "hello!!!aaaaaaaaaaaaaaaaaaaaaaaa"

	println(a.len)

	println(sizeof(u64) + u32(a.len) + 1)
	println(u64(string_buffer_len))
	b := push_string_view(a.str, a.len)

	println('${u64(b)}')
	println(u64(string_buffer_len))

	c := unsafe { get_v_string(b) }

	println(c)

	println(unsafe { vstrlen(c.str) })
}