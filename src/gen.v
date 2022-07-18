import strings

struct Gen {
	ctx DataContext
	statements []IR_Statement

	s Scanner
	db &Debug
mut:
	file strings.Builder
}

const (
	header = 
'[BITS 64]
global _start'

	builtin_assembly =
'section .text
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
)

fn (mut g Gen) gen_all(){
	g.file = strings.new_builder(250)

	// -- HEADER --
	g.file.writeln(header)
	// -- VARIABLES --

	mut s_data := strings.new_builder(40)
	mut s_rodata := strings.new_builder(40)
	s_data.writeln('section .data')
	s_rodata.writeln('section .rodata\n\tbuiltin_nl: db 10')

	for _, data in g.ctx.variables {
		match data.spec {
			.literal, .declare {
				s_rodata.writeln('\t${data.gen(g)}')
			}
			.global {
				s_data.writeln('\t${data.gen(g)}')
			}
		}
	}
	g.file.drain_builder(mut s_rodata, 40)
	g.file.drain_builder(mut s_data, 40)
	g.db.info("Inserted $g.ctx.variables.len variables")

	// -- BUILTIN FUNCTIONS --
	g.file.writeln(builtin_assembly)
	g.db.info("Wrote ${builtin_assembly.count('\n')+1} lines of builtin assembly")
	// -- START PROGRAM --
	g.file.writeln(
'	; --- START ---
	_start:'
	)
	// -- DYNAMIC CODEGEN --
	for s in g.statements {
		g.file.writeln(s.gen(g))
	}
	g.db.info("Finished dynamic codegen, generated assembly for $g.statements.len statements")
	// -- EXIT PROGRAM --
	g.file.writeln(
'	; --- END ---
	exit:
		mov rax, 60
		mov rdi, 0
		syscall'
	)
}

interface IR_Statement {
	gen(&Gen) string
}

struct IR_PUSH_VAR {var string}
fn (i IR_PUSH_VAR) gen(gen &Gen) string {
	return "\t\t${gen.ctx.variables[i.var].push(gen)}"
}

struct IR_PUSH_NUMBER {data u64}
fn (i IR_PUSH_NUMBER) gen(gen &Gen) string {
	return "\t\tpush $i.data"
}

struct IR_DROP {}
fn (i IR_DROP) gen(gen &Gen) string {
	return "\t\tpop rax"
}

struct IR_POP {var string}
fn (i IR_POP) gen(gen &Gen) string {
	return "\t\t${gen.ctx.variables[i.var].pop(gen)}"
}

struct IR_PRINT {}
fn (i IR_PRINT) gen(gen &Gen) string {
	return
'		pop rbx
		mov rdi, rbx
		call builtin_strlen
		mov rdi, rbx
		mov rsi, rax
		call builtin_write'
}

struct IR_PRINTLN {}
fn (i IR_PRINTLN) gen(gen &Gen) string {
	return 
'		pop rbx
		mov rdi, rbx
		call builtin_strlen
		mov rdi, rbx
		mov rsi, rax
		call builtin_write
		call builtin_newline'
}

struct IR_UPUT {}
fn (i IR_UPUT) gen(gen &Gen) string {
	return
'		pop rdi
		call builtin_uput'
}

struct IR_UPUTLN {}
fn (i IR_UPUTLN) gen(gen &Gen) string {
	return
'		pop rdi
		call builtin_uput
		call builtin_newline'
}

struct IR_ADD {}
fn (i IR_ADD) gen(gen &Gen) string {
	return
'		pop rdi
		pop rsi
		add rsi, rdi
		push rsi'
}

struct IR_SUB {}
fn (i IR_SUB) gen(gen &Gen) string {
	return
'		pop rdi
		pop rsi
		sub rsi, rdi
		push rsi'
}

struct IR_MUL {}
fn (i IR_MUL) gen(gen &Gen) string {
	return
'		pop rdi
		pop rsi
		imul rsi, rdi
		push rsi'
} // trust gcc with imul

struct IR_DIV {}
fn (i IR_DIV) gen(gen &Gen) string {
	return
'		pop rdi
		pop rax
		xor edx, edx
		div rdi
		push rax'
}

struct IR_MOD {}
fn (i IR_MOD) gen(gen &Gen) string {
	return
'		pop rdi
		pop rax
		xor edx, edx
		div rdi
		push rdx'
}
// TODO:
// add some kind of divmod token that pushes the division and modulo onto the stack
// maybe make that the default div and force the user to use the drop operator
// drop could even be renamed into _? (make sure it doesnt get interpreted as a name)