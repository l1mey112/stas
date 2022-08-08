[BITS 64]
global _start
section .rodata
	lit_00001: db 'stas panic: files/main.stas:4:7', 10, '       msg: Assertation failed.', 10, 0
section .text
_fatal:
	mov rdx, rsi
	mov rsi, rdi
	mov rax, 1
	mov rdi, 2
	syscall
	mov rdi, 1
	jmp _exit
_start:
	call main
	xor rdi, rdi
_exit:
	mov rax, 60
	syscall
main:
	push rbp
	mov rbp, rsp
	push qword 1
	pop rax
	test al, al
	jne .next_00002
	mov rdi, lit_00001
	mov rsi, 64
	jmp _fatal
.next_00002:
	pop rbp
	ret
