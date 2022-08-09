[BITS 64]
global _start
section .rodata
	lit_00001: db 'stas panic: files/brainfuck.stas:25:29', 10, '       msg: Assertation failed.', 10, 0
	lit_00002: db 'stas panic: files/brainfuck.stas:48:32', 10, '       msg: Assertation failed.', 10, 0
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
	sub rsp, 21048
	mov rax, rbp
	sub rax, 1048
	push rax
	push qword 1024
	pop rsi
	pop rdi
	call read_stdin
	mov rax, rbp
	sub rax, 21048
	push rax
	push qword 0
	push qword 20000
	pop rdx
	pop rsi
	pop rdi
	call memset
	mov qword [rbp - 8], 0
	mov qword [rbp - 16], 0
	mov qword [rbp - 24], 0
	mov rax, rbp
	sub rax, 1048
	push rax
	pop qword [rbp - 24]
main_while_00003_begin:
	push qword [rbp - 24]
	xor rax,rax
	pop rdi
	mov al, byte [rdi]
	push rax
	pop rdi
	push rdi
	push rdi
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setne al
	push rax
	pop rax
	test al, al
	je main_while_00003_end
main_while_00003:
	pop rbx
	push qword 62
	pop rax
	cmp rax, rbx
	je main_match_00004_0
	push qword 60
	pop rax
	cmp rax, rbx
	je main_match_00004_1
	push qword 43
	pop rax
	cmp rax, rbx
	je main_match_00004_2
	push qword 45
	pop rax
	cmp rax, rbx
	je main_match_00004_3
	push qword 46
	pop rax
	cmp rax, rbx
	je main_match_00004_4
	push qword 44
	pop rax
	cmp rax, rbx
	je main_match_00004_5
	push qword 91
	pop rax
	cmp rax, rbx
	je main_match_00004_6
	push qword 93
	pop rax
	cmp rax, rbx
	je main_match_00004_7
	jmp main_match_00004_end
main_match_00004_0:
	push qword [rbp - 8]
	pop rdi
	inc rdi
	push rdi
	pop qword [rbp - 8]
	jmp main_match_00004_end
main_match_00004_1:
	push qword [rbp - 8]
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setne al
	push rax
	pop rax
	test al, al
	jne .next_00005
	mov rdi, lit_00001
	mov rsi, 71
	jmp _fatal
.next_00005:
	push qword [rbp - 8]
	pop rdi
	dec rdi
	push rdi
	pop qword [rbp - 8]
	jmp main_match_00004_end
main_match_00004_2:
	mov rax, rbp
	sub rax, 21048
	push rax
	push qword [rbp - 8]
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	pop rdi
	push rdi
	push rdi
	xor rax,rax
	pop rdi
	mov al, byte [rdi]
	push rax
	pop rdi
	inc rdi
	push rdi
	pop rax
	pop rdi
	mov byte [rdi], al
	jmp main_match_00004_end
main_match_00004_3:
	mov rax, rbp
	sub rax, 21048
	push rax
	push qword [rbp - 8]
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	pop rdi
	push rdi
	push rdi
	xor rax,rax
	pop rdi
	mov al, byte [rdi]
	push rax
	pop rdi
	dec rdi
	push rdi
	pop rax
	pop rdi
	mov byte [rdi], al
	jmp main_match_00004_end
main_match_00004_4:
	mov rax, rbp
	sub rax, 21048
	push rax
	push qword [rbp - 8]
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	push qword 1
	pop rsi
	pop rdi
	call write
	jmp main_match_00004_end
main_match_00004_5:
	mov rax, rbp
	sub rax, 21048
	push rax
	push qword [rbp - 8]
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	call getch
	push rax
	pop rax
	pop rdi
	mov byte [rdi], al
	jmp main_match_00004_end
main_match_00004_6:
	push qword [rbp - 24]
	pop qword [rbp - 16]
	jmp main_match_00004_end
main_match_00004_7:
	push qword [rbp - 16]
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setne al
	push rax
	pop rax
	test al, al
	jne .next_00006
	mov rdi, lit_00002
	mov rsi, 71
	jmp _fatal
.next_00006:
main_if_00007_begin:
	mov rax, rbp
	sub rax, 21048
	push rax
	push qword [rbp - 8]
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	xor rax,rax
	pop rdi
	mov al, byte [rdi]
	push rax
	push qword 0
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setne al
	push rax
	pop rax
	test al, al
	je main_if_00007_end
main_if_00007_body:
	push qword [rbp - 16]
	pop qword [rbp - 24]
main_if_00007_end:
	jmp main_match_00004_end
main_match_00004_end:
	push qword [rbp - 24]
	pop rdi
	inc rdi
	push rdi
	pop qword [rbp - 24]
	jmp main_while_00003_begin
main_while_00003_end:
	call endl
	leave
	ret
read_stdin:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi
	mov qword [rbp - 16], rsi
	sub rsp, 16
	push qword 0
	push qword 0
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
memset:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi
	mov qword [rbp - 16], rsi
	mov qword [rbp - 24], rdx
	sub rsp, 24
	push qword [rbp - 8]
memset_while_00008_begin:
	pop rdi
	push rdi
	push rdi
	push qword [rbp - 8]
	push qword [rbp - 24]
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	pop rsi
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setb al
	push rax
	pop rax
	test al, al
	je memset_while_00008_end
memset_while_00008:
	pop rdi
	push rdi
	push rdi
	push qword [rbp - 16]
	pop rax
	pop rdi
	mov byte [rdi], al
	pop rdi
	inc rdi
	push rdi
	jmp memset_while_00008_begin
memset_while_00008_end:
	add rsp, 8
	leave
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
getch:
	push rbp
	mov rbp, rsp
	sub rsp, 1
	push qword 0
	push qword 0
	mov rax, rbp
	sub rax, 1
	push rax
	push qword 1
	pop rdx
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax
	add rsp, 8
	mov rax, rbp
	sub rax, 1
	push rax
	xor rax,rax
	pop rdi
	mov al, byte [rdi]
	push rax
	pop rax
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
