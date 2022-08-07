[BITS 64]
global _start
section .rodata
	lit_00000: db '', 10, 0
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
main_while_00001_begin:
	pop rdi
	push rdi
	push rdi
	pop rdi
	push rdi
	push rdi
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	seta al
	push rax
	pop rax
	test al, al
	je main_while_00001_end
main_while_00001:
	pop rdi
	call uputln
	pop rdi
	dec rdi
	push rdi
	jmp main_while_00001_begin
main_while_00001_end:
	add rsp, 8
	pop rbp
	ret
write:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi
	mov qword [rbp - 16], rsi
	sub rsp, 16
	push qword 1
	push qword 1
	push qword [rbp - 8]
	push qword [rbp - 16]
	pop rdx
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax
	add rsp, 8
	leave
	ret
uput:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi
	sub rsp, 44
	mov qword [rbp - 16], 0
	mov qword [rbp - 24], 0
uput_if_00002_begin:
	push qword [rbp - 8]
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	sete al
	push rax
	pop rax
	test al, al
	je uput_if_00002_end
uput_if_00002_body:
	mov rax, rbp
	sub rax, 44
	push rax
	push qword 48
	pop rax
	pop rdi
	mov byte [rdi], al
	mov rax, rbp
	sub rax, 44
	push rax
	push qword 1
	pop rsi
	pop rdi
	call write
	pop rax
	leave
	ret
uput_if_00002_end:
	mov rax, rbp
	sub rax, 44
	push rax
	push qword 20
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	pop qword [rbp - 16]
	push qword [rbp - 8]
uput_while_00003_begin:
	pop rdi
	push rdi
	push rdi
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	seta al
	push rax
	pop rax
	test al, al
	je uput_while_00003_end
uput_while_00003:
	push qword [rbp - 16]
	pop rdi
	dec rdi
	push rdi
	pop qword [rbp - 16]
	push qword 10
	pop rdi
	pop rax
	xor rdx, rdx
	div rdi
	push rax
	push rdx
	push qword 48
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	push qword [rbp - 16]
	pop rdi
	pop rsi
	push rdi
	push rsi
	pop rax
	pop rdi
	mov byte [rdi], al
	push qword [rbp - 24]
	pop rdi
	inc rdi
	push rdi
	pop qword [rbp - 24]
	jmp uput_while_00003_begin
uput_while_00003_end:
	add rsp, 8
	push qword [rbp - 16]
	push qword [rbp - 24]
	pop rsi
	pop rdi
	call write
	leave
	ret
endl:
	push rbp
	mov rbp, rsp
	push qword lit_00000
	push qword 1
	pop rsi
	pop rdi
	call write
	pop rbp
	ret
uputln:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi
	sub rsp, 8
	push qword [rbp - 8]
	pop rdi
	call uput
	call endl
	leave
	ret
