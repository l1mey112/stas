module stas

[flag]
pub enum Typ {
	void_t
	ptr_t
	int_t
	bool_t
}
struct BuiltinType {
mut:
	typ Typ
	ptr_level int
}



/* fn void_t() BuiltinType {
	return BuiltinType{primitive: .void_t, ptr_level: 0}
} */