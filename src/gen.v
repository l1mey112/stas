import strings

struct Gen {
mut:
	fns map[string]&Function
	data []IR_Statement
	file strings.Builder
}

const header = 

'[BITS 64]
global _start'

const builtin_entry = 

'_start:
	call main
	mov rdi, 0
	mov rax, 60
	syscall'

fn (mut g Gen) gen_all(){
	g.file = strings.new_builder(250)
	// -- HEADER --
	g.file.writeln(header)
	// -- VARIABLES --
	mut s_rodata := strings.new_builder(40)
	s_rodata.writeln('section .rodata')
	for _, mut i in g.fns {
		s_rodata.write_string(i.gen_rodata(g))
	}
	g.file.drain_builder(mut s_rodata, 0)
	g.file.writeln('section .text')
	// -- START PROGRAM --
	for _, mut i in g.fns {
		g.file.writeln(i.gen())
	}
	g.file.writeln(builtin_entry)
}

interface IR_Statement {
	gen(mut ctx Function) string
	pos FilePos
}

struct IR_DEREF_64 {pos FilePos}
fn (i IR_DEREF_64) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; INTRINSIC - DEREF U64')}
	push qword [rdi]'
}

struct IR_DEREF_32 {pos FilePos}
fn (i IR_DEREF_32) gen(mut ctx Function) string {
	return
'	${annotate('xor rax,rax','; INTRINSIC - DEREF U32')}
	pop rdi
	mov eax, dword [rdi]
	push rax'
}

struct IR_DEREF_16 {pos FilePos}
fn (i IR_DEREF_16) gen(mut ctx Function) string {
	return
'	${annotate('xor rax,rax','; INTRINSIC - DEREF U16')}
	pop rdi
	mov ax, word [rdi]
	push rax'
}

struct IR_DEREF_8 {pos FilePos}
fn (i IR_DEREF_8) gen(mut ctx Function) string {
	return
'	${annotate('xor rax,rax','; INTRINSIC - DEREF U8')}
	pop rdi
	mov al, byte [rdi]
	push rax'
}

struct IR_WRITEP_64 {pos FilePos}
fn (i IR_WRITEP_64) gen(mut ctx Function) string {
	return ''
}

struct IR_WRITEP_32 {pos FilePos}
fn (i IR_WRITEP_32) gen(mut ctx Function) string {
	return ''
}

struct IR_WRITEP_16 {pos FilePos}
fn (i IR_WRITEP_16) gen(mut ctx Function) string {
	return ''
}

struct IR_WRITEP_8 {pos FilePos}
fn (i IR_WRITEP_8) gen(mut ctx Function) string {
	return
'	${annotate('pop rax','; INTRINSIC - WRITE PTR U8')}
	pop rdi
	mov byte [rdi], al'
}

struct IR_ADD {pos FilePos}
fn (i IR_ADD) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ OPERATOR - ADD')}
	pop rsi
	add rsi, rdi
	push rsi'
}

struct IR_SUB {pos FilePos}
fn (i IR_SUB) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ OPERATOR - SUBTRACT')}
	pop rsi
	sub rsi, rdi
	push rsi'
}

struct IR_MUL {pos FilePos}
fn (i IR_MUL) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ OPERATOR - MULTIPLY')}
	pop rsi
	imul rsi, rdi
	push rsi'
}

struct IR_DIV {pos FilePos}
fn (i IR_DIV) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ OPERATOR - DIVIDE')}
	pop rax
	xor edx, edx
	div rdi
	push rax'
}

struct IR_MOD {pos FilePos}
fn (i IR_MOD) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ OPERATOR - MODULO')}
	pop rax
	xor edx, edx
	div rdi
	push rdx'
}

struct IR_DIVMOD {pos FilePos}
fn (i IR_DIVMOD) gen (mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ OPERATOR - DIVIDE AND MODULO')}
	pop rax
	xor rdx, rdx
	div rdi
	push rax
	push rdx' // push DIV then MOD
}

struct IR_INC {pos FilePos}
fn (i IR_INC) gen(mut ctx Function) string {
	return 
'	${annotate('pop rdi','; ~ OPERATOR - INCREMENT')}
	inc rdi
	push rdi'
}

struct IR_DEC {pos FilePos}
fn (i IR_DEC) gen(mut ctx Function) string {
	return 
'	${annotate('pop rdi','; ~ OPERATOR - DECREMENT')}
	dec rdi
	push rdi'
}

struct IR_EQUAL {pos FilePos}
fn (i IR_EQUAL) gen(mut ctx Function) string {
	return
'	${annotate('pop rsi','; ~ CONDITIONAL - EQUAL')}
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	sete al
	push rax'
}

struct IR_NOTEQUAL {pos FilePos}
fn (i IR_NOTEQUAL) gen(mut ctx Function) string {
	return
'	${annotate('pop rsi','; ~ CONDITIONAL - NOT EQUAL')}
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setne al
	push rax'
}

struct IR_GREATER {pos FilePos}
fn (i IR_GREATER) gen(mut ctx Function) string {
	return 
'	${annotate('pop rsi','; ~ CONDITIONAL - GREATER THAN')}
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	seta al
	push rax'
}
/* 
	!!! - setg is a signed comparison!
	!!! - seta is not!
	!!! - https://en.wikibooks.org/wiki/X86_Assembly/Control_Flow#Jump_if_Above_(unsigned_comparison)
*/

struct IR_LESS {pos FilePos}
fn (i IR_LESS) gen(mut ctx Function) string {
	return 
'	${annotate('pop rsi','; ~ CONDITIONAL - LESS THAN')}
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setb al
	push rax'
}

struct IR_DUP {pos FilePos}
fn (i IR_DUP) gen(mut ctx Function) string {
	return 
'	${annotate('pop rdi','; ~ STACK - DUPLICATE')}
	push rdi
	push rdi'
}

struct IR_SWAP {pos FilePos}
fn (i IR_SWAP) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ STACK - SWAP')}
	pop rsi
	push rdi
	push rsi' // motherfucker i did a push rdi, push rdi
}

struct IR_DROP {pos FilePos}
fn (i IR_DROP) gen(mut ctx Function) string {
	return '\t${annotate('add rsp, 8','; ~ STACK - DROP')}'
}

// https://hackeradam.com/x86-64-linux-syscalls/
struct IR_SYSCALL {pos FilePos}
fn (i IR_SYSCALL) gen(mut ctx Function) string {
	return 
'	${annotate('pop rax','; ~ INTRINSIC - SYSCALL')}
	syscall
	push rax'
}

struct IR_SYSCALL1 {pos FilePos}
fn (i IR_SYSCALL1) gen(mut ctx Function) string {
	return
'	${annotate('pop rdi','; ~ INTRINSIC - SYSCALL1')}
	pop rax
	syscall
	push rax'
}

struct IR_SYSCALL2 {pos FilePos}
fn (i IR_SYSCALL2) gen(mut ctx Function) string {
	return
'	${annotate('pop rsi','; ~ INTRINSIC - SYSCALL2')}
	pop rdi
	pop rax
	syscall
	push rax'
}

struct IR_SYSCALL3 {pos FilePos}
fn (i IR_SYSCALL3) gen(mut ctx Function) string {
	return
'	${annotate('pop rdx','; ~ INTRINSIC - SYSCALL3')}
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax'
}

struct IR_SYSCALL4 {pos FilePos}
fn (i IR_SYSCALL4) gen(mut ctx Function) string {
	return
'	${annotate('pop r10','; ~ INTRINSIC - SYSCALL4')}
	pop rdx
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax'
}

struct IR_SYSCALL5 {pos FilePos}
fn (i IR_SYSCALL5) gen(mut ctx Function) string {
	return
'	${annotate('pop r8','; ~ INTRINSIC - SYSCALL5')}
	pop r10
	pop rdx
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax'
}

struct IR_SYSCALL6 {pos FilePos}
fn (i IR_SYSCALL6) gen(mut ctx Function) string {
	return
'	${annotate('pop r9','; ~ INTRINSIC - SYSCALL6')}
	pop r8
	pop r10
	pop rdx
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax'
}