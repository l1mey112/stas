interface data_t {
	tok Token
}

struct str_t {
	tok Token
	lit string
}

struct ptr_t {
	tok Token
	lit u64
}

struct u64_t {
	tok Token
	lit u64
}