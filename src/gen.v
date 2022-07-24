import strings

struct Gen {
	s Scanner
mut:
	fns map[string]&IR_function
	file strings.Builder
}

const (
	header = 
'[BITS 64]
global _start'

	builtin_assembly =
'
section .text
builtin_strlen:
	mov rdx, 0
	jmp builtin_strlen_strloop
builtin_strlen_stradd:
	add rdx, 1
	add rdi, 1
builtin_strlen_strloop:
	cmp byte [rdi], 0
	jne builtin_strlen_stradd
	mov rax, rdx
	ret
builtin_write:
	mov rdx, rsi
	mov rsi, rdi
	mov rax, 1 ; sys_write
	mov rdi, 1 ; stdout
	syscall
	ret
builtin_newline:
	mov rdi, builtin_nl
	mov rsi, 1
	call builtin_write
	ret
builtin_uput:
	push rbp
	mov rbp, rsp
	mov rbx, rbp
	sub rsp, 20 
	mov rcx, 0
	test rdi, rdi
	je builtin_uput_zero
	mov rsi, 10
builtin_uput_nextc:
	dec rbx
	mov rax, rdi
	xor edx, edx
	div rsi
	mov rdi, rax
	add edx, "0"
	mov byte [rbx], dl
	inc rcx
	test rdi, rdi
	jne builtin_uput_nextc
builtin_uput_end:
	mov rdi, rbx
	mov rsi, rcx
	call builtin_write
	leave
	ret
builtin_uput_zero:
	mov rcx, 1
	mov byte [rbx], "0"
	jmp builtin_uput_end'

	builtin_entry = 
'_start:	
	call main

	mov rdi, 0
	mov rax, 60
	syscall'
)

fn (mut g Gen) gen_all(){
	g.file = strings.new_builder(250)

	// -- HEADER --
	g.file.writeln(header)
	// -- VARIABLES --
	mut s_rodata := strings.new_builder(40)
	s_rodata.writeln('section .rodata\n\tbuiltin_nl: db 10')
	for _, mut i in g.fns {
		s_rodata.write_u8(`\t`)
		s_rodata.write_string(i.gen_rodata(g))
	}
	g.file.drain_builder(mut s_rodata, 40)
	// g.db.info("Inserted $g.ctx.variables.len variables")

	// -- BUILTIN FUNCTIONS --
	g.file.writeln(builtin_assembly)
	// g.db.info("Wrote ${builtin_assembly.count('\n')+1} lines of builtin assembly")
	// -- START PROGRAM --

	for _, mut i in g.fns {
		g.file.writeln(i.gen())
	}

	g.file.writeln(builtin_entry)
	// g.db.info("Finished dynamic codegen, generated assembly for $g.statements.len statements")
}

interface IR_Statement {
	gen(ctx &IR_function) string
}

struct IR_RETURN {}
fn (i IR_RETURN) gen(ctx &IR_function) string {
	return ''
}

struct IR_PUSH_NUMBER {data u64}
fn (i IR_PUSH_NUMBER) gen(ctx &IR_function) string {
	return "	push $i.data"
}

struct IR_POP {var string}
fn (i IR_POP) gen(ctx &IR_function) string {
	return ''/* "\t\t${gen.ctx.variables[i.var].pop(gen)}" */
}

struct IR_PRINT {}
fn (i IR_PRINT) gen(ctx &IR_function) string {
	return
'	pop rbx
	mov rdi, rbx
	call builtin_strlen
	mov rdi, rbx
	mov rsi, rax
	call builtin_write'
}

struct IR_PRINTLN {}
fn (i IR_PRINTLN) gen(ctx &IR_function) string {
	return 
'	pop rbx
	mov rdi, rbx
	call builtin_strlen
	mov rdi, rbx
	mov rsi, rax
	call builtin_write
	call builtin_newline'
}

struct IR_UPUT {}
fn (i IR_UPUT) gen(ctx &IR_function) string {
	return
'		pop rdi
		call builtin_uput'
}

struct IR_UPUTLN {}
fn (i IR_UPUTLN) gen(ctx &IR_function) string {
	return
'		pop rdi
		call builtin_uput
		call builtin_newline'
}

struct IR_ADD {}
fn (i IR_ADD) gen(ctx &IR_function) string {
	return
'		pop rdi
		pop rsi
		add rsi, rdi
		push rsi'
}

struct IR_SUB {}
fn (i IR_SUB) gen(ctx &IR_function) string {
	return
'		pop rdi
		pop rsi
		sub rsi, rdi
		push rsi'
}

struct IR_MUL {}
fn (i IR_MUL) gen(ctx &IR_function) string {
	return
'		pop rdi
		pop rsi
		imul rsi, rdi
		push rsi'
}

struct IR_DIV {}
fn (i IR_DIV) gen(ctx &IR_function) string {
	return
'		pop rdi
		pop rax
		xor edx, edx
		div rdi
		push rax'
}

struct IR_MOD {}
fn (i IR_MOD) gen(ctx &IR_function) string {
	return
'		pop rdi
		pop rax
		xor edx, edx
		div rdi
		push rdx'
}

struct IR_DIVMOD {}
fn (i IR_DIVMOD) gen (ctx &IR_function) string {
	return
'		pop rdi
		pop rax
		xor rdx, rdx
		div rdi
		push rdx
		push rax'
}

struct IR_INC {}
fn (i IR_INC) gen(ctx &IR_function) string {
	return ''
}

struct IR_DEC {}
fn (i IR_DEC) gen(ctx &IR_function) string {
	return 
'	pop rdi
	dec rdi
	push rdi'
}

struct IR_EQUAL {}
fn (i IR_EQUAL) gen(ctx &IR_function) string {
	return ''
}

struct IR_GREATER {}
fn (i IR_GREATER) gen(ctx &IR_function) string {
	return 
'	pop rsi ; >
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setg al
	push rax'
}

struct IR_LESS {}
fn (i IR_LESS) gen(ctx &IR_function) string {
	return ''
}

struct IR_DUP {}
fn (i IR_DUP) gen(ctx &IR_function) string {
	return 
'	pop rdi
	push rdi
	push rdi'
}

struct IR_SWAP {}
fn (i IR_SWAP) gen(ctx &IR_function) string {
	return ''
}

struct IR_DROP {}
fn (i IR_DROP) gen(ctx &IR_function) string {
	return '\tadd rsp, 8'
}

struct IR_RET {}
fn (i IR_RET) gen(ctx &IR_function) string {
	return ''
}