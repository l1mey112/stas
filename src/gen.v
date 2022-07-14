import strings

struct Gen {
	var_globals map[string]Token
	var_decls map[string]Token
	
	string_lits []Token
	statements []IR_Statement

	s Scanner
mut:
	file strings.Builder
}

fn hash(index u32) string {
	mut x := index + 1
	x = ((x >> 16) ^ x) * 0x45d9f3b
	x = ((x >> 16) ^ x) * 0x45d9f3b
	x = (x >> 16) ^ x
	
	return 'lit_'+x.str()
}

const (
	escape_ch = {
		`a` : '0x07'
		`b` : '0x08'
		`e` : '0x1B'
		`f` : '0x0C'
		`n` : '0x0A'
		`r` : '0x0D'
		`t` : '0x09'
		`v` : '0x0B'
	}
)

// parse string escape chars
fn (g Gen) parse_string(tok Token) string {
	str := tok.lit[1 .. tok.lit.len-1] // trim quotes
	mut ret := strings.new_builder(str.len)
	if str == '' {
		g.s.error_tok("Empty literal string",tok)
	}
	ret.write_u8(`'`)
	mut pos := 0
	for {
		c := str[pos]
		if c == `\\` {
			pos++
			if pos >= str.len {
				g.s.error_tok("Unhandled escape character",tok)
			}
			nextc := str[pos]
			if nextc == `\\` {
				ret.write_u8(c)
				continue
			}
			escape := escape_ch[nextc] or {
				g.s.error_tok("Escape char '${nextc.ascii_str()}' does not exist",tok)
			}
			if pos+1 >= str.len {
				ret.write_string("', $escape")
				break
			} else {
				ret.write_string("', $escape, '")
			}
		} else {
			ret.write_u8(c)
		}

		pos++
		if pos >= str.len {
			ret.write_u8(`'`)
			break
		}
	}
	return ret.str()
}

fn (mut g Gen) gen_all(){
	g.file = strings.new_builder(200)

	// -- HEADER --
	g.file.writeln(
		'[BITS 64]\n' +
		'global _start\n' +
		'section .data'
	)
	// -- STRING LITERALS --
	g.file.ensure_cap(50)
	for idx, string_lit in g.string_lits {
		g.file.writeln('\t${hash(u32(idx))}: db ${g.parse_string(string_lit)}, 0')
	}
	// -- VARIABLES --
	g.file.ensure_cap(50)
	for var, data in g.var_decls {
		match data.token {
			.string_lit {
				g.file.writeln('\tdecl_$var: db ${g.parse_string(data)}')
			}
			.number_lit {
				g.file.writeln('\tdecl_$var: dq ${data.lit.u64()}')
			}
			else { panic("Decl not string or number") }
		}
	}
	g.file.ensure_cap(50)
	for var, data in g.var_globals {
		if data.token != .number_lit {
			panic("Global not u64")
		}
		g.file.writeln('\tglobal_$var: dq ${data.lit.u64()}')
	}
	// -- START CODE SEGMENT --
	g.file.writeln(
		'section .text'
	)
	// -- BUILTIN FUNCTIONS --
	g.file.writeln(
		'	strlen:\n' +
		'		mov rdx, 0\n' +
		'		jmp strloop\n' +
		'	stradd:\n' +
		'		add rdx, 1\n' +
		'		add rdi, 1\n' +
		'	strloop:\n' +
		'		movzx eax, byte [rdi]\n' +
		'		test al, al\n' +
		'		jne stradd\n' +
		'		mov rax, rdx\n' +
		'		ret\n' +
		'	write:\n' +
		'		mov rdx, rsi\n' +
		'		mov rsi, rdi\n' +
		'		mov rax, 1 ; sys_write\n' +
		'		mov rdi, 1 ; stdout\n' +
		'		syscall\n' +
		'		ret'
	)
	g.file.writeln(
"	uput:
		push rbp
		mov rbp, rsp
		mov rbx, rbp
		sub rsp, 20 
		mov rcx, 0
		test rdi, rdi
		je uput_zero
		mov rsi, 10
	uput_nextc:
		dec rbx
		mov rax, rdi
		xor edx, edx
		div rsi
		mov rdi, rax
		add edx, '0'
		mov byte [rbx], dl
		inc rcx
		test rdi, rdi
		jne uput_nextc
	uput_end:
		mov rdi, rbx
		mov rsi, rcx
		call write
		leave
		ret
	uput_zero:
		mov rcx, 1
		mov byte [rbx], '0'
		jmp uput_end"
	)
	
	g.file.writeln(
		'	; --- START ---\n' +
		'	_start:'
	)
	// -- DYNAMIC CODEGEN --
	for s in g.statements {
		g.file.writeln(s.gen(g))
	}
	g.file.writeln(
		'	; --- END ---\n' +
		'	exit:\n' +
		'		mov rax, 60\n' +
		'		mov rdi, 0\n' +
		'		syscall'
	)
}

interface IR_Statement {
	gen(&Gen) string
}

struct IR_EOF {}
fn (i IR_EOF) gen(ctx &Gen) string {
	panic("IR_EOF gen() called!")
}

struct IR_PUSH_VAR {var string}
fn (i IR_PUSH_VAR) gen(ctx &Gen) string {
	if i.var in ctx.var_globals {
		if ctx.var_globals[i.var].token == .string_lit {
			return '		push qword global_$i.var'
		} else {
			return '		push qword [global_$i.var]'
		}
	} else if i.var in ctx.var_decls {
		if ctx.var_decls[i.var].token == .string_lit {
			return '		push qword decl_$i.var'
		} else {
			return '		push qword [decl_$i.var]'
		}
	} else {
		panic("Variable not in globals or decl?")
	}
} // TODO: handle some kind of pointer and literal value type!

struct IR_PUSH_NUMBER {data u64}
fn (i IR_PUSH_NUMBER) gen(ctx &Gen) string {
	return 
		'		push $i.data'
}

struct IR_PUSH_STRING {literal_index u32}
fn (i IR_PUSH_STRING) gen(ctx &Gen) string {
	return 
		'		push ${hash(i.literal_index)}'
}

struct IR_DROP {}
fn (i IR_DROP) gen(ctx &Gen) string {
	return 
		'		pop rax'
}

struct IR_POP {var string}
fn (i IR_POP) gen(ctx &Gen) string {
	if i.var in ctx.var_globals {
		return '		pop qword [global_$i.var]'
	} else if i.var in ctx.var_decls {
		return '		pop qword [decl_$i.var]'
	} else {
		panic("Variable not in globals or decl?")
	}
}

struct IR_PRINT {}
fn (i IR_PRINT) gen(ctx &Gen) string {
	return 
		'		pop rbx\n' +
		'		mov rdi, rbx\n' +
		'		call strlen\n' +
		'		mov rdi, rbx\n' +
		'		mov rsi, rax\n' +
		'		call write'
}

struct IR_UPUT {}
fn (i IR_UPUT) gen(ctx &Gen) string {
	return
'		pop rdi
		call uput'
}

/* struct IR_SPUT {}
fn (i IR_SPUT) gen(ctx &Gen) string {
	panic("Statement not implemented")
} */

struct IR_ADD {}
fn (i IR_ADD) gen(ctx &Gen) string {
	return
		'		pop rdi\n' +
		'		pop rsi\n' +
		'		add rsi, rdi\n' +
		'		push rsi'
}

struct IR_SUB {}
fn (i IR_SUB) gen(ctx &Gen) string {
	return
		'		pop rdi\n' +
		'		pop rsi\n' +
		'		sub rsi, rdi\n' +
		'		push rsi'
}

struct IR_MUL {}
fn (i IR_MUL) gen(ctx &Gen) string {
	return
		'		pop rdi\n' +
		'		pop rsi\n' +
		'		mul rsi, rdi\n' +
		'		push rsi'
}

struct IR_DIV {}
fn (i IR_DIV) gen(ctx &Gen) string {
	return
		'		pop rdi\n' + // divisor
		'		pop rax\n' + // dividend
		'		div rdi\n' +
		'		push rax'
}