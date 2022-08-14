format ELF64 executable
entry _start
segment readable writeable
	lit_00000: db '', 10, 0
segment readable executable
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
	sub rsp, 8
	mov qword [rbp - 8], 100
	mov rax, rbp
	sub rax, 8
	push rax
	pop rdi
	push qword [rdi]
	pop rdi
	inc rdi
	push rdi
	mov rax, rbp
	sub rax, 8
	push rax
	pop rdi
	pop rsi
	push rdi
	push rsi
	pop rax
	pop rdi
	mov qword [rdi], rax
	push qword [rbp - 8]
	pop rdi
	call uputln
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
uput:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi
	sub rsp, 44
	mov qword [rbp - 36], 0
	mov qword [rbp - 44], 0
uput_if_00001_begin:
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
	je uput_if_00001_end
uput_if_00001_body:
	mov rax, rbp
	sub rax, 28
	push rax
	push qword 48
	pop rax
	pop rdi
	mov byte [rdi], al
	mov rax, rbp
	sub rax, 28
	push rax
	push qword 1
	pop rsi
	pop rdi
	call write
	pop rax
	leave
	ret
uput_if_00001_end:
	mov rax, rbp
	sub rax, 28
	push rax
	push qword 20
	pop rdi
	pop rsi
	add rsi, rdi
	push rsi
	pop qword [rbp - 36]
	push qword [rbp - 8]
uput_while_00002_begin:
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
	je uput_while_00002_end
uput_while_00002:
	push qword [rbp - 36]
	pop rdi
	dec rdi
	push rdi
	pop qword [rbp - 36]
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
	push qword [rbp - 36]
	pop rdi
	pop rsi
	push rdi
	push rsi
	pop rax
	pop rdi
	mov byte [rdi], al
	push qword [rbp - 44]
	pop rdi
	inc rdi
	push rdi
	pop qword [rbp - 44]
	jmp uput_while_00002_begin
uput_while_00002_end:
	add rsp, 8
	push qword [rbp - 36]
	push qword [rbp - 44]
	pop rsi
	pop rdi
	call write
	leave
	ret
endl:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	push qword lit_00000
	push qword 1
	pop rsi
	pop rdi
	call write
	leave
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
