use64
format ELF64 executable
segment readable executable
entry _start
_start:
	mov [_arg_p], rsp
	mov qword [_rs_p], _rs_top
	mov rbp, rsp
	mov rsp, [_rs_p]
	call main
	xor rdi, rdi
_exit:
	mov eax, 60
	syscall
	nop
itoa:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .11
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 48
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.11:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 21
	add rdi, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rdi
.13:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .14
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, 10
	pop rax
	xor rdx, rdx
	div rbx
	mov rbx, 48
	add rdx, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov byte [rdi], dl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rdi
	push rax
	jmp .13
.14:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
fputu:
	sub rsp, 44
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .15
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 48
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 44
	ret
.15:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
	mov rsi, qword [_rs_p]
	add rsi, 8
	mov rdi, 20
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 28], rsi
.17:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .18
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 28]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 28], rsi
	mov rbx, 10
	pop rax
	xor rdx, rdx
	div rbx
	mov rbx, 48
	add rdx, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 28]
	mov byte [rdi], dl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 36]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rdi
	push rax
	jmp .17
.18:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 28]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 36]
	mov rbx, 1
	mov rax, rbx
	mov rdx, r8
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 44
	ret
putc:
	sub rsp, 1
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 1
	ret
eputc:
	sub rsp, 1
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 1
	ret
fd_stat_size:
	sub rsp, 144
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, 5
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .22
	mov rbx, _s38
	mov rsi, 42
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.22:
	mov rbx, qword [_rs_p]
	mov rsi, 48
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
fd_open_fp_readonly:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	mov rbx, 0
	mov r9, 0
	mov r10, 2
	mov rax, r10
	mov rdx, r9
	mov r9, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, r8
	syscall
	mov rsi, rax
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rax
	push r8
	pop rbx
	test rbx, rbx
	jz .24
	mov rbx, _s36
	mov rsi, 28
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s37
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.24:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
fd_new_file_for_writing:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	mov rbx, 1
	mov r9, 64
	or rbx, r9
	mov r9, 512
	or rbx, r9
	mov r9, 448
	mov r10, 2
	mov rax, r10
	mov rdx, r9
	mov r9, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, r8
	syscall
	mov rsi, rax
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rax
	push r8
	pop rbx
	test rbx, rbx
	jz .26
	mov rbx, _s386
	mov rsi, 28
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s387
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.26:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
open_and_mmap_fp:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_open_fp_readonly
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_stat_size
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	seta r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .28
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
	mov rsi, 1
	mov r8, 2
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 16]
	mov r9, 0
	mov r11, 9
	mov rax, r11
	mov r11, r9
	mov r9, r11
	mov r11, r8
	mov r8, r10
	mov r10, r11
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rax
	push rdi
	pop rbx
	test rbx, rbx
	jz .30
	mov rbx, _s39
	mov rsi, 28
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.30:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	jmp .32
.28:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.32:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 3
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .33
	mov rbx, _s41
	mov rsi, 39
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.33:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
child_execve_and_shut_up:
	sub rsp, 48
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	pop rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	pop r8
	mov qword [rdi + 16], r8
	mov rdi, 57
	mov rax, rdi
	syscall
	mov rdi, rax
	mov r9, 0
	xor r10, r10
	cmp rdi, r9
	sete r10b
	push rax
	push r10
	pop rbx
	test rbx, rbx
	jz .35
	mov rbx, qword [_rs_p]
	add rbx, 24
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, 18446744073709551516
	mov rsi, _s722
	mov rdi, 9
	mov rdi, 0
	mov r8, 0
	mov r9, 257
	mov rax, r9
	mov r10, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rax
	push rdi
	pop rbx
	test rbx, rbx
	jz .37
	mov rbx, _s723
	mov rsi, 32
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.37:
	mov rbx, 1
	mov rsi, 33
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .39
	mov rbx, _s724
	mov rsi, 42
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.39:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	add rbx, 24
	mov r8, 59
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .41
	mov rbx, _s725
	mov rsi, 29
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.41:
	mov rbx, 0
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .36
.35:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setg r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .44
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	pop rbx
	test rbx, rbx
	jz .45
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.47:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	pop rbx
	test rbx, rbx
	jz .48
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	add rsi, 40
	mov rdi, 0
	mov r8, 0
	mov r9, 61
	mov rax, r9
	mov r10, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .49
	mov rbx, _s726
	mov rsi, 33
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.49:
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 127
	and rsi, rdi
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .51
	pop rbx
	mov rsi, rbx
	mov rdi, 65280
	and rsi, rdi
	mov rdi, 8
	mov rcx, rdi
	shr rsi, cl
	mov rdi, rsi
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	setg r9b
	push rbx
	push rsi
	push r9
	pop rbx
	test rbx, rbx
	jz .53
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	mov rax, rdi
	mov rdi, rsi
	syscall
	push rbx
.53:
	add rsp, 8
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
	jmp .52
.51:
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	and rsi, rdi
	mov rdi, 1
	add rsi, rdi
	mov rdi, 1
	mov rcx, rdi
	shr rsi, cl
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setg r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .56
	mov rbx, _s727
	mov rsi, 46
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	and rsi, rdi
	mov rdi, 2
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 255
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
	jmp .52
.56:
	pop rbx
	mov rsi, rbx
	mov rdi, 255
	and rsi, rdi
	mov rdi, 127
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .58
	jmp .52
.58:
	pop rbx
	mov rsi, rbx
	mov rdi, 65535
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .60
	jmp .52
.60:
	mov rbx, 0
	test rbx, rbx
	jnz .1614
	mov eax, 1
	mov edi, 2
	mov rsi, _s728
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1614:
.61:
.52:
	add rsp, 8
	jmp .47
.48:
.45:
	jmp .36
.44:
	mov rbx, _s729
	mov rsi, 27
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.62:
.36:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 48
	ret
memeq:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.63:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .64
	pop rbx
	pop rsi
	pop rdi
	mov r8, rsi
	xor r9, r9
	mov r9b, [r8]
	mov r8, rdi
	xor r10, r10
	mov r10b, [r8]
	inc rdi
	inc rsi
	xor r8, r8
	cmp r9, r10
	setne r8b
	push rbx
	push rsi
	push rdi
	push r8
	pop rbx
	test rbx, rbx
	jz .65
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.65:
	pop rbx
	pop rsi
	pop rdi
	inc rdi
	push rbx
	push rsi
	push rdi
	jmp .63
.64:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
streq:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 16]
	mov rsi, qword [rsp + 0]
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .67
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.67:
	add rsp, 8
	pop rbx
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memeq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memcpy:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rdi
	push rbx
.69:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .70
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	xor r9, r9
	mov r9b, [r8]
	mov r8, rsi
	mov byte [r8], r9b
	inc rdi
	inc rsi
	dec rbx
	push rdi
	push rsi
	push rbx
	jmp .69
.70:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memset:
	mov [_rs_p], rsp
	mov rsp, rbp
.71:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .72
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	mov r9, rsi
	mov byte [r8], r9b
	inc rdi
	dec rbx
	push rdi
	push rsi
	push rbx
	jmp .71
.72:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
strlen:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
.73:
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .74
	pop rbx
	inc rbx
	push rbx
	jmp .73
.74:
	pop rbx
	pop rsi
	sub rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
args_a_b:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .78
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.78:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	mov rbx, qword [_arg_p]
	add rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call strlen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
str_to_num_unsafe:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, 0
	mov r8, 0
	push rbx
	push r8
.80:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .81
	pop rbx
	pop rsi
	mov rdi, 10
	imul rsi, rdi
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	add rdi, r9
	xor r8, r8
	mov r8b, [rdi]
	mov rdi, 48
	sub r8, rdi
	add rsi, r8
	inc rbx
	push rsi
	push rbx
	jmp .80
.81:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
new_string_view:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword _gstring_buffer.len
	mov r8, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 0]
	mov rbx, 8
	mov r10, 1
	add rbx, r10
	add r9, rbx
	add r8, r9
	mov rbx, r8
	mov r9, 262144
	xor r10, r10
	cmp rbx, r9
	setb r10b
	test r10, r10
	jnz .1615
	mov eax, 1
	mov edi, 2
	mov rsi, _s35
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1615:
	mov rbx, qword _gstring_buffer
	mov r9, qword _gstring_buffer.len
	mov r10, qword [r9 + 0]
	add rbx, r10
	mov r9, rbx
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 0]
	mov qword [r9], r11
	mov r9, rbx
	mov r10, 8
	add r9, r10
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 8]
	mov r10, qword [_rs_p]
	mov r12, qword [r10 + 0]
	push r8
	push rbx
	push r9
	push r11
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	mov r8, 1
	add rdi, r8
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, 0
	mov byte [rsi], dil
	pop rsi
	mov rdi, qword _gstring_buffer.len
	mov qword [rdi + 0], rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
new_empty_string:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gstring_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	mov rdi, 1
	add rbx, rdi
	add rsi, rbx
	mov rbx, 262144
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1616
	mov eax, 1
	mov edi, 2
	mov rsi, _s35
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1616:
	mov rbx, qword _gstring_buffer
	mov rsi, qword _gstring_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, rbx
	mov rdi, 0
	mov qword [rsi], rdi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rdi, 0
	mov byte [rsi], dil
	mov rsi, qword _gstring_buffer.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	mov r8, 1
	add rsi, r8
	add rdi, rsi
	mov rsi, qword _gstring_buffer.len
	mov qword [rsi + 0], rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
push_char:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gstring_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 262144
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1617
	mov eax, 1
	mov edi, 2
	mov rsi, _s35
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1617:
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	mov r9, [r9]
	add r8, r9
	mov byte [r8], bl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov rbx, [rbx]
	inc rbx
	mov qword [rdi], rbx
	mov rbx, qword _gstring_buffer.len
	mov rdi, qword [rbx + 0]
	inc rdi
	mov rbx, qword _gstring_buffer.len
	mov qword [rbx + 0], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
push_nul:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gstring_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 262144
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1618
	mov eax, 1
	mov edi, 2
	mov rsi, _s35
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1618:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword _gstring_buffer.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gstring_buffer.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
push_string_view:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .82
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.82:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gstring_buffer.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, 262144
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1619
	mov eax, 1
	mov edi, 2
	mov rsi, _s35
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1619:
	mov rsi, rbx
	mov rdi, qword _gstring_buffer.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, qword _gstring_buffer.len
	mov qword [rdi + 0], rsi
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rbx
	mov r8, qword [_rs_p]
	pop r9
	mov qword [r8 + 8], r9
	mov r8, qword [_rs_p]
	pop r10
	mov qword [r8 + 16], r10
	mov r8, qword [_rs_p]
	mov r11, qword [r8 + 16]
	mov r8, 8
	add r11, r8
	mov r8, qword [_rs_p]
	mov r12, qword [r8 + 16]
	mov r12, [r12]
	add r11, r12
	mov r8, r11
	mov r12, qword [_rs_p]
	mov r13, qword [r12 + 8]
	mov r12, qword [_rs_p]
	mov r14, qword [r12 + 0]
	push r11
	push r8
	push r13
	push r14
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	add rdi, r8
	mov qword [rsi], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
string_buffer.generic_append_u64:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gstring_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, 262144
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1620
	mov eax, 1
	mov edi, 2
	mov rsi, _s35
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1620:
	mov rbx, qword _gstring_buffer
	mov rsi, qword _gstring_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, qword _gstring_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, qword _gstring_buffer.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Tok.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .84
	mov rbx, _s123
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.84:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .87
	mov rbx, _s124
	mov rsi, 10
	push rbx
	push rsi
	jmp .85
.87:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .89
	mov rbx, _s125
	mov rsi, 10
	push rbx
	push rsi
	jmp .85
.89:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .91
	mov rbx, _s126
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.91:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .93
	mov rbx, _s127
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.93:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .95
	mov rbx, _s128
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.95:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .97
	mov rbx, _s129
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.97:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .99
	mov rbx, _s130
	mov rsi, 11
	push rbx
	push rsi
	jmp .85
.99:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .101
	mov rbx, _s131
	mov rsi, 5
	push rbx
	push rsi
	jmp .85
.101:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .103
	mov rbx, _s132
	mov rsi, 6
	push rbx
	push rsi
	jmp .85
.103:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .105
	mov rbx, _s133
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.105:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .107
	mov rbx, _s134
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.107:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .109
	mov rbx, _s135
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.109:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .111
	mov rbx, _s136
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.111:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .113
	mov rbx, _s137
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.113:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .115
	mov rbx, _s138
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.115:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .117
	mov rbx, _s139
	mov rsi, 5
	push rbx
	push rsi
	jmp .85
.117:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .119
	mov rbx, _s140
	mov rsi, 5
	push rbx
	push rsi
	jmp .85
.119:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .121
	mov rbx, _s141
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.121:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .123
	mov rbx, _s142
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.123:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .125
	mov rbx, _s143
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.125:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .127
	mov rbx, _s144
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.127:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .129
	mov rbx, _s145
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.129:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .131
	mov rbx, _s146
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.131:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .133
	mov rbx, _s147
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.133:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .135
	mov rbx, _s148
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.135:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .137
	mov rbx, _s149
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.137:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .139
	mov rbx, _s150
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.139:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .141
	mov rbx, _s151
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.141:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .143
	mov rbx, _s152
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.143:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .145
	mov rbx, _s153
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.145:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .147
	mov rbx, _s154
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.147:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .149
	mov rbx, _s155
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.149:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .151
	mov rbx, _s156
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.151:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .153
	mov rbx, _s157
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.153:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .155
	mov rbx, _s158
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.155:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .157
	mov rbx, _s159
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.157:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .159
	mov rbx, _s160
	mov rsi, 5
	push rbx
	push rsi
	jmp .85
.159:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .161
	mov rbx, _s161
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.161:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .163
	mov rbx, _s162
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.163:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .165
	mov rbx, _s163
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.165:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .167
	mov rbx, _s164
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.167:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .169
	mov rbx, _s165
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.169:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .171
	mov rbx, _s166
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.171:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .173
	mov rbx, _s167
	mov rsi, 1
	push rbx
	push rsi
	jmp .85
.173:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .175
	mov rbx, _s168
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.175:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .177
	mov rbx, _s169
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.177:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .179
	mov rbx, _s170
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.179:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .181
	mov rbx, _s171
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.181:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .183
	mov rbx, _s172
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.183:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .185
	mov rbx, _s173
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.185:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .187
	mov rbx, _s174
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.187:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .189
	mov rbx, _s175
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.189:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .191
	mov rbx, _s176
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.191:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .193
	mov rbx, _s177
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.193:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .195
	mov rbx, _s178
	mov rsi, 2
	push rbx
	push rsi
	jmp .85
.195:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .197
	mov rbx, _s179
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.197:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .199
	mov rbx, _s180
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.199:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .201
	mov rbx, _s181
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.201:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .203
	mov rbx, _s182
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.203:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .205
	mov rbx, _s183
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.205:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .207
	mov rbx, _s184
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.207:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .209
	mov rbx, _s185
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.209:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .211
	mov rbx, _s186
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.211:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .213
	mov rbx, _s187
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.213:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .215
	mov rbx, _s188
	mov rsi, 8
	push rbx
	push rsi
	jmp .85
.215:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .217
	mov rbx, _s189
	mov rsi, 7
	push rbx
	push rsi
	jmp .85
.217:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .219
	mov rbx, _s190
	mov rsi, 4
	push rbx
	push rsi
	jmp .85
.219:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .221
	mov rbx, _s191
	mov rsi, 3
	push rbx
	push rsi
	jmp .85
.221:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1621
	mov eax, 1
	mov edi, 2
	mov rsi, _s192
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1621:
	push rbx
	push rsi
.222:
.85:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Tok.from_str:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	mov rbx, _s52
	mov r10, 1
	push r8
	push r9
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .223
	mov rbx, 4
	push rbx
	jmp .224
.223:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s53
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .226
	mov rbx, 5
	push rbx
	jmp .224
.226:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s54
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .228
	mov rbx, 6
	push rbx
	jmp .224
.228:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s55
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .230
	mov rbx, 7
	push rbx
	jmp .224
.230:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s56
	mov r8, 11
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .232
	mov rbx, 8
	push rbx
	jmp .224
.232:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s57
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .234
	mov rbx, 9
	push rbx
	jmp .224
.234:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s58
	mov r8, 6
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .236
	mov rbx, 10
	push rbx
	jmp .224
.236:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s59
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .238
	mov rbx, 11
	push rbx
	jmp .224
.238:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s60
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .240
	mov rbx, 12
	push rbx
	jmp .224
.240:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s61
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .242
	mov rbx, 13
	push rbx
	jmp .224
.242:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s62
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .244
	mov rbx, 15
	push rbx
	jmp .224
.244:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s63
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .246
	mov rbx, 16
	push rbx
	jmp .224
.246:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s64
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .248
	mov rbx, 17
	push rbx
	jmp .224
.248:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s65
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .250
	mov rbx, 18
	push rbx
	jmp .224
.250:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s66
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .252
	mov rbx, 19
	push rbx
	jmp .224
.252:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s67
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .254
	mov rbx, 20
	push rbx
	jmp .224
.254:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s68
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .256
	mov rbx, 21
	push rbx
	jmp .224
.256:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s69
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .258
	mov rbx, 22
	push rbx
	jmp .224
.258:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s70
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .260
	mov rbx, 23
	push rbx
	jmp .224
.260:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s71
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .262
	mov rbx, 24
	push rbx
	jmp .224
.262:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s72
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .264
	mov rbx, 25
	push rbx
	jmp .224
.264:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s73
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .266
	mov rbx, 26
	push rbx
	jmp .224
.266:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s74
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .268
	mov rbx, 27
	push rbx
	jmp .224
.268:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s75
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .270
	mov rbx, 28
	push rbx
	jmp .224
.270:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s76
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .272
	mov rbx, 29
	push rbx
	jmp .224
.272:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s77
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .274
	mov rbx, 30
	push rbx
	jmp .224
.274:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s78
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .276
	mov rbx, 31
	push rbx
	jmp .224
.276:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s79
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .278
	mov rbx, 32
	push rbx
	jmp .224
.278:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s80
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .280
	mov rbx, 33
	push rbx
	jmp .224
.280:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s81
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .282
	mov rbx, 70
	push rbx
	jmp .224
.282:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s82
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .284
	mov rbx, 34
	push rbx
	jmp .224
.284:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s83
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .286
	mov rbx, 35
	push rbx
	jmp .224
.286:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s84
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .288
	mov rbx, 36
	push rbx
	jmp .224
.288:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s85
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .290
	mov rbx, 37
	push rbx
	jmp .224
.290:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s86
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .292
	mov rbx, 38
	push rbx
	jmp .224
.292:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s87
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .294
	mov rbx, 39
	push rbx
	jmp .224
.294:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s88
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .296
	mov rbx, 40
	push rbx
	jmp .224
.296:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s89
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .298
	mov rbx, 41
	push rbx
	jmp .224
.298:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s90
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .300
	mov rbx, 42
	push rbx
	jmp .224
.300:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s91
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .302
	mov rbx, 43
	push rbx
	jmp .224
.302:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s92
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .304
	mov rbx, 44
	push rbx
	jmp .224
.304:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s93
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .306
	mov rbx, 45
	push rbx
	jmp .224
.306:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s94
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .308
	mov rbx, 46
	push rbx
	jmp .224
.308:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s95
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .310
	mov rbx, 47
	push rbx
	jmp .224
.310:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s96
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .312
	mov rbx, 48
	push rbx
	jmp .224
.312:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s97
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .314
	mov rbx, 49
	push rbx
	jmp .224
.314:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s98
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .316
	mov rbx, 50
	push rbx
	jmp .224
.316:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s99
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .318
	mov rbx, 51
	push rbx
	jmp .224
.318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s100
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .320
	mov rbx, 52
	push rbx
	jmp .224
.320:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s101
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .322
	mov rbx, 53
	push rbx
	jmp .224
.322:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s102
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .324
	mov rbx, 54
	push rbx
	jmp .224
.324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s103
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .326
	mov rbx, 55
	push rbx
	jmp .224
.326:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s104
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .328
	mov rbx, 56
	push rbx
	jmp .224
.328:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s105
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .330
	mov rbx, 57
	push rbx
	jmp .224
.330:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s106
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .332
	mov rbx, 58
	push rbx
	jmp .224
.332:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s107
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .334
	mov rbx, 59
	push rbx
	jmp .224
.334:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s108
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .336
	mov rbx, 60
	push rbx
	jmp .224
.336:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s109
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .338
	mov rbx, 61
	push rbx
	jmp .224
.338:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s110
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .340
	mov rbx, 62
	push rbx
	jmp .224
.340:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s111
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .342
	mov rbx, 63
	push rbx
	jmp .224
.342:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s112
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .344
	mov rbx, 64
	push rbx
	jmp .224
.344:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s113
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .346
	mov rbx, 65
	push rbx
	jmp .224
.346:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s114
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .348
	mov rbx, 66
	push rbx
	jmp .224
.348:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s115
	mov r8, 7
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .350
	mov rbx, 67
	push rbx
	jmp .224
.350:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s116
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .352
	mov rbx, 68
	push rbx
	jmp .224
.352:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s117
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .354
	mov rbx, 69
	push rbx
	jmp .224
.354:
	mov rbx, 1
	push rbx
.355:
.224:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
token_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gtoken_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _gtoken_stream.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gtoken_stream.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, 32768
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1622
	mov eax, 1
	mov edi, 2
	mov rsi, _s49
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1622:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Token.location_print:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, 1
	mov r9, 1
	mov rax, r9
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	mov rsi, _s120
	mov rdi, 1
	mov r8, 1
	mov r9, 1
	mov rax, r9
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	mov rsi, rbx
	mov esi, [rsi]
	mov rdi, 1
	add rsi, rdi
	mov rdi, 1
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s121
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 4
	pop rsi
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s122
	mov rsi, 2
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
token_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.356:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .357
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1623
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1623:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call putc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 16
	pop rsi
	add rsi, rbx
	mov esi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Tok.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 39
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call putc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .358
	mov rbx, _s193
	mov rsi, 4
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .359
.358:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .361
	mov rbx, _s194
	mov rsi, 4
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 34
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call putc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 34
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call putc
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .359
.361:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .363
	mov rbx, _s195
	mov rsi, 4
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .359
.363:
	add rsp, 8
.364:
.359:
	pop rbx
	inc rbx
	mov rsi, 1
	mov rdi, _s46
	mov r8, 1
	mov r9, 1
	mov rax, r9
	mov rdx, r8
	mov r8, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	push rbx
	jmp .356
.357:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
error.Loc:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s43
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	pop rsi
	mov rdi, 1
	add rsi, rdi
	mov rdi, 1
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s44
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	pop rsi
	add rsi, rbx
	mov rbx, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s45
	mov rsi, 2
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
error.Tok.to_string_view:
	sub rsp, 29
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_empty_string
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 21], rsi
	pop rbx
	pop rdi
	pop r8
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 21]
	mov r9, 27
	push rdi
	push rbx
	push r8
	push r10
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s248
	mov rdi, 3
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, 27
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s249
	mov rdi, 4
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1624
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1624:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 21]
	push rbx
	push r9
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s250
	mov rdi, 1
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov esi, [rsi]
	mov rdi, 1
	add rsi, rdi
	mov rdi, qword [_rs_p]
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call itoa
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	pop rbx
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s251
	mov rdi, 1
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	pop rsi
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call itoa
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	pop rbx
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s252
	mov rdi, 2
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, 27
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s253
	mov rdi, 4
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, 27
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s254
	mov rdi, 4
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	pop rbx
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 29
	ret
is_whitespace:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .365
	mov rbx, 1
	push rbx
	jmp .366
.365:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .368
	mov rbx, 1
	push rbx
	jmp .366
.368:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .370
	mov rbx, 1
	push rbx
	jmp .366
.370:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .372
	mov rbx, 1
	push rbx
	jmp .366
.372:
	mov rbx, 0
	push rbx
.373:
.366:
	pop rbx
	pop rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
stas.scan_file:
	sub rsp, 140
	mov [_rs_p], rsp
	mov rsp, rbp
.432:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov r8, qword [rbx + 0]
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call open_and_mmap_fp
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 24], rdi
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov r8, 0
	mov byte [rbx], r8b
	mov rbx, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 41], rbx
	mov r8, 0
	mov r9, qword [_rs_p]
	mov qword [r9 + 49], r8
	mov r9, 0
	mov r10, qword [_rs_p]
	mov qword [r10 + 57], r9
	mov r10, qword [_rs_p]
	add r10, 65
	mov r11, 0
	mov byte [r10], r11b
.374:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .375
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .376
	jmp .375
.376:
.378:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_whitespace
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .379
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .380
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .382
.380:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.382:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	xor rbx, rbx
	cmp rdi, r8
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .383
	jmp .379
.383:
	jmp .378
.379:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .385
	jmp .375
.385:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 67], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 75], rdi
.387:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_whitespace
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .388
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .389
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	mov rsi, 57
	xor rdi, rdi
	cmp rbx, rsi
	setbe dil
	and r8, rdi
	mov rbx, 1
	xor rsi, rsi
	cmp r8, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .391
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
.391:
.389:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, 34
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	or r8, rdi
	push r8
	pop rbx
	test rbx, rbx
	jz .393
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 83], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 91], rdi
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 57]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 99], r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_empty_string
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 107], rsi
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rdi, 0
	mov byte [rbx], dil
.395:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .396
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 32]
	xor rbx, rbx
	cmp r8, r9
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .397
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 91]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 99]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s42
	mov r9, 27
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.397:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 116], rbx
	mov rsi, qword [_rs_p]
	add rsi, 115
	xor rdi, rdi
	mov dil, [rsi]
	push rdi
	pop rbx
	test rbx, rbx
	jz .399
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .401
	mov rbx, 39
	push rbx
	jmp .402
.401:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .404
	mov rbx, 34
	push rbx
	jmp .402
.404:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .406
	mov rbx, 92
	push rbx
	jmp .402
.406:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .408
	mov rbx, 7
	push rbx
	jmp .402
.408:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .410
	mov rbx, 8
	push rbx
	jmp .402
.410:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .412
	mov rbx, 12
	push rbx
	jmp .402
.412:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .414
	mov rbx, 10
	push rbx
	jmp .402
.414:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .416
	mov rbx, 13
	push rbx
	jmp .402
.416:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .418
	mov rbx, 9
	push rbx
	jmp .402
.418:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .420
	mov rbx, 11
	push rbx
	jmp .402
.420:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s47
	mov r9, 31
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.421:
.402:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 107]
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rsi, 0
	mov byte [rbx], sil
	jmp .395
.399:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 83]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .422
	jmp .396
.422:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .424
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rsi, 1
	mov byte [rbx], sil
	jmp .395
	jmp .425
.424:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, 10
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .427
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	inc rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 49], rdi
.427:
.425:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 107]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 116]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .395
.396:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 107]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 115
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .428
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s48
	mov r9, 26
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.428:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .430
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 107]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 0
	mov byte [rbx], sil
	jmp .433
.430:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 91]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 99]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 2
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 107]
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.433:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rdi
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov r8, 1
	mov byte [rbx], r8b
	jmp .388
	jmp .394
.393:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 59
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .435
.436:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 10
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .437
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	xor rbx, rbx
	cmp rdi, r8
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .438
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 140
	ret
.438:
	jmp .436
.437:
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 1
	mov byte [rbx], sil
	jmp .388
.435:
.394:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 32]
	xor rbx, rbx
	cmp r8, r9
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .440
	jmp .388
.440:
	jmp .387
.388:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .442
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .374
.442:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 67]
	add rsi, rdi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 67]
	sub rdi, r8
	mov rbx, qword [_rs_p]
	mov qword [rbx + 124], rdi
	mov qword [rbx + 132], rsi
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor r8, r8
	mov r8b, [rbx]
	push r8
	pop rbx
	test rbx, rbx
	jz .444
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s50
	mov r9, 31
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.444:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .446
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 3
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 132]
	mov r11, qword [r9 + 124]
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call str_to_num_unsafe
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .448
.446:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 132]
	mov rdi, qword [rbx + 124]
	mov rbx, _s51
	mov r8, 7
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .449
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .374
.449:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 132]
	mov r10, qword [rbx + 124]
	push rsi
	push rdi
	push r8
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Tok.from_str
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .451
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 132]
	mov rdi, qword [rbx + 124]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .453
.451:
	mov rbx, 0
	push rbx
.453:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.448:
	jmp .374
.375:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .454
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s118
	mov r9, 43
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.454:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 140
	ret
Inst.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .456
	mov rbx, _s316
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.456:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .459
	mov rbx, _s317
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.459:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .461
	mov rbx, _s318
	mov rsi, 15
	push rbx
	push rsi
	jmp .457
.461:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .463
	mov rbx, _s319
	mov rsi, 19
	push rbx
	push rsi
	jmp .457
.463:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .465
	mov rbx, _s320
	mov rsi, 20
	push rbx
	push rsi
	jmp .457
.465:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .467
	mov rbx, _s321
	mov rsi, 20
	push rbx
	push rsi
	jmp .457
.467:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .469
	mov rbx, _s322
	mov rsi, 20
	push rbx
	push rsi
	jmp .457
.469:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .471
	mov rbx, _s323
	mov rsi, 21
	push rbx
	push rsi
	jmp .457
.471:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .473
	mov rbx, _s324
	mov rsi, 9
	push rbx
	push rsi
	jmp .457
.473:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .475
	mov rbx, _s325
	mov rsi, 9
	push rbx
	push rsi
	jmp .457
.475:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .477
	mov rbx, _s326
	mov rsi, 11
	push rbx
	push rsi
	jmp .457
.477:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .479
	mov rbx, _s327
	mov rsi, 6
	push rbx
	push rsi
	jmp .457
.479:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .481
	mov rbx, _s328
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.481:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .483
	mov rbx, _s329
	mov rsi, 10
	push rbx
	push rsi
	jmp .457
.483:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .485
	mov rbx, _s330
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.485:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .487
	mov rbx, _s331
	mov rsi, 7
	push rbx
	push rsi
	jmp .457
.487:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .489
	mov rbx, _s332
	mov rsi, 6
	push rbx
	push rsi
	jmp .457
.489:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .491
	mov rbx, _s333
	mov rsi, 15
	push rbx
	push rsi
	jmp .457
.491:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .493
	mov rbx, _s334
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.493:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .495
	mov rbx, _s335
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.495:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .497
	mov rbx, _s336
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.497:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .499
	mov rbx, _s337
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.499:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .501
	mov rbx, _s338
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.501:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .503
	mov rbx, _s339
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.503:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .505
	mov rbx, _s340
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.505:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .507
	mov rbx, _s341
	mov rsi, 6
	push rbx
	push rsi
	jmp .457
.507:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .509
	mov rbx, _s342
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.509:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .511
	mov rbx, _s343
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.511:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .513
	mov rbx, _s344
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.513:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .515
	mov rbx, _s345
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.515:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .517
	mov rbx, _s346
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.517:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .519
	mov rbx, _s347
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.519:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .521
	mov rbx, _s348
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.521:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .523
	mov rbx, _s349
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.523:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .525
	mov rbx, _s350
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.525:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .527
	mov rbx, _s351
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.527:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .529
	mov rbx, _s352
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.529:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .531
	mov rbx, _s353
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.531:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .533
	mov rbx, _s354
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.533:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .535
	mov rbx, _s355
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.535:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .537
	mov rbx, _s356
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.537:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .539
	mov rbx, _s357
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.539:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .541
	mov rbx, _s358
	mov rsi, 2
	push rbx
	push rsi
	jmp .457
.541:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .543
	mov rbx, _s359
	mov rsi, 2
	push rbx
	push rsi
	jmp .457
.543:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .545
	mov rbx, _s360
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.545:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .547
	mov rbx, _s361
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.547:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .549
	mov rbx, _s362
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.549:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .551
	mov rbx, _s363
	mov rsi, 4
	push rbx
	push rsi
	jmp .457
.551:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .553
	mov rbx, _s364
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.553:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .555
	mov rbx, _s365
	mov rsi, 5
	push rbx
	push rsi
	jmp .457
.555:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .557
	mov rbx, _s366
	mov rsi, 2
	push rbx
	push rsi
	jmp .457
.557:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .559
	mov rbx, _s367
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.559:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .561
	mov rbx, _s368
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.561:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .563
	mov rbx, _s369
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.563:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .565
	mov rbx, _s370
	mov rsi, 2
	push rbx
	push rsi
	jmp .457
.565:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .567
	mov rbx, _s371
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.567:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .569
	mov rbx, _s372
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.569:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .571
	mov rbx, _s373
	mov rsi, 3
	push rbx
	push rsi
	jmp .457
.571:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .573
	mov rbx, _s374
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.573:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .575
	mov rbx, _s375
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.575:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .577
	mov rbx, _s376
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.577:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .579
	mov rbx, _s377
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.579:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .581
	mov rbx, _s378
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.581:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .583
	mov rbx, _s379
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.583:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .585
	mov rbx, _s380
	mov rsi, 8
	push rbx
	push rsi
	jmp .457
.585:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1625
	mov eax, 1
	mov edi, 2
	mov rsi, _s381
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.1625:
	push rbx
	push rsi
.586:
.457:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gir_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _gir_stream.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gir_stream.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, 16384
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1626
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1626:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s313
	mov rsi, 17
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
.587:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .588
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1627
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1627:
	mov rdi, 16
	imul rsi, rdi
	mov rdi, qword _gir_stream
	add rsi, rdi
	mov rdi, rsi
	mov edi, [rdi]
	mov r8, 1
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s314
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, 1
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s315
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 4
	pop rsi
	add rsi, rbx
	mov esi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Inst.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	pop rbx
	inc rbx
	push rbx
	jmp .587
.588:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gvar_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _gvar_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gvar_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gvar_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1628
	mov eax, 1
	mov edi, 2
	mov rsi, _s261
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1628:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
scope_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gscope_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 24
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gscope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gscope_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1629
	mov eax, 1
	mov edi, 2
	mov rsi, _s276
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1629:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
functions_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfunctions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 29
	add rdi, r8
	mov byte [rdi], bl
	pop rbx
	mov rdi, rsi
	mov r8, 28
	add rdi, r8
	mov byte [rdi], bl
	pop rbx
	mov rdi, rsi
	mov r8, 24
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _gfunctions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, 30
	add rsi, rbx
	mov rbx, 4294967295
	mov dword [rsi], ebx
	mov rbx, qword _gfunctions.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gfunctions.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1630
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1630:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
toplevel_constants_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gtoplevel_constants
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov qword [rsi], rbx
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gtoplevel_constants.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1024
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1631
	mov eax, 1
	mov edi, 2
	mov rsi, _s204
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1631:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
global_var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gglobal_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _gglobal_var_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gglobal_var_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1632
	mov eax, 1
	mov edi, 2
	mov rsi, _s228
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1632:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1633
	mov eax, 1
	mov edi, 2
	mov rsi, _s232
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1633:
	mov rbx, qword _gconst_stack
	mov rsi, qword _gconst_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1634
	mov eax, 1
	mov edi, 2
	mov rsi, _s234
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1634:
	mov rbx, qword _gconst_stack
	mov rsi, qword _gconst_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top_e:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1635
	mov eax, 1
	mov edi, 2
	mov rsi, _s233
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1635:
	mov rbx, qword _gconst_stack
	mov rsi, qword _gconst_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
eval_one_inst:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1636
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1636:
	mov rdi, 16
	imul rsi, rdi
	mov rdi, qword _gir_stream
	add rsi, rdi
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, qword _gir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1637
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1637:
	mov rdi, 16
	imul rbx, rdi
	mov rdi, qword _gir_stream
	add rbx, rdi
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov rdi, 1
	mov r8, qword [_rs_p]
	mov qword [r8 + 16], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r8, 2
	xor r10, r10
	cmp r9, r8
	sete r10b
	push r10
	pop rbx
	test rbx, rbx
	jz .589
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.589:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 24
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .592
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .590
.592:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 25
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .594
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov qword [rbx], rsi
	jmp .590
.594:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 31
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .596
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov qword [rbx], rsi
	jmp .590
.596:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 34
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .598
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.598:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 39
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .600
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	jmp .590
.600:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 19
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .602
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	add rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.602:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 20
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .604
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	sub rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.604:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 21
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .606
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	imul rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.606:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 22
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .608
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rax, rdi
	xor rdx, rdx
	div r8
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.608:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 23
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .610
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rax, rdi
	xor rdx, rdx
	div r8
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.610:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 26
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .612
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rax, rdi
	xor rdx, rdx
	div r8
	push rdx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.612:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 27
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .614
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rcx, r8
	shr rdi, cl
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.614:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 28
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .616
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rcx, r8
	shl rdi, cl
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.616:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 29
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .618
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	and rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.618:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 30
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .620
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	or rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.620:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 32
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .622
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.622:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 33
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .624
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.624:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 35
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .626
	mov rbx, qword _gconst_stack
	mov rsi, qword _gconst_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 2
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.626:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 40
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .628
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.628:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 41
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .630
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setne r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.630:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 42
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .632
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	seta r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.632:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 43
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .634
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setb r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.634:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 44
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .636
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setae r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.636:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 45
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .638
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setbe r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.638:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .640
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setg r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.640:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 47
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .642
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setl r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.642:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 48
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .644
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setge r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.644:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 49
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .646
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setle r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.646:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 37
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .648
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	pop r9
	push r8
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.648:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 36
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .650
	mov rbx, qword _gconst_stack
	mov rsi, qword _gconst_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 3
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.650:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 38
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .652
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	pop r9
	pop r10
	push r9
	push r8
	push rdi
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .590
.652:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.653:
.590:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
error_st.Tok:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	mov r8, 27
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1638
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1638:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .654
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.656:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .657
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gsp.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1639
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1639:
	mov rdi, 4
	imul rsi, rdi
	mov rdi, qword _gsp
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, _s239
	mov r8, 9
	mov r9, 27
	push rbx
	push rdi
	push r8
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s240
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s241
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1640
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1640:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s242
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s243
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .658
	jmp .657
.658:
	pop rbx
	dec rbx
	push rbx
	jmp .656
.657:
	add rsp, 8
.654:
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
sp_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1641
	mov eax, 1
	mov edi, 2
	mov rsi, _s222
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1641:
	mov rbx, qword _gsp
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 4
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov dword [rbx], esi
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
sp_push_p:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, 0
	push rbx
.660:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .661
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .660
.661:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
sp_assert:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword _gsp.len
	mov r8, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 8]
	xor rbx, rbx
	cmp r8, r9
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .662
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s258
	mov rdi, 42
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.662:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	sub rsi, rdi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, qword _gpos
	mov r9, qword [rdi + 0]
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
is_global_var_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gglobal_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .664
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.664:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.666:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .667
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gglobal_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1642
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1642:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gglobal_var_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .668
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.668:
	pop rbx
	inc rbx
	push rbx
	jmp .666
.667:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
is_constant_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .670
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.670:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.672:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .673
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gtoplevel_constants.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1643
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1643:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gtoplevel_constants
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .674
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.674:
	pop rbx
	inc rbx
	push rbx
	jmp .672
.673:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
is_function_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfunctions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .676
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.676:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.678:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .679
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gfunctions.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1644
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1644:
	mov rdi, 40
	imul rsi, rdi
	mov rdi, qword _gfunctions
	add rsi, rdi
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .680
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.680:
	pop rbx
	inc rbx
	push rbx
	jmp .678
.679:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
search_variable_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gvar_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .682
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.682:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, qword _gvar_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	push r8
.684:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .685
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gvar_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1645
	mov eax, 1
	mov edi, 2
	mov rsi, _s259
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1645:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gvar_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .686
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.686:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .688
	jmp .685
.688:
	pop rbx
	dec rbx
	push rbx
	jmp .684
.685:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
replace_as_constant:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, rdi
	mov r9, qword _gtoken_stream.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp r8, r10
	setb r9b
	test r9, r9
	jnz .1646
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1646:
	mov r8, 28
	imul rdi, r8
	mov r8, qword _gtoken_stream
	add rdi, r8
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r8, r9
	mov r10, qword _gtoplevel_constants.len
	mov r11, qword [r10 + 0]
	xor r10, r10
	cmp r8, r11
	setb r10b
	test r10, r10
	jnz .1647
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1647:
	mov r8, 24
	imul r9, r8
	mov r8, qword _gtoplevel_constants
	add r9, r8
	mov r8, 12
	add r9, r8
	mov r9d, [r9]
	mov r8, r9
	mov r10, qword _gtoken_stream.len
	mov r11, qword [r10 + 0]
	xor r10, r10
	cmp r8, r11
	setb r10b
	test r10, r10
	jnz .1648
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1648:
	mov r8, 28
	imul r9, r8
	mov r8, qword _gtoken_stream
	add r9, r8
	mov r8, 28
	push rbx
	push r9
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1649
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1649:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rdi, 3
	mov dword [rsi], edi
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1650
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1650:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _gtoplevel_constants.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1651
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1651:
	mov rsi, 24
	imul rdi, rsi
	mov rsi, qword _gtoplevel_constants
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov rdi, [rdi]
	mov qword [rbx], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.fn_decl:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .690
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1652
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1652:
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gscope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1653
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1653:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gscope_context
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s208
	mov rdi, 38
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1654
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1654:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.690:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rbx, qword _gpos
	mov qword [rbx + 0], rdi
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, qword _gtoken_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .692
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s209
	mov rdi, 36
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1655
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1655:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.692:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1656
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1656:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .694
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s210
	mov rdi, 38
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1657
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1657:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.694:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1658
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1658:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	add rsi, rbx
	mov rbx, rsi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1659
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1659:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .696
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s211
	mov rdi, 51
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1660
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1660:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.696:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1661
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1661:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .698
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s212
	mov rdi, 44
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1662
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1662:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.698:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1663
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1663:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, 8
	add rbx, r8
	mov rdi, [rdi]
	xor rdi, rdi
	mov dil, [rbx]
	mov rbx, 95
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .700
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s213
	mov rdi, 50
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1664
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1664:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.700:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .702
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s214
	mov rdi, 23
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1665
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1665:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.702:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	or rbx, rsi
	push rbx
	pop rbx
	test rbx, rbx
	jz .704
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s215
	mov rdi, 45
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1666
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1666:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.704:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1667
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1667:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 3
	add rdi, rbx
	mov rbx, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1668
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1668:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 20
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rdi
	mov rbx, qword _gfunctions.len
	mov r8, qword [rbx + 0]
	mov rbx, 40
	imul r8, rbx
	mov rbx, qword _gfunctions
	add r8, rbx
	mov rbx, qword _gfunction_context
	mov qword [rbx + 0], r8
	mov r9, qword _gfunctions.len
	mov r10, qword [r9 + 0]
	mov r9, qword _gfunction_context_idx
	mov qword [r9 + 0], r10
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 16]
	mov r11, qword [_rs_p]
	mov r13, qword [r11 + 24]
	mov r11, qword [_rs_p]
	mov r14, qword [r11 + 8]
	mov r11, qword _gir_stream.len
	mov r15, qword [r11 + 0]
	mov r11, 0
	mov rcx, 0
	mov rdx, qword [_rs_p]
	mov rax, qword [rdx + 8]
	mov rdx, rax
	push r12
	push r13
	push r14
	push r15
	push r11
	push rcx
	push rax
	push rdx
	mov rbx, 8
	pop rsi
	add rsi, rbx
	pop rbx
	mov rbx, [rbx]
	mov rdi, _s216
	mov r8, 4
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .706
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .708
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s217
	mov rdi, 52
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1669
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1669:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.708:
	mov rbx, qword _gfunctions.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gmain_fn_idx
	mov qword [rbx + 0], rsi
	mov rdi, 1
	mov r8, 1
	push rdi
	push r8
	jmp .710
.706:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.710:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call functions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 14
	mov rdi, qword _gfunction_context_idx
	mov r8, qword [rdi + 0]
	push rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1670
	mov eax, 1
	mov edi, 2
	mov rsi, _s220
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1670:
	mov rbx, qword _gvar_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1671
	mov eax, 1
	mov edi, 2
	mov rsi, _s221
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1671:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
parse.any_variable:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _gpos
	mov qword [rbx + 0], rdi
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, qword _gtoken_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .711
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s223
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1672
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1672:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.711:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1673
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1673:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 67
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .713
	mov rbx, 1
	push rbx
	jmp .715
.713:
	mov rbx, 2
	push rbx
.715:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1674
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1674:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 16
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 1
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .716
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s224
	mov rdi, 38
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1675
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1675:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.716:
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .718
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s225
	mov rdi, 36
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1676
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1676:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.718:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1677
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1677:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .720
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1678
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1678:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .722
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
.722:
.720:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1679
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1679:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .724
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s226
	mov rdi, 40
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1680
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1680:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.724:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1681
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1681:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 67
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .726
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1682
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1682:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	jmp .728
.726:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1683
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1683:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 8
	imul rsi, rbx
	push rsi
.728:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.fn_complex_body_tokens:
	sub rsp, 308
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1684
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1684:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, rbx
	mov r8, 67
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 68
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	or r9, r8
	push rsi
	push r9
	pop rbx
	test rbx, rbx
	jz .729
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.any_variable
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov qword [rdi + 16], rsi
	mov rdi, qword _gvar_context.len
	mov r8, qword [rdi + 0]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .731
	mov rbx, qword _gvar_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.733:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .734
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gvar_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1685
	mov eax, 1
	mov edi, 2
	mov rsi, _s259
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1685:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gvar_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 16]
	mov r10, qword [r8 + 8]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .735
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s260
	mov rdi, 23
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1686
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1686:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.735:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .737
	jmp .734
.737:
	pop rbx
	dec rbx
	push rbx
	jmp .733
.734:
	add rsp, 8
.731:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 24], rsi
	pop rdi
	mov r8, qword _gfunction_context
	mov r9, qword [r8 + 0]
	mov r8, 24
	add r9, r8
	mov r9d, [r9]
	mov r8, qword _gpos
	mov r10, qword [r8 + 0]
	mov r8, 2
	sub r10, r8
	push rbx
	push r9
	push r10
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	add rsi, rbx
	mov rbx, qword _gfunction_context
	mov rdi, qword [rbx + 0]
	mov rbx, 24
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	add rdi, r8
	mov dword [rsi], edi
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	jmp .730
.729:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .740
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	mov rdi, qword _gtoken_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .741
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s262
	mov rdi, 31
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1687
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1687:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.741:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1688
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1688:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .743
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s263
	mov rdi, 23
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1689
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1689:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.743:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1690
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1690:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov qword [rdi + 40], rbx
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 48], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 32]
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .745
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, qword _gvar_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1691
	mov eax, 1
	mov edi, 2
	mov rsi, _s259
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1691:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .747
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s264
	mov rdi, 24
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1692
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1692:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .748
.747:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .750
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 64], rax
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .751
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s265
	mov rdi, 65
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.751:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	sub rsi, rdi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, 4
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 64]
	mov r8, 32
	mov rcx, r8
	shl r9, cl
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 56]
	mov r8, 8
	add r10, r8
	mov r10d, [r10]
	or r9, r10
	mov r8, qword _gpos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .748
.750:
	mov rbx, 0
	test rbx, rbx
	jnz .1693
	mov eax, 1
	mov edi, 2
	mov rsi, _s266
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1693:
.753:
.748:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
.745:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .754
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .756
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1694
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1694:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 72]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .758
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s267
	mov rdi, 24
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1695
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1695:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .759
.758:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .761
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rax
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .762
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s268
	mov rdi, 65
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.762:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	sub rsi, rdi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, 7
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 40]
	mov r8, qword _gpos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .759
.761:
	mov rbx, 0
	test rbx, rbx
	jnz .1696
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1696:
.764:
.759:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
.756:
.754:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .765
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s270
	mov rdi, 21
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1697
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1697:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.765:
	jmp .730
.740:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .768
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1698
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1698:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 88], rsi
	mov rbx, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov qword [rdi + 96], rbx
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 104], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 88]
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .769
	mov rbx, 16
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfunction_context_idx
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .771
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 30
	add rsi, rbx
	mov rbx, qword _glabel_c
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	inc rbx
	mov r8, qword _glabel_c
	mov qword [r8 + 0], rbx
	mov dword [rsi], edi
.771:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, rdi
	mov r8, qword _gfunctions.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1699
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1699:
	mov rbx, 40
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .773
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s271
	mov rdi, 46
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.773:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1700
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1700:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, rdi
	mov r8, qword _gfunctions.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1701
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1701:
	mov rbx, 40
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.769:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .775
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .777
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _gvar_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1702
	mov eax, 1
	mov edi, 2
	mov rsi, _s259
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1702:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 112], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 112]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .779
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 112]
	mov rsi, 8
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .780
.779:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .782
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 120], rax
	mov rbx, 5
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 120]
	mov rsi, 32
	mov rcx, rsi
	shl rdi, cl
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 112]
	mov rsi, 8
	add r8, rsi
	mov r8d, [r8]
	or rdi, r8
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .780
.782:
	mov rbx, 0
	test rbx, rbx
	jnz .1703
	mov eax, 1
	mov edi, 2
	mov rsi, _s272
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1703:
.783:
.780:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.777:
.775:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .784
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .786
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1704
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1704:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 128]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .788
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .789
.788:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .791
	mov rbx, 8
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	push rax
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .789
.791:
	mov rbx, 0
	test rbx, rbx
	jnz .1705
	mov eax, 1
	mov edi, 2
	mov rsi, _s273
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1705:
.792:
.789:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.786:
.784:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .793
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .795
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 136], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 136]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .797
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, 1
	mov r8, qword [_rs_p]
	mov qword [r8 + 104], rdi
.797:
.795:
.793:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .799
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s274
	mov rdi, 33
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1706
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1706:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.799:
	jmp .730
.768:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .802
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .803
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s275
	mov rdi, 45
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1707
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1707:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.803:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _glabel_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _glabel_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 144], r8
	mov r10, 3
	mov r11, qword _gsp.len
	mov r12, qword [r11 + 0]
	mov r11, 0
	mov r13, qword _gpos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 144]
	mov r13, qword _glabel_c
	mov rcx, qword [r13 + 0]
	mov r13, rcx
	inc r13
	mov rdx, qword _glabel_c
	mov qword [rdx + 0], r13
	mov rax, qword _gvar_context.len
	push r10
	push r12
	push r11
	push r14
	push r15
	push rcx
	mov rbx, qword [rax + 0]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 144]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	mov rdi, qword _gtoken_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .805
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s277
	mov rdi, 40
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1708
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1708:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.805:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1709
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1709:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .807
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s278
	mov rdi, 39
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1710
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1710:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.807:
	jmp .730
.802:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .810
	mov rbx, qword _glabel_c
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	inc rbx
	mov rdi, qword _glabel_c
	mov qword [rdi + 0], rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 152], rsi
	mov r8, 13
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 152]
	mov r9, qword _gpos
	mov r11, qword [r9 + 0]
	push r11
	push r8
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 152]
	mov r8, 0
	mov r11, qword _gvar_context.len
	mov r12, qword [r11 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	push r8
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.810:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .812
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .813
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s279
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1711
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1711:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.813:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	push rdi
.815:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .816
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gscope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1712
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1712:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 168], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 168]
	mov r8d, [r8]
	mov rdi, 9
	xor r9, r9
	cmp r8, rdi
	sete r9b
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .817
	mov rbx, 12
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 168]
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	jmp .816
.817:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .819
	jmp .816
.819:
	pop rbx
	dec rbx
	push rbx
	jmp .815
.816:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 160]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .821
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s280
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1713
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1713:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.821:
	jmp .730
.812:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .824
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .825
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s281
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1714
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1714:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.825:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 176], rbx
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	push rdi
.827:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .828
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gscope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1715
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1715:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .829
	pop rbx
	mov rsi, rbx
	dec rsi
	mov rdi, rsi
	mov r8, qword _gscope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1716
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1716:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, rsi
	mov edi, [rdi]
	mov r8, 8
	xor r9, r9
	cmp rdi, r8
	sete r9b
	test r9, r9
	jnz .1717
	mov eax, 1
	mov edi, 2
	mov rsi, _s282
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1717:
	mov rdi, 12
	mov r8, 16
	add rsi, r8
	mov esi, [rsi]
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	push rbx
	push r9
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 176], rbx
	jmp .828
.829:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .831
	jmp .828
.831:
	pop rbx
	dec rbx
	push rbx
	jmp .827
.828:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 176]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .833
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s283
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1718
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1718:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.833:
	jmp .730
.824:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .836
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .837
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1719
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1719:
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gscope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1720
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1720:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gscope_context
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .839
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .841
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s284
	mov rdi, 45
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1721
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1721:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.841:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _glabel_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _glabel_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 184], r8
	mov r10, 9
	mov r11, qword _gsp.len
	mov r12, qword [r11 + 0]
	mov r11, 0
	mov r13, qword _gpos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 184]
	mov r13, 0
	mov rcx, qword _gvar_context.len
	mov rdx, qword [rcx + 0]
	push r10
	push r12
	push r11
	push r14
	push r15
	push r13
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 184]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .840
.839:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .844
	mov rbx, qword [_rs_p]
	add rbx, 192
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	test r8, r8
	jnz .1722
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1722:
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _gscope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1723
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1723:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gscope_context
	add rdi, rsi
	mov rsi, 28
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gscope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _gsp.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	sete r9b
	push r9
	pop rbx
	test rbx, rbx
	jz .845
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s285
	mov rdi, 50
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1724
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1724:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.845:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _glabel_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _glabel_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 220], r8
	mov r10, 7
	mov r11, qword [_rs_p]
	add r11, 192
	mov r12, 4
	add r11, r12
	mov r11d, [r11]
	mov r12, qword [_rs_p]
	add r12, 192
	mov r13, 8
	add r12, r13
	mov r12d, [r12]
	mov r13, qword _gpos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 220]
	mov r13, qword [_rs_p]
	add r13, 192
	mov rcx, 20
	add r13, rcx
	mov r13d, [r13]
	mov rcx, qword _gvar_context.len
	mov rdx, qword [rcx + 0]
	push r10
	push r11
	push r12
	push r14
	push r15
	push r13
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 220]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .840
.844:
	mov rbx, 1
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, 0
	mov r11, qword _gvar_context.len
	mov r12, qword [r11 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r8
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.847:
.840:
	add rsp, 8
	jmp .848
.837:
	mov rbx, 1
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, 0
	mov r11, qword _gvar_context.len
	mov r12, qword [r11 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r8
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.848:
	jmp .730
.836:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .850
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .851
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	test r8, r8
	jnz .1725
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1725:
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _gscope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1726
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1726:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gscope_context
	add rdi, rsi
	mov rsi, 28
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gscope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 24
	add rdi, r8
	mov edi, [rdi]
	mov r8, qword _gvar_context.len
	mov qword [r8 + 0], rdi
	mov r9, qword [_rs_p]
	add r9, 228
	mov r9d, [r9]
	mov r10, r9
	mov r11, 9
	xor r12, r12
	cmp r10, r11
	sete r12b
	push r9
	push r12
	pop rbx
	test rbx, rbx
	jz .853
	mov rbx, qword [_rs_p]
	add rbx, 256
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	test r8, r8
	jnz .1727
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1727:
	mov rsi, qword _gscope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _gscope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1728
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1728:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gscope_context
	add rdi, rsi
	mov rsi, 28
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gscope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 256
	mov r9, 16
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _gpos
	mov r10, qword [r9 + 0]
	push r10
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .854
.853:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .856
	jmp .854
.856:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .858
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .859
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s286
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .860
.859:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .862
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s287
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.862:
.860:
	jmp .854
.858:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .864
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _gtoken_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	add rdi, rsi
	mov rsi, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1729
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1729:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gtoken_stream
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, 16
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	and rbx, r8
	push rbx
	pop rbx
	test rbx, rbx
	jz .865
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, qword _glabel_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _glabel_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 284], r8
	mov r10, 5
	mov r11, qword _gsp.len
	mov r12, qword [r11 + 0]
	mov r11, qword _gsp.len
	mov r13, qword [r11 + 0]
	mov r11, qword _gpos
	mov r14, qword [r11 + 0]
	mov r11, qword [_rs_p]
	mov r15, qword [r11 + 284]
	mov r11, 4294967295
	mov rcx, qword _gvar_context.len
	mov rdx, qword [rcx + 0]
	push r10
	push r12
	push r13
	push r14
	push r15
	push r11
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _gsp.len
	mov qword [rsi + 0], rbx
	mov rdi, 12
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 284]
	mov r8, qword _gpos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	mov rdi, qword _gtoken_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .867
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s288
	mov rdi, 42
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1730
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1730:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.867:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1731
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1731:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .869
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s289
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1732
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1732:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.869:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .866
.865:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _gtoken_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	add rdi, rsi
	mov rsi, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1733
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1733:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gtoken_stream
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, 17
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	and rbx, r8
	push rbx
	pop rbx
	test rbx, rbx
	jz .872
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, 6
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 4
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _gsp.len
	mov r10, qword [r9 + 0]
	mov r9, qword _gpos
	mov r11, qword [r9 + 0]
	mov r9, qword _glabel_c
	mov r12, qword [r9 + 0]
	mov r9, r12
	inc r9
	mov r13, qword _glabel_c
	mov qword [r13 + 0], r9
	mov r14, qword [_rs_p]
	add r14, 228
	mov r15, 20
	add r14, r15
	mov r14d, [r14]
	mov r15, qword _gvar_context.len
	mov rcx, qword [r15 + 0]
	push rdi
	push r8
	push r10
	push r11
	push r12
	push r14
	push rcx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _gsp.len
	mov qword [rsi + 0], rbx
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 20
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _gpos
	mov r10, qword [r9 + 0]
	push r10
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .866
.872:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .874
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s290
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.874:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.873:
.866:
	jmp .854
.864:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .877
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _gtoken_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	add rdi, rsi
	mov rsi, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1734
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1734:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gtoken_stream
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, rdi
	mov r8, 17
	xor r9, r9
	cmp rsi, r8
	sete r9b
	mov rsi, 16
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	or r9, r8
	and rbx, r9
	push rbx
	pop rbx
	test rbx, rbx
	jz .878
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	mov rdi, r8
	mov r9, qword _gtoken_stream.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rdi, r10
	setb r9b
	test r9, r9
	jnz .1735
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1735:
	mov rdi, 28
	imul r8, rdi
	mov rdi, qword _gtoken_stream
	add r8, rdi
	mov rdi, 16
	add r8, rdi
	mov r8d, [r8]
	mov rdi, r8
	mov r9, 17
	xor r10, r10
	cmp rdi, r9
	sete r10b
	push r8
	push r10
	pop rbx
	test rbx, rbx
	jz .880
	mov rbx, 6
	push rbx
	jmp .881
.880:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .883
	mov rbx, 5
	push rbx
	jmp .881
.883:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .1736
	mov eax, 1
	mov edi, 2
	mov rsi, _s291
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.1736:
	push rbx
.884:
.881:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 8
	add rdi, r8
	mov edi, [rdi]
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, qword _glabel_c
	mov r10, qword [r8 + 0]
	mov r8, r10
	inc r8
	mov r11, qword _glabel_c
	mov qword [r11 + 0], r8
	mov r12, qword [_rs_p]
	add r12, 228
	mov r13, 20
	add r12, r13
	mov r12d, [r12]
	mov r13, qword _gvar_context.len
	mov r14, qword [r13 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	push r10
	push r12
	push r14
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .885
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s292
	mov rdi, 55
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.885:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _gsp.len
	mov qword [rsi + 0], rbx
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 20
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _gpos
	mov r10, qword [r9 + 0]
	push r10
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1737
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1737:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .887
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	mov rdi, qword _gtoken_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .889
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s293
	mov rdi, 42
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1738
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1738:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.889:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1739
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1739:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .891
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s294
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1740
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1740:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.891:
.887:
	jmp .893
.878:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _gsp.len
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .894
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s295
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.894:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.893:
	jmp .854
.877:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .897
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .898
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s296
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .899
.898:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .901
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s297
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.901:
.899:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 20
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4294967295
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .902
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.902:
	jmp .854
.897:
	mov rbx, 0
	test rbx, rbx
	jnz .1741
	mov eax, 1
	mov edi, 2
	mov rsi, _s298
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1741:
.904:
.854:
	add rsp, 8
	jmp .905
.851:
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 20
	add rsi, rbx
	mov rbx, qword _gir_stream.len
	mov rdi, qword [rbx + 0]
	mov dword [rsi], edi
	mov rbx, 15
	mov rsi, qword _gfunction_context_idx
	mov rdi, qword [rsi + 0]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfunction_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	seta bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .906
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1742
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1742:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s299
	mov rdi, 27
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .907
.906:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfunction_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .909
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1743
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1743:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s300
	mov rdi, 49
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.909:
.907:
	mov rbx, 0
	mov rsi, qword _gsp.len
	mov qword [rsi + 0], rbx
	mov rdi, 0
	mov r8, qword _gvar_context.len
	mov qword [r8 + 0], rdi
	mov r9, 0
	mov r10, qword _gfunction_context
	mov qword [r10 + 0], r9
	mov r11, 18446744073709551615
	mov r12, qword _gfunction_context_idx
	mov qword [r12 + 0], r11
.905:
	jmp .730
.850:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .911
	mov rbx, 15
	mov rsi, qword _gfunction_context_idx
	mov rdi, qword [rsi + 0]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfunction_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	seta bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .912
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1744
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1744:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s301
	mov rdi, 27
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .913
.912:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfunction_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .915
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1745
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1745:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s302
	mov rdi, 49
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.915:
.913:
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .916
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1746
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1746:
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gscope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1747
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1747:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gscope_context
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .918
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1748
	mov eax, 1
	mov edi, 2
	mov rsi, _s206
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1748:
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gscope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1749
	mov eax, 1
	mov edi, 2
	mov rsi, _s207
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1749:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gscope_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
.918:
.916:
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	jmp .730
.911:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .921
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 292], rsi
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _gpos
	mov qword [rbx + 0], rdi
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, qword _gtoken_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .922
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, _s303
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1750
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1750:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.922:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1751
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1751:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 16
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 3
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .924
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s304
	mov rdi, 52
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1752
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1752:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.924:
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 300], rsi
	mov rbx, 2
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 300]
	mov rdi, qword _gsp.len
	mov r9, qword [rdi + 0]
	add r8, r9
	mov rdi, 0
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 292]
	mov r9, 0
	mov r11, 0
	mov r12, qword _gvar_context.len
	mov r13, qword [r12 + 0]
	push rbx
	push r8
	push rdi
	push r10
	push r9
	push r11
	push r13
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1753
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1753:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .926
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s305
	mov rdi, 49
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1754
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1754:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.926:
	jmp .730
.921:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .929
	mov rbx, 1
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1755
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1755:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gtoken_stream
	add rdi, rsi
	mov rsi, 20
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.929:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .931
	mov rbx, 50
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.931:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .933
	mov rbx, 51
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.933:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .935
	mov rbx, 52
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.935:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .937
	mov rbx, 53
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.937:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .939
	mov rbx, 54
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.939:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .941
	mov rbx, 55
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.941:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .943
	mov rbx, 56
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.943:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .945
	mov rbx, 57
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.945:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .947
	mov rbx, 18
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.947:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .949
	mov rbx, 58
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.949:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .951
	mov rbx, 59
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.951:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .953
	mov rbx, 60
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.953:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .955
	mov rbx, 61
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.955:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .957
	mov rbx, 62
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.957:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .959
	mov rbx, 63
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 6
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.959:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .961
	mov rbx, 64
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 7
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.961:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .963
	mov rbx, 9
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.963:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .965
	mov rbx, 10
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .730
.965:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s306
	mov rdi, 28
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1756
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1756:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.966:
.730:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 308
	ret
parse.assert:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .967
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s246
	mov rdi, 42
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1757
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1757:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.967:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gsp.len
	mov qword [rbx + 0], rsi
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rdi
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, 2
	add r9, r8
	mov r8, qword _gtoken_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setb r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .969
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1758
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1758:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 6
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1759
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1759:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .971
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
.971:
.969:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s247
	mov rdi, 0
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok.to_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rdi
	pop rbx
	test rbx, rbx
	jz .973
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s255
	mov rdi, 21
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1760
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1760:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 20
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, rdi
	mov r8, 8
	add rbx, r8
	mov rdi, [rdi]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s256
	mov rdi, 2
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 17
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	jmp .975
.973:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s257
	mov rdi, 19
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 17
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.975:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.fn_body_tokens:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1761
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1761:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 10
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .976
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.976:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .979
	mov rbx, 2
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _gtoken_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1762
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1762:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _gtoken_stream
	add rdi, rsi
	mov rsi, 20
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword _gpos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _gpos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.979:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .981
	mov rbx, 19
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.981:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .983
	mov rbx, 20
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.983:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .985
	mov rbx, 21
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.985:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .987
	mov rbx, 22
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.987:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .989
	mov rbx, 23
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.989:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .991
	mov rbx, 24
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.991:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .993
	mov rbx, 25
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.993:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .995
	mov rbx, 26
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.995:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .997
	mov rbx, 27
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.997:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .999
	mov rbx, 28
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.999:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1001
	mov rbx, 29
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1001:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1003
	mov rbx, 30
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1003:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1005
	mov rbx, 31
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1005:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1007
	mov rbx, 65
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1007:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1009
	mov rbx, 32
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1009:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1011
	mov rbx, 33
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1011:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1013
	mov rbx, 34
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1013:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1015
	mov rbx, 35
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1015:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1017
	mov rbx, 36
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1017:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1019
	mov rbx, 37
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1019:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1021
	mov rbx, 38
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1021:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1023
	mov rbx, 39
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1023:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1025
	mov rbx, 40
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1025:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1027
	mov rbx, 41
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1027:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1029
	mov rbx, 42
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1029:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1031
	mov rbx, 43
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1031:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1033
	mov rbx, 44
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1033:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1035
	mov rbx, 45
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1035:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1037
	mov rbx, 46
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1037:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1039
	mov rbx, 47
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1039:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1041
	mov rbx, 48
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1041:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1043
	mov rbx, 49
	mov rsi, 0
	mov rdi, qword _gpos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .977
.1043:
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1045
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1047
.1045:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1763
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1763:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 9
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1048
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s307
	mov rdi, 62
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1764
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1764:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1048:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s308
	mov rdi, 33
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1765
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1765:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1047:
.1044:
.977:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.const_expression:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _gpos
	mov qword [rbx + 0], rdi
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, qword _gtoken_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1050
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s196
	mov rdi, 47
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1766
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1766:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1050:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1767
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1767:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1052
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s197
	mov rdi, 50
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1768
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1768:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1052:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1769
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1769:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1054
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s199
	mov rdi, 60
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1770
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1770:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1054:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	or rbx, rsi
	push rbx
	pop rbx
	test rbx, rbx
	jz .1056
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s202
	mov rdi, 61
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1771
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1771:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1056:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1772
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1772:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1058
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s203
	mov rdi, 43
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1773
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1773:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1058:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword _gir_stream.len
	mov rdi, qword [rbx + 0]
	mov rbx, qword _gpos
	mov r8, qword [rbx + 0]
	mov rbx, 1
	sub r8, rbx
	mov rbx, 18446744073709551615
	push rsi
	push rdi
	push r8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call toplevel_constants_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _gis_still_evaluating_constant
	mov qword [rsi + 0], rbx
	mov rdi, qword _gsp.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	sete r9b
	test r9, r9
	jnz .1774
	mov eax, 1
	mov edi, 2
	mov rsi, _s205
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1774:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.parse:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	mov rsi, qword _gmain_fn_idx
	mov qword [rsi + 0], rbx
	mov rdi, 0
	mov r8, qword _gpos
	mov qword [r8 + 0], rdi
.1060:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gtoken_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1061
	mov rbx, qword _gis_still_evaluating_constant
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .1062
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1775
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1775:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 9
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .1064
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1065
.1064:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1067
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1065
.1067:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 67
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	or r9, r8
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .1069
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.any_variable
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	or rbx, rsi
	push rbx
	pop rbx
	test rbx, rbx
	jz .1070
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s227
	mov rdi, 33
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1776
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1776:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1070:
	pop rbx
	pop rsi
	mov rdi, 0
	mov r8, qword _gpos
	mov r9, qword [r8 + 0]
	mov r8, 2
	sub r9, r8
	push rbx
	push rdi
	push r9
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call global_var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1065
.1069:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s229
	mov rdi, 22
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1777
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1777:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1072:
.1065:
	add rsp, 8
	jmp .1073
.1062:
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1074
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1778
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1778:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 5
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .1076
	mov rbx, 0
	mov rsi, qword _gconst_stack.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	setne r9b
	test r9, r9
	jnz .1779
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1779:
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	mov rdi, r8
	mov r9, qword _gtoplevel_constants.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rdi, r10
	setb r9b
	test r9, r9
	jnz .1780
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1780:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _gtoplevel_constants
	add r8, rdi
	mov rdi, 8
	add r8, rdi
	mov r8d, [r8]
	push r8
.1078:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1079
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval_one_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1781
	mov eax, 1
	mov edi, 2
	mov rsi, _s235
	mov rdx, 78
	syscall
	mov rdi, 1
	jmp _exit
.1781:
	pop rbx
	inc rbx
	push rbx
	jmp .1078
.1079:
	add rsp, 8
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1080
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1782
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1782:
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1783
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1783:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gtoplevel_constants
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s236
	mov rdi, 40
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1784
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1784:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1080:
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1082
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1785
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1785:
	mov rbx, qword _gtoplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1786
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1786:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gtoplevel_constants
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s237
	mov rdi, 64
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1082:
	mov rbx, 0
	mov rsi, qword _gsp.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	setne r9b
	test r9, r9
	jnz .1787
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1787:
	mov rdi, qword _gtoplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	mov rdi, r8
	mov r9, qword _gtoplevel_constants.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rdi, r10
	setb r9b
	test r9, r9
	jnz .1788
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1788:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _gtoplevel_constants
	add r8, rdi
	mov rdi, 8
	add r8, rdi
	mov r8d, [r8]
	mov rdi, qword _gir_stream.len
	mov qword [rdi + 0], r8
	mov r9, qword _gtoplevel_constants.len
	mov r10, qword [r9 + 0]
	mov r9, 0
	xor r11, r11
	cmp r10, r9
	setne r11b
	test r11, r11
	jnz .1789
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1789:
	mov r9, qword _gtoplevel_constants.len
	mov r10, qword [r9 + 0]
	mov r9, 1
	sub r10, r9
	mov r9, r10
	mov r11, qword _gtoplevel_constants.len
	mov r12, qword [r11 + 0]
	xor r11, r11
	cmp r9, r12
	setb r11b
	test r11, r11
	jnz .1790
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1790:
	mov r9, 24
	imul r10, r9
	mov r9, qword _gtoplevel_constants
	add r10, r9
	mov r9, 16
	add r10, r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gconst_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov qword [r8], rdi
	mov rdi, 0
	mov r8, qword _gis_still_evaluating_constant
	mov qword [r8 + 0], rdi
	mov r9, qword _gconst_stack.len
	mov r10, qword [r9 + 0]
	mov r9, 0
	xor r11, r11
	cmp r10, r9
	sete r11b
	test r11, r11
	jnz .1791
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1791:
	jmp .1077
.1076:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1085
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1792
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1792:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1086
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gpos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	jmp .1088
.1086:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	mov rbx, _s245
	mov rdi, 25
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1793
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1793:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1088:
	jmp .1077
.1085:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1089:
.1077:
	add rsp, 8
	jmp .1090
.1074:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1090:
.1073:
	mov rbx, qword _gpos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gpos
	mov qword [rbx + 0], rsi
	jmp .1060
.1061:
	mov rbx, qword _gvar_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1794
	mov eax, 1
	mov edi, 2
	mov rsi, _s309
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1794:
	mov rbx, qword _gsp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1795
	mov eax, 1
	mov edi, 2
	mov rsi, _s310
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1795:
	mov rbx, qword _gscope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1091
	mov rbx, qword _gtoken_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s311
	mov rdi, 32
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1796
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1796:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1091:
	mov rbx, qword _gfunction_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1093
	mov rbx, qword _gtoken_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _s312
	mov rdi, 60
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1797
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1797:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s46
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1093:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
fwrite_buffer.assert_len:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 10240
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1798
	mov eax, 1
	mov edi, 2
	mov rsi, _s389
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1798:
	mov rsi, qword _gfwrite_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1095
	mov rbx, qword _gfwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfwrite_buffer
	mov rdi, qword _gfwrite_buffer.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	mov rax, rdi
	mov rdx, r8
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _gfwrite_buffer.len
	mov rsi, qword [rbx + 0]
	xor rbx, rbx
	cmp rax, rsi
	sete bl
	test rbx, rbx
	jnz .1799
	mov eax, 1
	mov edi, 2
	mov rsi, _s390
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1799:
	mov rbx, 0
	mov rsi, qword _gfwrite_buffer.len
	mov qword [rsi + 0], rbx
.1095:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
fwritec:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite_buffer.assert_len
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfwrite_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfwrite_buffer
	add rsi, rbx
	pop rbx
	mov byte [rsi], bl
	mov rbx, qword _gfwrite_buffer.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gfwrite_buffer.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
fwrite:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite_buffer.assert_len
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	pop rdi
	mov r8, qword _gfwrite_buffer
	mov r9, qword _gfwrite_buffer.len
	mov r10, qword [r9 + 0]
	add r8, r10
	push rsi
	push r8
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfwrite_buffer.len
	mov rsi, qword [rbx + 0]
	pop rbx
	add rbx, rsi
	mov rsi, qword _gfwrite_buffer.len
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
fwriteu:
	sub rsp, 21
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call itoa
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 21
	ret
write_remap_ch:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 91
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1097
	mov rbx, _s436
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1097:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1100
	mov rbx, _s437
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1100:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1102
	mov rbx, _s438
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1102:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1104
	mov rbx, _s439
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1104:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1106
	mov rbx, _s440
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1106:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1108
	mov rbx, _s441
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1108:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1110
	mov rbx, _s442
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1098
.1110:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1111:
.1098:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Function.name.fwrite_mangled:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov rdi, 0
	push rdi
.1112:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1113
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call write_remap_ch
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1112
.1113:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
slits_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gslits.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1800
	mov eax, 1
	mov edi, 2
	mov rsi, _s383
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1800:
	mov rbx, qword _gslits
	mov rsi, qword _gslits.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov dword [rbx], esi
	mov rbx, qword _gslits.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _gslits.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
dce.recurse_function:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
.1141:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1801
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1801:
	mov rsi, 40
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 28
	add rdi, rsi
	mov rsi, 1
	mov byte [rdi], sil
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 20
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, 1
	add rdi, rsi
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	mov rsi, 16
	add r8, rsi
	mov r8d, [r8]
	sub rdi, r8
	mov rsi, 12
	xor r8, r8
	cmp rdi, rsi
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1114
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
.1114:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.1116:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1117
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1802
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1802:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, rdi
	mov r8, qword _gir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1803
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1803:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _gir_stream
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, rdi
	mov r8, 16
	xor r9, r9
	cmp rbx, r8
	sete r9b
	push rdi
	push r9
	pop rbx
	test rbx, rbx
	jz .1118
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1804
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1804:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1120
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rdi
.1122:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .1123
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	mov rbx, rdi
	mov r8, qword _gir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1805
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1805:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _gir_stream
	add rdi, rbx
	mov rbx, 8
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	mov rbx, r8
	mov r9, qword _gir_stream.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rbx, r10
	setb r9b
	test r9, r9
	jnz .1806
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1806:
	mov rbx, 16
	imul r8, rbx
	mov rbx, qword _gir_stream
	add r8, rbx
	mov rbx, 4
	add r8, rbx
	mov r8d, [r8]
	mov rbx, r8
	mov r9, 13
	xor r10, r10
	cmp rbx, r9
	sete r10b
	push r8
	push r10
	pop rbx
	test rbx, rbx
	jz .1124
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1126
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.1126:
	jmp .1125
.1124:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1129
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1130
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.1130:
	jmp .1125
.1129:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1133
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1807
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1807:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 4
	add rbx, rdi
	mov rdi, 12
	mov dword [rbx], edi
	mov rbx, 8
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 30
	add rdi, rbx
	mov edi, [rdi]
	mov qword [rsi], rdi
	jmp .1123
	jmp .1125
.1133:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1135
	jmp .1123
.1135:
.1134:
.1125:
	jmp .1122
.1123:
	add rsp, 8
.1120:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1808
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1808:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1137
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1809
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1809:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1810
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1810:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, 28
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1139
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.1139:
.1137:
	jmp .1119
.1118:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	or r9, r8
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .1143
	mov rbx, qword _gslits.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call slits_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1811
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1811:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.1143:
.1119:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1116
.1117:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1812
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1812:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 15
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1813
	mov eax, 1
	mov edi, 2
	mov rsi, _s384
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1813:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
Reg.64.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1146
	mov rbx, _s419
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1146:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1149
	mov rbx, _s420
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1149:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1151
	mov rbx, _s421
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1151:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1153
	mov rbx, _s422
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1153:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1155
	mov rbx, _s423
	mov rsi, 2
	push rbx
	push rsi
	jmp .1147
.1155:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1157
	mov rbx, _s424
	mov rsi, 2
	push rbx
	push rsi
	jmp .1147
.1157:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1159
	mov rbx, _s425
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1159:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1161
	mov rbx, _s426
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1161:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1163
	mov rbx, _s427
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1163:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1165
	mov rbx, _s428
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1165:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1167
	mov rbx, _s429
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1167:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1169
	mov rbx, _s430
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1169:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1171
	mov rbx, _s431
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1171:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1173
	mov rbx, _s432
	mov rsi, 3
	push rbx
	push rsi
	jmp .1147
.1173:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1814
	mov eax, 1
	mov edi, 2
	mov rsi, _s433
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1814:
	push rbx
	push rsi
.1174:
.1147:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.32.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1175
	mov rbx, _s640
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1175:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1178
	mov rbx, _s641
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1178:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1180
	mov rbx, _s642
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1180:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1182
	mov rbx, _s643
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1182:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1184
	mov rbx, _s644
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1184:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1186
	mov rbx, _s645
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1186:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1188
	mov rbx, _s646
	mov rsi, 4
	push rbx
	push rsi
	jmp .1176
.1188:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1190
	mov rbx, _s647
	mov rsi, 4
	push rbx
	push rsi
	jmp .1176
.1190:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1192
	mov rbx, _s648
	mov rsi, 4
	push rbx
	push rsi
	jmp .1176
.1192:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1194
	mov rbx, _s649
	mov rsi, 4
	push rbx
	push rsi
	jmp .1176
.1194:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1196
	mov rbx, _s650
	mov rsi, 4
	push rbx
	push rsi
	jmp .1176
.1196:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1198
	mov rbx, _s651
	mov rsi, 4
	push rbx
	push rsi
	jmp .1176
.1198:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1200
	mov rbx, _s652
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1200:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1202
	mov rbx, _s653
	mov rsi, 3
	push rbx
	push rsi
	jmp .1176
.1202:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1815
	mov eax, 1
	mov edi, 2
	mov rsi, _s654
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1815:
	push rbx
	push rsi
.1203:
.1176:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.16.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1204
	mov rbx, _s623
	mov rsi, 2
	push rbx
	push rsi
	jmp .1205
.1204:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1207
	mov rbx, _s624
	mov rsi, 2
	push rbx
	push rsi
	jmp .1205
.1207:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1209
	mov rbx, _s625
	mov rsi, 2
	push rbx
	push rsi
	jmp .1205
.1209:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1211
	mov rbx, _s626
	mov rsi, 2
	push rbx
	push rsi
	jmp .1205
.1211:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1213
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	jmp .1205
.1213:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1215
	mov rbx, _s628
	mov rsi, 3
	push rbx
	push rsi
	jmp .1205
.1215:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1217
	mov rbx, _s629
	mov rsi, 4
	push rbx
	push rsi
	jmp .1205
.1217:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1219
	mov rbx, _s630
	mov rsi, 4
	push rbx
	push rsi
	jmp .1205
.1219:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1221
	mov rbx, _s631
	mov rsi, 4
	push rbx
	push rsi
	jmp .1205
.1221:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1223
	mov rbx, _s632
	mov rsi, 4
	push rbx
	push rsi
	jmp .1205
.1223:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1225
	mov rbx, _s633
	mov rsi, 4
	push rbx
	push rsi
	jmp .1205
.1225:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1227
	mov rbx, _s634
	mov rsi, 4
	push rbx
	push rsi
	jmp .1205
.1227:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1229
	mov rbx, _s635
	mov rsi, 2
	push rbx
	push rsi
	jmp .1205
.1229:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1231
	mov rbx, _s636
	mov rsi, 2
	push rbx
	push rsi
	jmp .1205
.1231:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1816
	mov eax, 1
	mov edi, 2
	mov rsi, _s637
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1816:
	push rbx
	push rsi
.1232:
.1205:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.8.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1233
	mov rbx, _s543
	mov rsi, 2
	push rbx
	push rsi
	jmp .1234
.1233:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1236
	mov rbx, _s544
	mov rsi, 2
	push rbx
	push rsi
	jmp .1234
.1236:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1238
	mov rbx, _s545
	mov rsi, 3
	push rbx
	push rsi
	jmp .1234
.1238:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1240
	mov rbx, _s546
	mov rsi, 3
	push rbx
	push rsi
	jmp .1234
.1240:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1242
	mov rbx, _s547
	mov rsi, 3
	push rbx
	push rsi
	jmp .1234
.1242:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1244
	mov rbx, _s548
	mov rsi, 3
	push rbx
	push rsi
	jmp .1234
.1244:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1246
	mov rbx, _s549
	mov rsi, 4
	push rbx
	push rsi
	jmp .1234
.1246:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1248
	mov rbx, _s550
	mov rsi, 4
	push rbx
	push rsi
	jmp .1234
.1248:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1250
	mov rbx, _s551
	mov rsi, 4
	push rbx
	push rsi
	jmp .1234
.1250:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1252
	mov rbx, _s552
	mov rsi, 4
	push rbx
	push rsi
	jmp .1234
.1252:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1254
	mov rbx, _s553
	mov rsi, 4
	push rbx
	push rsi
	jmp .1234
.1254:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1256
	mov rbx, _s554
	mov rsi, 4
	push rbx
	push rsi
	jmp .1234
.1256:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1258
	mov rbx, _s555
	mov rsi, 2
	push rbx
	push rsi
	jmp .1234
.1258:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1260
	mov rbx, _s556
	mov rsi, 2
	push rbx
	push rsi
	jmp .1234
.1260:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1817
	mov eax, 1
	mov edi, 2
	mov rsi, _s557
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1817:
	push rbx
	push rsi
.1261:
.1234:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
rallocator_stack_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1818
	mov eax, 1
	mov edi, 2
	mov rsi, _s471
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1818:
	mov rsi, qword _grallocator_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 2048
	xor r8, r8
	cmp rdi, rsi
	setb r8b
	test r8, r8
	jnz .1819
	mov eax, 1
	mov edi, 2
	mov rsi, _s472
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1819:
	mov rsi, qword _grallocator_stack
	mov rdi, qword _grallocator_stack.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov byte [rsi], bl
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _grallocator_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
rallocator_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jnz .1820
	mov eax, 1
	mov edi, 2
	mov rsi, _s456
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1820:
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, qword _grallocator_stack
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_ffs:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1262:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1263
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	test rdi, rdi
	sete dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1264
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1264:
	pop rbx
	inc rbx
	push rbx
	jmp .1262
.1263:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_index:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1266:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1267
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	xor rsi, rsi
	cmp rdi, r8
	sete sil
	push rbx
	push rsi
	pop rbx
	test rbx, rbx
	jz .1268
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1268:
	pop rbx
	inc rbx
	push rbx
	jmp .1266
.1267:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
r_flush:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1270:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1271
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s418
	mov r8, 6
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1270
.1271:
	add rsp, 8
	mov rbx, 0
	mov rsi, qword _grallocator_stack.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _grallocator_mask
	mov r8, 0
	mov r9, 14
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memset
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_alloc:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
.1274:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_ffs
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1272
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1274
	jmp .1275
.1272:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.1275:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
r_release:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1821
	mov eax, 1
	mov edi, 2
	mov rsi, _s516
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1821:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	push rbx
	pop rbx
	test rbx, rbx
	jz .1276
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1822
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1822:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	mov rbx, 1
	mov byte [rdi], bl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1823
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1823:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	mov rbx, 0
	mov byte [rdi], bl
	mov rbx, _s517
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s518
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_index
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1278
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1278:
.1276:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
r_pop:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1280
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _grallocator_stack.len
	mov qword [rbx + 0], rsi
	jmp .1282
.1280:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s457
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1282:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1824
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1824:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_pop_r:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1825
	mov eax, 1
	mov edi, 2
	mov rsi, _s516
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1825:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	push rbx
	pop rbx
	test rbx, rbx
	jz .1283
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1283:
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1285
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _grallocator_stack.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	pop r8
	mov qword [rdi + 8], r8
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 8]
	mov rdi, qword [_rs_p]
	mov r10, qword [rdi + 0]
	xor rdi, rdi
	cmp r9, r10
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1287
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1287:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1826
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1826:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s519
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s520
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1289
.1285:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1827
	mov eax, 1
	mov edi, 2
	mov rsi, _s516
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1827:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .1828
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1828:
	mov rbx, _s522
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1289:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1829
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1829:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
r_top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1290
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1292
.1290:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1830
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1830:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s480
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1292:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_dup:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1831
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1831:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s562
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s563
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_push_const:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1832
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1832:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s476
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s477
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
gen_inst:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 9
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
gen_range:
	sub rsp, 152
	mov [_rs_p], rsp
	mov rsp, rbp
.1320:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
.1293:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1294
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1295
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1833
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1833:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _gtoken_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1834
	mov eax, 1
	mov edi, 2
	mov rsi, _s119
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1834:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s415
	mov r8, 6
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov ebx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s416
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s417
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1295:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _gir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1835
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1835:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, qword _gir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1836
	mov eax, 1
	mov edi, 2
	mov rsi, _s231
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1836:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _gir_stream
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, rdi
	mov r8, 13
	xor r9, r9
	cmp rbx, r8
	sete r9b
	push rdi
	push r9
	pop rbx
	test rbx, rbx
	jz .1297
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 46
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 58
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1297:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1300
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1837
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1837:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1838
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1838:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 28
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	sete bl
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 24]
	mov rdi, 29
	add r8, rdi
	xor rdi, rdi
	mov dil, [r8]
	test rdi, rdi
	sete dil
	or rbx, rdi
	push rbx
	pop rbx
	test rbx, rbx
	jz .1301
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1303
.1301:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	and rdi, rsi
	push rdi
	pop rbx
	test rbx, rbx
	jz .1304
	mov rbx, _s435
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1304:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s443
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1306
	mov rbx, _s444
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1306:
	mov rbx, _s445
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s446
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 30
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 4294967295
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .1308
	mov rbx, 46
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 58
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1308:
	add rsp, 8
.1303:
	jmp .1298
.1300:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1311
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1839
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1839:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, _s447
	mov rdi, 13
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s448
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1312
	mov rbx, _s449
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1312:
	mov rbx, _s450
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1315
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gfunctions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1840
	mov eax, 1
	mov edi, 2
	mov rsi, _s198
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1840:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 1
	add rdi, rbx
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	mov rbx, 16
	add r8, rbx
	mov r8d, [r8]
	sub rdi, r8
	mov rbx, 2
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1316
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1318
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1321
.1318:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s451
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s452
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s453
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s454
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s455
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1321:
.1316:
	jmp .1298
.1315:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1323
	mov rbx, qword _glabel_c
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	inc rbx
	mov rdi, qword _glabel_c
	mov qword [rdi + 0], rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 64], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s459
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s460
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s461
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s462
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s463
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s464
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s465
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1841
	mov eax, 1
	mov edi, 2
	mov rsi, _s466
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1841:
	mov rbx, 8
	imul rsi, rbx
	mov rbx, qword _gslits
	add rsi, rbx
	mov rsi, [rsi]
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s467
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s468
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s469
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 46
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 58
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1842
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1842:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1323:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1325
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1843
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1843:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s475
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1844
	mov eax, 1
	mov edi, 2
	mov rsi, _s466
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1844:
	mov rbx, 8
	imul rsi, rbx
	mov rbx, qword _gslits
	add rsi, rbx
	mov rsi, [rsi]
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1325:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1327
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1329
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1845
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1845:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s478
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1330
	mov rbx, _s479
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s481
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1330:
	jmp .1298
.1329:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1333
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 32
	mov rcx, rbx
	shr rdi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1846
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1846:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 88], rbx
	mov rsi, _s482
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s483
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1334:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 80]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1335
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 72]
	add rsi, r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, _s484
	mov r8, 12
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s485
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s486
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1334
.1335:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1847
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1847:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1333:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1337
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 32
	mov rcx, rbx
	shr rdi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 104], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1848
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1848:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
	mov rsi, _s487
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s488
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1338:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 104]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1339
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 104]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	add r8, rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1849
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1849:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s489
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s490
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s491
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1338
.1339:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1850
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1850:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1337:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1341
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1851
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1851:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s492
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1852
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1852:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1341:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1343
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1853
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1853:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rsi, _s493
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s494
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1854
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1854:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1855
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1855:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rax
	mov rbx, 0
	push rbx
.1344:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 128]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1345
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s495
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s496
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s497
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1344
.1345:
	add rsp, 8
	jmp .1298
.1343:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1347
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1856
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1856:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 136], rbx
	mov rsi, _s498
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s499
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1857
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1857:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1858
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1858:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 144], rax
	mov rbx, 0
	push rbx
.1348:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 144]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1349
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 144]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1859
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1859:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s500
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s501
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s502
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1348
.1349:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1860
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1860:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1347:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1351
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s503
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s504
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s505
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s506
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s507
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1861
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1861:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1351:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1353
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s508
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s509
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s510
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s511
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1862
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1862:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1353:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1355
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s512
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s513
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s514
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1863
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1863:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1355:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1357
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s515
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1357:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1359
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s523
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1864
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1864:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1359:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1361
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s524
	mov r8, 3
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1865
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1865:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1866
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1866:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1361:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1363
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s526
	mov r8, 3
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1867
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1867:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1868
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1868:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1363:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1365
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s527
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1869
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1869:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1870
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1870:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1365:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1367
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s528
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s529
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1871
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1871:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1872
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1872:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1873
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1873:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1367:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1369
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s530
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s531
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1874
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1874:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1875
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1875:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1876
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1876:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1369:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1371
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s532
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1371:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1373
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s533
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1373:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1375
	mov rbx, 12
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1877
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1877:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s534
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s535
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1878
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1878:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1879
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1879:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1880
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1880:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1375:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1377
	mov rbx, 11
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s536
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s537
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1881
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1881:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 11
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1882
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1882:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1377:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1379
	mov rbx, 11
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s538
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s539
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1883
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1883:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 11
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1884
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1884:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1379:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1381
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s540
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s541
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s542
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1885
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1885:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1381:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1383
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s558
	mov r8, 3
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1886
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1886:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1887
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1887:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1383:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1385
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s559
	mov r8, 2
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1888
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1888:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1889
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1889:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1385:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1387
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s560
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1890
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1890:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1387:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1389
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s561
	mov r8, 3
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1891
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1891:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1892
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1892:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1389:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1391
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	mov rbx, rdi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1893
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1893:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1894
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1894:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1391:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1393
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1298
.1393:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1395
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1396
	mov rbx, 1
	mov rsi, qword _grallocator_stack.len
	mov rdi, qword [rsi + 0]
	sub rbx, rdi
	mov rsi, 8
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1895
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1895:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s564
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s565
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1398
.1396:
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	sub rsi, rbx
	mov rbx, qword _grallocator_stack
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1398:
	jmp .1298
.1395:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1400
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1401
	mov rbx, 2
	mov rsi, qword _grallocator_stack.len
	mov rdi, qword [rsi + 0]
	sub rbx, rdi
	mov rsi, 8
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1896
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1896:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s473
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s566
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s567
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1403
.1401:
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	sub rsi, rbx
	mov rbx, qword _grallocator_stack
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1403:
	jmp .1298
.1400:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1405
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, rdi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1897
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1897:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1898
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1898:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1899
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1899:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1405:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1407
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 56], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	mov rbx, rdi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1900
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1900:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1901
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1901:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1902
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1902:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1903
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1903:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1407:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1409
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1410
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _grallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _grallocator_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	mov r8, rdi
	mov r9, 14
	xor r10, r10
	cmp r8, r9
	setb r10b
	test r10, r10
	jnz .1904
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1904:
	mov r8, qword _grallocator_mask
	add rdi, r8
	mov r8, 0
	mov byte [rdi], r8b
	jmp .1412
.1410:
	mov rbx, _s568
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1412:
	jmp .1298
.1409:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1414
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1905
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1905:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s569
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s570
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s571
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s572
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s573
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1906
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1906:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1907
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1907:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1908
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1908:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1416
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1909
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1909:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s574
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s575
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s576
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s577
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s578
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1910
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1910:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1911
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1911:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1912
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1912:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1416:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1418
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1913
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1913:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s579
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s580
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s581
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s582
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s583
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1914
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1914:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1915
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1915:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1916
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1916:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1418:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1420
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1917
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1917:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s584
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s585
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s586
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s587
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s588
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1918
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1918:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1919
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1919:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1920
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1920:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1420:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1422
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1921
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1921:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s589
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s590
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s591
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s592
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s593
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1922
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1922:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1923
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1923:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1924
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1924:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1422:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1424
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1925
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1925:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s594
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s595
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s596
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s597
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s598
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1926
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1926:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1927
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1927:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1928
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1928:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1424:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1426
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1929
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1929:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s599
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s600
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s601
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s602
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s603
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1930
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1930:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1931
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1931:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1932
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1932:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1426:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1428
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1933
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1933:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s604
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s605
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s606
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s607
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s608
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1934
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1934:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1935
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1935:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1936
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1936:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1428:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1430
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1937
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1937:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s609
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s610
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s611
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s612
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s613
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1938
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1938:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1939
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1939:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1940
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1940:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1430:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1432
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1941
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1941:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s614
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s615
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s616
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s617
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s618
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1942
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1942:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1943
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1943:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1944
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1944:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1432:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1434
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s619
	mov rdi, 11
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s620
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1945
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1945:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1946
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1946:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1434:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1436
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s621
	mov rdi, 11
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s622
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.16.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1947
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1947:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1948
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1948:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1436:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1438
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s638
	mov rdi, 12
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s639
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.32.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1949
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1949:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1950
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1950:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1438:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1440
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s655
	mov rdi, 12
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s656
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1951
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1951:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1952
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1952:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1440:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1442
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1953
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1953:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, _s657
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s658
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s659
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s660
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s661
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1954
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1954:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1955
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1955:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1442:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1444
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1956
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1956:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, _s662
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s663
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s664
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.16.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s665
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s666
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1957
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1957:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1958
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1958:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1298
.1444:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1446
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s667
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.32.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s668
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s669
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1959
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1959:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1446:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1448
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _s670
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s671
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s672
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1960
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1960:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1448:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1450
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s673
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1961
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1961:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1298
.1450:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1452
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s674
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1962
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1962:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1963
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1963:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1452:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1454
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s675
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1964
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1964:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1965
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1965:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1966
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1966:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1454:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1456
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s676
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1967
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1967:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1968
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1968:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1969
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1969:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1970
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1970:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1456:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1458
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s677
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1971
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1971:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1972
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1972:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1973
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1973:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1974
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1974:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1975
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1975:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1458:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1460
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s678
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1976
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1976:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1977
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1977:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1978
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1978:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1979
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1979:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1980
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1980:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 3
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1981
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1981:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1460:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1462
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s679
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1982
	mov eax, 1
	mov edi, 2
	mov rsi, _s458
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1982:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1983
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1983:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1984
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1984:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1985
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1985:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1986
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1986:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 3
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1987
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1987:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 4
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1988
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1988:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1298
.1462:
	mov rbx, 0
	test rbx, rbx
	jnz .1989
	mov eax, 1
	mov edi, 2
	mov rsi, _s680
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1989:
.1463:
.1298:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1293
.1294:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 152
	ret
isprint_pp_escape:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 34
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1464
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1464:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 32
	xor rdi, rdi
	cmp rsi, rbx
	setae dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 126
	xor r8, r8
	cmp rsi, rbx
	setbe r8b
	and rdi, r8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 9
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	or rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
string_literal_pretty_printer:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	mov rbx, 0
	xor r9, r9
	cmp r8, rbx
	sete r9b
	push r9
	pop rbx
	test rbx, rbx
	jz .1466
	mov rbx, _s687
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1466:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1468
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call isprint_pp_escape
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1470
	mov rbx, _s688
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1472
.1470:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1472:
.1468:
	mov rbx, 1
	push rbx
.1473:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1474
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, rdi
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call isprint_pp_escape
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1475
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1477
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1479
.1477:
	mov rbx, _s689
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1479:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1480
.1475:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1481
	mov rbx, _s690
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1483
.1481:
	mov rbx, _s691
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
.1483:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1480:
	pop rbx
	inc rbx
	push rbx
	jmp .1473
.1474:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1484
	mov rbx, _s692
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.1484:
	mov rbx, _s693
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
stas.gen:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword _gbackend_type
	mov r8, qword [rbx + 0]
	mov rbx, 1
	xor r9, r9
	cmp r8, rbx
	sete r9b
	push r9
	pop rbx
	test rbx, rbx
	jz .1486
	mov rbx, _s388
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1488
	mov rbx, _s391
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s392
	mov rsi, 26
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s393
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s394
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1490
.1488:
	mov rbx, _s395
	mov rsi, 23
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s396
	mov rsi, 27
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s397
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1490:
	jmp .1487
.1486:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1492
	mov rbx, _s398
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s399
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s400
	mov rsi, 9
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s401
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s402
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1487
.1492:
	mov rbx, 0
	test rbx, rbx
	jnz .1990
	mov eax, 1
	mov edi, 2
	mov rsi, _s403
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1990:
.1493:
.1487:
	mov rbx, _s404
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s405
	mov rsi, 18
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s406
	mov rsi, 27
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s407
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s408
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s409
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s410
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s411
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s412
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s413
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s414
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword _gir_stream.len
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1494
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1496
	mov rbx, _s681
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1498
.1496:
	mov rbx, _s682
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1498:
	jmp .1495
.1494:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1500
	mov rbx, _s683
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1495
.1500:
	mov rbx, 0
	test rbx, rbx
	jnz .1991
	mov eax, 1
	mov edi, 2
	mov rsi, _s684
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1991:
.1501:
.1495:
	mov rbx, 0
	push rbx
.1502:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gslits.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1503
	pop rbx
	mov rsi, rbx
	mov rdi, _s685
	mov r8, 2
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s686
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1992
	mov eax, 1
	mov edi, 2
	mov rsi, _s466
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1992:
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword _gslits
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string_literal_pretty_printer
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1502
.1503:
	add rsp, 8
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1504
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1506
	mov rbx, _s694
	mov rsi, 23
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1508
.1506:
	mov rbx, _s695
	mov rsi, 25
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1508:
	jmp .1505
.1504:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1510
	mov rbx, _s696
	mov rsi, 14
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1505
.1510:
	mov rbx, 0
	test rbx, rbx
	jnz .1993
	mov eax, 1
	mov edi, 2
	mov rsi, _s697
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1993:
.1511:
.1505:
	mov rbx, 0
	push rbx
.1512:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _gglobal_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1513
	mov rbx, _s698
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gglobal_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1994
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1994:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gglobal_var_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1514
	mov rbx, _s699
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1515
.1514:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1517
	mov rbx, _s700
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1515
.1517:
	mov rbx, 0
	test rbx, rbx
	jnz .1995
	mov eax, 1
	mov edi, 2
	mov rsi, _s701
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1995:
.1518:
.1515:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _gglobal_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1996
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1996:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gglobal_var_context
	add rsi, rdi
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1512
.1513:
	add rsp, 8
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1519
	mov rbx, _s702
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s703
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s704
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1520
.1519:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1522
	mov rbx, _s705
	mov rsi, 14
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s706
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s707
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1520
.1522:
	mov rbx, 0
	test rbx, rbx
	jnz .1997
	mov eax, 1
	mov edi, 2
	mov rsi, _s708
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1997:
.1523:
.1520:
	mov rbx, _s709
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, qword _gfwrite_buffer
	mov rdi, qword _gfwrite_buffer.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	mov rax, rdi
	mov rdx, r8
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _gfwrite_buffer.len
	mov rsi, qword [rbx + 0]
	xor rbx, rbx
	cmp rax, rsi
	sete bl
	test rbx, rbx
	jnz .1998
	mov eax, 1
	mov edi, 2
	mov rsi, _s390
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1998:
	mov rbx, 0
	mov rsi, qword _gfwrite_buffer.len
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
usage:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s0
	mov rsi, 40
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s1
	mov rsi, 32
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s2
	mov rsi, 61
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s3
	mov rsi, 73
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s4
	mov rsi, 67
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s5
	mov rsi, 70
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s6
	mov rsi, 65
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s7
	mov rsi, 63
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s8
	mov rsi, 72
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s9
	mov rsi, 38
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse_backend_type:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s20
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1524
	mov rbx, 1
	mov rsi, qword _gbackend_type
	mov qword [rsi + 0], rbx
	jmp .1525
.1524:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s21
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1527
	mov rbx, 2
	mov rsi, qword _gbackend_type
	mov qword [rsi + 0], rbx
	jmp .1525
.1527:
	mov rbx, _s22
	mov rsi, 15
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s25
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1528:
.1525:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
execute_backend:
	sub rsp, 296
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	pop r8
	mov qword [rbx + 16], r8
	mov rbx, qword [_rs_p]
	pop r9
	mov qword [rbx + 24], r9
	pop r10
	mov qword [rbx + 32], r10
	mov rbx, qword _gbackend_type
	mov r11, qword [rbx + 0]
	mov rbx, 1
	xor r12, r12
	cmp r11, rbx
	sete r12b
	push r12
	pop rbx
	test rbx, rbx
	jz .1529
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s711
	mov r8, 4
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 32]
	mov r9, qword [rdi + 24]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov r9, qword [rdi + 8]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s712
	mov r8, 2
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s713
	mov r8, 7
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s714
	mov rsi, 13
	push rbx
	push rsi
	jmp .1530
.1529:
	mov rbx, qword _gbackend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1532
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s715
	mov r8, 4
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 32]
	mov r9, qword [rdi + 24]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s716
	mov r8, 2
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov r9, qword [rdi + 8]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s717
	mov r8, 3
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s718
	mov r8, 7
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1533
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s719
	mov r8, 7
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s720
	mov r8, 2
	mov qword [rbx], rdi
	push rsi
.1533:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, 0
	mov qword [rsi], rbx
	mov rbx, _s721
	mov rsi, 13
	push rbx
	push rsi
.1532:
.1530:
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call child_execve_and_shut_up
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 296
	ret
main:
	sub rsp, 91
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1535
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1535:
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 3], rbx
	mov rsi, 18446744073709551615
	mov rdi, qword _gfwrite_buffer.fd_loc
	mov qword [rdi + 0], rsi
	mov r8, 1
	mov r9, qword _gbackend_type
	mov qword [r9 + 0], r8
	mov r10, 0
	mov r11, 0
	mov r12, qword [_rs_p]
	mov qword [r12 + 35], r11
	mov qword [r12 + 43], r10
	mov r12, 0
	mov r13, 0
	mov r14, qword [_rs_p]
	mov qword [r14 + 51], r13
	mov qword [r14 + 59], r12
	mov r14, 0
	mov r15, qword [_rs_p]
	mov qword [r15 + 11], r14
	mov r15, qword _gdebug_symbols
	mov rcx, 0
	mov byte [r15], cl
	mov r15, 1
	push r15
.1537:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1538
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call args_a_b
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 19], rsi
	pop rdi
	mov qword [rbx + 27], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 27]
	mov r9, qword [rbx + 19]
	mov rbx, _s10
	mov r10, 2
	push r8
	push r9
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1539
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1541
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1541:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
	jmp .1540
.1539:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s11
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1544
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1545
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1545:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
	jmp .1540
.1544:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s12
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1548
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1549
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1549:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1551
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1551:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1540
.1548:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s13
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1554
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1555
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1555:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .1540
.1554:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s14
	mov r8, 6
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s15
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	or rsi, rbx
	push rsi
	pop rbx
	test rbx, rbx
	jz .1558
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1540
.1558:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s16
	mov r8, 9
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s17
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	or rsi, rbx
	push rsi
	pop rbx
	test rbx, rbx
	jz .1560
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	or rdi, rsi
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rsi, rsi
	mov sil, [rbx]
	or rdi, rsi
	push rdi
	pop rbx
	test rbx, rbx
	jz .1561
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1561:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1540
.1560:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s18
	mov r8, 10
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s19
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	or rsi, rbx
	push rsi
	pop rbx
	test rbx, rbx
	jz .1564
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	or rdi, rsi
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rsi, rsi
	mov sil, [rbx]
	or rdi, rsi
	push rdi
	pop rbx
	test rbx, rbx
	jz .1565
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1565:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1540
.1564:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1568
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1570
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1570:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 59], rsi
	jmp .1569
.1568:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1573
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1574
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1574:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 43], rsi
	jmp .1569
.1573:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1577
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse_backend_type
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1569
.1577:
	mov rbx, 0
	test rbx, rbx
	jnz .1999
	mov eax, 1
	mov edi, 2
	mov rsi, _s28
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.1999:
.1578:
.1569:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
.1567:
.1540:
	pop rbx
	inc rbx
	push rbx
	jmp .1537
.1538:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1579
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1581
	mov rbx, _s29
	mov rsi, 18
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s25
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1582
.1581:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1584
	mov rbx, _s30
	mov rsi, 19
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s25
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1584:
.1582:
.1579:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1585
	mov rbx, _s31
	mov rsi, 16
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s25
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1585:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1587
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gbackend_type
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	or rsi, r8
	push rsi
	pop rbx
	test rbx, rbx
	jz .1589
	mov rbx, _s32
	mov rsi, 3
	push rbx
	push rsi
	jmp .1591
.1589:
	mov rbx, _s33
	mov rsi, 5
	push rbx
	push rsi
.1591:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 35], rsi
	pop rdi
	mov qword [rbx + 43], rdi
	jmp .1592
.1587:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, _s34
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1593
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.1593:
.1592:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1595
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1595:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.parse
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1597
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1597:
	mov rbx, qword _gmain_fn_idx
	mov rsi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1144
	mov rbx, _s382
	mov rsi, 16
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s23
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s25
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s27
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1144:
	mov rbx, qword _gmain_fn_idx
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1599
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, _s385
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 67], rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov rbx, [rbx]
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_new_file_for_writing
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gfwrite_buffer.fd_loc
	pop rsi
	mov qword [rbx + 0], rsi
	jmp .1601
.1599:
	mov rbx, 1
	mov rsi, qword _gfwrite_buffer.fd_loc
	mov qword [rsi + 0], rbx
.1601:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.gen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1602
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1602:
	mov rbx, qword _gfwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1604
	mov rbx, _s710
	mov rsi, 39
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1604:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 67]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 43]
	mov r9, qword [rdi + 35]
	mov rdi, qword [_rs_p]
	mov r10, qword [rdi + 3]
	mov rdi, 0
	xor r11, r11
	cmp r10, rdi
	setne r11b
	push rbx
	push rsi
	push r8
	push r9
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call execute_backend
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gbackend_type
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	or rsi, r8
	push rsi
	pop rbx
	test rbx, rbx
	jz .1606
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1606:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1608
	mov rbx, qword [_rs_p]
	add rbx, 75
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, qword _gstring_buffer
	mov rsi, qword _gstring_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 83], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 43]
	mov r8, qword [rsi + 35]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string_buffer.generic_append_u64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 1
	add rsi, rbx
	push rsi
.1610:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1611
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword [_arg_p]
	add rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string_buffer.generic_append_u64
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1610
.1611:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string_buffer.generic_append_u64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 83]
	mov rbx, qword [_rs_p]
	add rbx, 75
	mov r8, 59
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1612
	mov rbx, _s730
	mov rsi, 29
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1612:
.1608:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
segment readable
_s0: db "stas 0.1.0 Copyright (C) 2022  l-m.dev", 10, 10, 0
_s1: db "USAGE: ./stas [OPTIONS] [FILE]", 10, 10, 0
_s2: db "	-o <output>       Specify '-o -' to dump assembly to stdout", 10, 0
_s3: db "	-g                Debug symbols. Most effective with the `nasm` backend", 10, 0
_s4: db "	-b <backend>      Assemblers `nasm` or `fasm` as compiler backend", 10, 0
_s5: db "	-r                Execute file after compiling. Arguments after this", 10, 0
_s6: db "	                  switch will ignored and passed to the program", 10, 0
_s7: db "	--dump-tok        Dump token information after scanning stage", 10, 0
_s8: db "	--dump-ir         Dump intermediate representation after parsing stage", 10, 0
_s9: db "	-h, --help        Show this message", 10, 10, 0
_s10: db "-o", 0
_s11: db "-b", 0
_s12: db "-g", 0
_s13: db "-r", 0
_s14: db "--help", 0
_s15: db "-h", 0
_s16: db "--dump-ir", 0
_s17: db "-h", 0
_s18: db "--dump-tok", 0
_s19: db "-h", 0
_s20: db "fasm", 0
_s21: db "nasm", 0
_s22: db "unknown backend", 0
_s23: db "[1m", 0
_s24: db "[31m", 0
_s25: db "FATAL: ", 0
_s26: db "[39m", 0
_s27: db "[22m", 0
_s28: db 27, "[1m", 27, "[31mstas.stas:188:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s29: db "supply output file", 0
_s30: db "supply backend type", 0
_s31: db "supply stas file", 0
_s32: db "a.o", 0
_s33: db "a.out", 0
_s34: db "-", 0
_s35: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s36: db "FATAL: Failed to open file '", 0
_s37: db "'", 10, 0
_s38: db "FATAL: Failed to stat the file descriptor", 10, 0
_s39: db "FATAL: Could not mmap file '", 0
_s40: db "'", 10, 0
_s41: db "FATAL: Failed to close file descriptor", 10, 0
_s42: db "unterminated string literal", 0
_s43: db ":", 0
_s44: db ":", 0
_s45: db ": ", 0
_s46: db 10, 0
_s47: db "escape character does not exist", 0
_s48: db "unhandled escape character", 0
_s49: db 27, "[1m", 27, "[31msrc/tokens.stas:394:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s50: db "file to include is not a string", 0
_s51: db "include", 0
_s52: db "{", 0
_s53: db "}", 0
_s54: db "->", 0
_s55: db "fn", 0
_s56: db "_breakpoint", 0
_s57: db "const", 0
_s58: db "assert", 0
_s59: db "argc", 0
_s60: db "argv", 0
_s61: db "ret", 0
_s62: db "if", 0
_s63: db "else", 0
_s64: db "elif", 0
_s65: db "while", 0
_s66: db "break", 0
_s67: db "continue", 0
_s68: db "+", 0
_s69: db "-", 0
_s70: db "*", 0
_s71: db "/", 0
_s72: db "%", 0
_s73: db "++", 0
_s74: db "--", 0
_s75: db "%%", 0
_s76: db ">>", 0
_s77: db "<<", 0
_s78: db "&", 0
_s79: db "|", 0
_s80: db "~", 0
_s81: db "!", 0
_s82: db "^", 0
_s83: db "swap", 0
_s84: db "dup", 0
_s85: db "over", 0
_s86: db "over2", 0
_s87: db "rot", 0
_s88: db "rot4", 0
_s89: db "drop", 0
_s90: db "=", 0
_s91: db "!=", 0
_s92: db ">", 0
_s93: db "<", 0
_s94: db ">=", 0
_s95: db "<=", 0
_s96: db ">s", 0
_s97: db "<s", 0
_s98: db ">=s", 0
_s99: db "<=s", 0
_s100: db "w8", 0
_s101: db "w16", 0
_s102: db "w32", 0
_s103: db "w64", 0
_s104: db "r8", 0
_s105: db "r16", 0
_s106: db "r32", 0
_s107: db "r64", 0
_s108: db "syscall0", 0
_s109: db "syscall1", 0
_s110: db "syscall2", 0
_s111: db "syscall3", 0
_s112: db "syscall4", 0
_s113: db "syscall5", 0
_s114: db "syscall6", 0
_s115: db "reserve", 0
_s116: db "auto", 0
_s117: db "pop", 0
_s118: db "unexpected EOF when parsing file to include", 0
_s119: db 27, "[1m", 27, "[31msrc/tokens.stas:380:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s120: db ":", 0
_s121: db ":", 0
_s122: db ": ", 0
_s123: db "name", 0
_s124: db "string_lit", 0
_s125: db "number_lit", 0
_s126: db "{", 0
_s127: db "}", 0
_s128: db "->", 0
_s129: db "fn", 0
_s130: db "_breakpoint", 0
_s131: db "const", 0
_s132: db "assert", 0
_s133: db "argc", 0
_s134: db "argv", 0
_s135: db "ret", 0
_s136: db "if", 0
_s137: db "else", 0
_s138: db "elif", 0
_s139: db "while", 0
_s140: db "break", 0
_s141: db "continue", 0
_s142: db "+", 0
_s143: db "-", 0
_s144: db "*", 0
_s145: db "/", 0
_s146: db "%", 0
_s147: db "++", 0
_s148: db "--", 0
_s149: db "%%", 0
_s150: db ">>", 0
_s151: db "<<", 0
_s152: db "&", 0
_s153: db "|", 0
_s154: db "~", 0
_s155: db "!", 0
_s156: db "^", 0
_s157: db "swap", 0
_s158: db "dup", 0
_s159: db "over", 0
_s160: db "over2", 0
_s161: db "rot", 0
_s162: db "rot4", 0
_s163: db "drop", 0
_s164: db "=", 0
_s165: db "!=", 0
_s166: db ">", 0
_s167: db "<", 0
_s168: db ">=", 0
_s169: db "<=", 0
_s170: db ">s", 0
_s171: db "<s", 0
_s172: db ">=s", 0
_s173: db "<=s", 0
_s174: db "w8", 0
_s175: db "w16", 0
_s176: db "w32", 0
_s177: db "w64", 0
_s178: db "r8", 0
_s179: db "r16", 0
_s180: db "r32", 0
_s181: db "r64", 0
_s182: db "syscall0", 0
_s183: db "syscall1", 0
_s184: db "syscall2", 0
_s185: db "syscall3", 0
_s186: db "syscall4", 0
_s187: db "syscall5", 0
_s188: db "syscall6", 0
_s189: db "reserve", 0
_s190: db "auto", 0
_s191: db "pop", 0
_s192: db 27, "[1m", 27, "[31msrc/tokens.stas:213:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s193: db " -> ", 0
_s194: db " -> ", 0
_s195: db " -> ", 0
_s196: db "unexpected EOF when parsing constant expression", 0
_s197: db "constant expression name must not be in instrinsic", 0
_s198: db 27, "[1m", 27, "[31msrc/parserdefs.stas:405:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s199: db "duplicate constant expression name as existing function name", 0
_s200: db 27, "[1m", 27, "[31msrc/parserdefs.stas:430:31: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s201: db 27, "[1m", 27, "[31msrc/parserdefs.stas:454:31: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s202: db "constant expression name as duplicate top level variable name", 0
_s203: db "a scope must follow a const expression decl", 0
_s204: db 27, "[1m", 27, "[31msrc/parserdefs.stas:443:50: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s205: db 27, "[1m", 27, "[31msrc/parser.stas:1216:13: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s206: db 27, "[1m", 27, "[31msrc/parserdefs.stas:394:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s207: db 27, "[1m", 27, "[31msrc/parserdefs.stas:373:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s208: db "unclosed scope for constant expression", 0
_s209: db "unexpected EOF when parsing function", 0
_s210: db "function name must not be an intrinsic", 0
_s211: db "function return and argument counts must be numbers", 0
_s212: db "new scope must proceed after function header", 0
_s213: db "a function name cannot begin with an an underscore", 0
_s214: db "duplicate function name", 0
_s215: db "function name already exists as variable name", 0
_s216: db "main", 0
_s217: db "the main function must accept and return zero values", 0
_s218: db 27, "[1m", 27, "[31msrc/parserdefs.stas:425:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s219: db 27, "[1m", 27, "[31msrc/parserdefs.stas:326:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s220: db 27, "[1m", 27, "[31msrc/parser.stas:294:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s221: db 27, "[1m", 27, "[31msrc/parser.stas:295:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s222: db 27, "[1m", 27, "[31msrc/parser.stas:63:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s223: db "unexpected EOF when parsing variable decl", 0
_s224: db "variable name must not be an intrinsic", 0
_s225: db "variable decl must not be a function", 0
_s226: db "variable decl must specify size in bytes", 0
_s227: db "duplicate top level variable name", 0
_s228: db 27, "[1m", 27, "[31msrc/parserdefs.stas:468:50: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s229: db "unknown toplevel token", 0
_s230: db 27, "[1m", 27, "[31msrc/parserdefs.stas:448:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s231: db 27, "[1m", 27, "[31msrc/parserdefs.stas:312:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s232: db 27, "[1m", 27, "[31msrc/eval.stas:8:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s233: db 27, "[1m", 27, "[31msrc/eval.stas:21:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s234: db 27, "[1m", 27, "[31msrc/eval.stas:15:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s235: db 27, "[1m", 27, "[31msrc/parser.stas:1258:25: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s236: db "constant expression must contain a value", 0
_s237: db "more than one unhandled value on left on the constant expression", 0
_s238: db 27, "[1m", 27, "[31msrc/parser.stas:31:15: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s239: db "backtrace", 0
_s240: db "[1m", 0
_s241: db "[33m", 0
_s242: db "[39m", 0
_s243: db "[22m", 0
_s244: db 27, "[1m", 27, "[31msrc/parser.stas:1283:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s245: db "unknown constant variable", 0
_s246: db "no value on stack to consume for assertion", 0
_s247: db 0
_s248: db "[1m", 0
_s249: db "[31m", 0
_s250: db ":", 0
_s251: db ":", 0
_s252: db ": ", 0
_s253: db "[39m", 0
_s254: db "[22m", 0
_s255: db "assertation failed, '", 0
_s256: db "'", 10, 0
_s257: db "assertation failed", 10, 0
_s258: db "not enough values to consume for operation", 0
_s259: db 27, "[1m", 27, "[31msrc/parserdefs.stas:349:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s260: db "duplicate variable name", 0
_s261: db 27, "[1m", 27, "[31msrc/parserdefs.stas:363:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s262: db "unexpected EOF when parsing pop", 0
_s263: db "expected name after pop", 0
_s264: db "cannot pop into a buffer", 0
_s265: db "not enought values on the stack to pop into an automatic variable", 0
_s266: db 27, "[1m", 27, "[31msrc/parser.stas:459:8: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s267: db "cannot pop into a buffer", 0
_s268: db "not enought values on the stack to pop into an automatic variable", 0
_s269: db 27, "[1m", 27, "[31msrc/parser.stas:484:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s270: db "unknown auto variable", 0
_s271: db "not enough values to consume for function call", 0
_s272: db 27, "[1m", 27, "[31msrc/parser.stas:542:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s273: db 27, "[1m", 27, "[31msrc/parser.stas:562:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s274: db "unknown function call or variable", 0
_s275: db "no value on stack to consume for if statement", 0
_s276: db 27, "[1m", 27, "[31msrc/parserdefs.stas:389:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s277: db "unexpected EOF when parsing if statement", 0
_s278: db "a scope must come after an if statement", 0
_s279: db "not inside while loop body", 0
_s280: db "not inside while loop body", 0
_s281: db "not inside while loop body", 0
_s282: db 27, "[1m", 27, "[31msrc/parser.stas:670:59: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s283: db "not inside while loop body", 0
_s284: db "no value on stack to consume for while header", 0
_s285: db "no value on stack to consume for else if statement", 0
_s286: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s287: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s288: db "unexpected EOF when parsing else statement", 0
_s289: db "a scope must come after an else statement", 0
_s290: db "the stack must remain the same with single branches", 0
_s291: db 27, "[1m", 27, "[31msrc/parser.stas:835:12: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s292: db "the stack must remain the same each with else if branch", 0
_s293: db "unexpected EOF when parsing else statement", 0
_s294: db "a scope must come after an else statement", 0
_s295: db "the stack must remain the same with single branches", 0
_s296: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s297: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s298: db 27, "[1m", 27, "[31msrc/parser.stas:886:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s299: db "unhandled data on the stack", 0
_s300: db "not enough values on the stack on function return", 0
_s301: db "unhandled data on the stack", 0
_s302: db "not enough values on the stack on function return", 0
_s303: db "unexpected EOF when parsing checked scope", 0
_s304: db "a number must appear after the arrow assert operator", 0
_s305: db "a scope must come after the arrow assert operator", 0
_s306: db "unknown function local token", 0
_s307: db "cannot define constant expression inside a constant expression", 0
_s308: db "unknown constant expression token", 0
_s309: db 27, "[1m", 27, "[31msrc/parser.stas:1306:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s310: db 27, "[1m", 27, "[31msrc/parser.stas:1307:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s311: db "unclosed scopes on parser finish", 0
_s312: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s313: db "tok[]	data	inst", 10, 10, 0
_s314: db "	", 0
_s315: db "	", 0
_s316: db "push_str", 0
_s317: db "push_num", 0
_s318: db "push_local_addr", 0
_s319: db "pop_local_stack_var", 0
_s320: db "push_local_stack_var", 0
_s321: db "push_global_var_name", 0
_s322: db "pop_global_stack_var", 0
_s323: db "push_global_stack_var", 0
_s324: db "push_argc", 0
_s325: db "push_argv", 0
_s326: db "do_cond_jmp", 0
_s327: db "do_jmp", 0
_s328: db "label", 0
_s329: db "fn_prelude", 0
_s330: db "fn_leave", 0
_s331: db "fn_call", 0
_s332: db "assert", 0
_s333: db "trap_breakpoint", 0
_s334: db "plus", 0
_s335: db "sub", 0
_s336: db "mul", 0
_s337: db "div", 0
_s338: db "mod", 0
_s339: db "inc", 0
_s340: db "dec", 0
_s341: db "divmod", 0
_s342: db "shr", 0
_s343: db "shl", 0
_s344: db "not", 0
_s345: db "b_and", 0
_s346: db "b_or", 0
_s347: db "b_not", 0
_s348: db "b_xor", 0
_s349: db "swap", 0
_s350: db "dup", 0
_s351: db "over", 0
_s352: db "over2", 0
_s353: db "rot", 0
_s354: db "rot4", 0
_s355: db "drop", 0
_s356: db "equ", 0
_s357: db "nequ", 0
_s358: db "gt", 0
_s359: db "lt", 0
_s360: db "gte", 0
_s361: db "lte", 0
_s362: db "s_gt", 0
_s363: db "s_lt", 0
_s364: db "s_gte", 0
_s365: db "s_lte", 0
_s366: db "w8", 0
_s367: db "w16", 0
_s368: db "w32", 0
_s369: db "w64", 0
_s370: db "r8", 0
_s371: db "r16", 0
_s372: db "r32", 0
_s373: db "r64", 0
_s374: db "syscall0", 0
_s375: db "syscall1", 0
_s376: db "syscall2", 0
_s377: db "syscall3", 0
_s378: db "syscall4", 0
_s379: db "syscall5", 0
_s380: db "syscall6", 0
_s381: db 27, "[1m", 27, "[31msrc/parserdefs.stas:290:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s382: db "no main function", 0
_s383: db 27, "[1m", 27, "[31msrc/dce.stas:10:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s384: db 27, "[1m", 27, "[31msrc/dce.stas:101:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s385: db ".tmp", 0
_s386: db "FATAL: Failed to open file '", 0
_s387: db "'", 10, 0
_s388: db "use64", 0
_s389: db 27, "[1m", 27, "[31msrc/write.stas:17:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s390: db 27, "[1m", 27, "[31msrc/write.stas:10:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s391: db "format ELF64", 0
_s392: db "section '.text' executable", 0
_s393: db "public _start", 0
_s394: db "public _exit", 0
_s395: db "format ELF64 executable", 0
_s396: db "segment readable executable", 0
_s397: db "entry _start", 0
_s398: db "%line 0+0 '", 0
_s399: db "'", 0
_s400: db "[BITS 64]", 0
_s401: db "[global _start]", 0
_s402: db "[section .text]", 0
_s403: db 27, "[1m", 27, "[31msrc/gen.stas:660:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s404: db "_start:", 0
_s405: db "	mov [_arg_p], rsp", 0
_s406: db "	mov qword [_rs_p], _rs_top", 0
_s407: db "	mov rbp, rsp", 0
_s408: db "	mov rsp, [_rs_p]", 0
_s409: db "	call main", 0
_s410: db "	xor rdi, rdi", 0
_s411: db "_exit:", 0
_s412: db "	mov eax, 60", 0
_s413: db "	syscall", 0
_s414: db "	nop", 0
_s415: db "%line ", 0
_s416: db "+0 '", 0
_s417: db "'", 0
_s418: db "	push ", 0
_s419: db "rbx", 0
_s420: db "rcx", 0
_s421: db "rsi", 0
_s422: db "rdi", 0
_s423: db "r8", 0
_s424: db "r9", 0
_s425: db "r10", 0
_s426: db "r11", 0
_s427: db "r12", 0
_s428: db "r13", 0
_s429: db "r14", 0
_s430: db "r15", 0
_s431: db "rdx", 0
_s432: db "rax", 0
_s433: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s434: db 27, "[1m", 27, "[31msrc/gen.stas:40:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s435: db "public ", 0
_s436: db "_a", 0
_s437: db "_b", 0
_s438: db "_c", 0
_s439: db "_d", 0
_s440: db "_e", 0
_s441: db "_f", 0
_s442: db "_g", 0
_s443: db ":", 0
_s444: db "	sub rsp, ", 0
_s445: db "	mov [_rs_p], rsp", 0
_s446: db "	mov rsp, rbp", 0
_s447: db "	mov rbp, rsp", 0
_s448: db "	mov rsp, [_rs_p]", 0
_s449: db "	add rsp, ", 0
_s450: db "	ret", 0
_s451: db "	mov rbp, rsp", 0
_s452: db "	mov rsp, [_rs_p]", 0
_s453: db "	call ", 0
_s454: db "	mov [_rs_p], rsp", 0
_s455: db "	mov rsp, rbp", 0
_s456: db 27, "[1m", 27, "[31msrc/x86.stas:178:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s457: db "	pop ", 0
_s458: db 27, "[1m", 27, "[31msrc/x86.stas:195:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s459: db "	test ", 0
_s460: db ", ", 0
_s461: db "	jnz .", 0
_s462: db "	mov eax, 1", 0
_s463: db "	mov edi, 2", 0
_s464: db "	mov rsi, _s", 0
_s465: db "	mov rdx, ", 0
_s466: db 27, "[1m", 27, "[31msrc/dce.stas:17:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s467: db "	syscall", 0
_s468: db "	mov rdi, 1", 0
_s469: db "	jmp _exit", 0
_s470: db 27, "[1m", 27, "[31msrc/x86.stas:189:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s471: db 27, "[1m", 27, "[31msrc/x86.stas:170:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s472: db 27, "[1m", 27, "[31msrc/x86.stas:171:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s473: db "	mov ", 0
_s474: db ", ", 0
_s475: db "_s", 0
_s476: db "	mov ", 0
_s477: db ", ", 0
_s478: db "qword [_rs_p]", 0
_s479: db "	add ", 0
_s480: db "	pop ", 0
_s481: db ", ", 0
_s482: db "	mov ", 0
_s483: db ", qword [_rs_p]", 0
_s484: db "	mov qword [", 0
_s485: db " + ", 0
_s486: db "], ", 0
_s487: db "	mov ", 0
_s488: db ", qword [_rs_p]", 0
_s489: db "qword [", 0
_s490: db " + ", 0
_s491: db "]", 0
_s492: db "qword _g", 0
_s493: db "	mov ", 0
_s494: db ", qword _g", 0
_s495: db "	mov qword [", 0
_s496: db " + ", 0
_s497: db "], ", 0
_s498: db "	mov ", 0
_s499: db ", qword _g", 0
_s500: db "qword [", 0
_s501: db " + ", 0
_s502: db "]", 0
_s503: db "	mov ", 0
_s504: db ", qword [_arg_p]", 0
_s505: db "	mov ", 0
_s506: db ", [", 0
_s507: db "]", 0
_s508: db "	mov ", 0
_s509: db ", qword [_arg_p]", 0
_s510: db "	add ", 0
_s511: db ", 8", 0
_s512: db "	test ", 0
_s513: db ", ", 0
_s514: db "	jz .", 0
_s515: db "	jmp .", 0
_s516: db 27, "[1m", 27, "[31msrc/x86.stas:201:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s517: db "	mov ", 0
_s518: db ", ", 0
_s519: db "	mov ", 0
_s520: db ", ", 0
_s521: db 27, "[1m", 27, "[31msrc/x86.stas:334:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s522: db "	pop ", 0
_s523: db "	db 0xcc", 0
_s524: db "add", 0
_s525: db ", ", 0
_s526: db "sub", 0
_s527: db "imul", 0
_s528: db "	xor rdx, rdx", 0
_s529: db "	div ", 0
_s530: db "	xor rdx, rdx", 0
_s531: db "	div ", 0
_s532: db "	inc ", 0
_s533: db "	dec ", 0
_s534: db "	xor rdx, rdx", 0
_s535: db "	div ", 0
_s536: db "	shr ", 0
_s537: db ", cl", 0
_s538: db "	shl ", 0
_s539: db ", cl", 0
_s540: db "	test ", 0
_s541: db ", ", 0
_s542: db "	sete ", 0
_s543: db "bl", 0
_s544: db "cl", 0
_s545: db "sil", 0
_s546: db "dil", 0
_s547: db "r8b", 0
_s548: db "r9b", 0
_s549: db "r10b", 0
_s550: db "r11b", 0
_s551: db "r12b", 0
_s552: db "r13b", 0
_s553: db "r14b", 0
_s554: db "r15b", 0
_s555: db "dl", 0
_s556: db "al", 0
_s557: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s558: db "and", 0
_s559: db "or", 0
_s560: db "	not ", 0
_s561: db "xor", 0
_s562: db "	mov ", 0
_s563: db ", ", 0
_s564: db "qword [rsp + ", 0
_s565: db "]", 0
_s566: db "qword [rsp + ", 0
_s567: db "]", 0
_s568: db "	add rsp, 8", 0
_s569: db "	xor ", 0
_s570: db ", ", 0
_s571: db "	cmp ", 0
_s572: db ", ", 0
_s573: db "	sete ", 0
_s574: db "	xor ", 0
_s575: db ", ", 0
_s576: db "	cmp ", 0
_s577: db ", ", 0
_s578: db "	setne ", 0
_s579: db "	xor ", 0
_s580: db ", ", 0
_s581: db "	cmp ", 0
_s582: db ", ", 0
_s583: db "	seta ", 0
_s584: db "	xor ", 0
_s585: db ", ", 0
_s586: db "	cmp ", 0
_s587: db ", ", 0
_s588: db "	setb ", 0
_s589: db "	xor ", 0
_s590: db ", ", 0
_s591: db "	cmp ", 0
_s592: db ", ", 0
_s593: db "	setae ", 0
_s594: db "	xor ", 0
_s595: db ", ", 0
_s596: db "	cmp ", 0
_s597: db ", ", 0
_s598: db "	setbe ", 0
_s599: db "	xor ", 0
_s600: db ", ", 0
_s601: db "	cmp ", 0
_s602: db ", ", 0
_s603: db "	setg ", 0
_s604: db "	xor ", 0
_s605: db ", ", 0
_s606: db "	cmp ", 0
_s607: db ", ", 0
_s608: db "	setl ", 0
_s609: db "	xor ", 0
_s610: db ", ", 0
_s611: db "	cmp ", 0
_s612: db ", ", 0
_s613: db "	setge ", 0
_s614: db "	xor ", 0
_s615: db ", ", 0
_s616: db "	cmp ", 0
_s617: db ", ", 0
_s618: db "	setle ", 0
_s619: db "	mov byte [", 0
_s620: db "], ", 0
_s621: db "	mov word [", 0
_s622: db "], ", 0
_s623: db "bx", 0
_s624: db "cx", 0
_s625: db "si", 0
_s626: db "di", 0
_s627: db "r8w", 0
_s628: db "r9w", 0
_s629: db "r10w", 0
_s630: db "r11w", 0
_s631: db "r12w", 0
_s632: db "r13w", 0
_s633: db "r14w", 0
_s634: db "r15w", 0
_s635: db "dx", 0
_s636: db "ax", 0
_s637: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s638: db "	mov dword [", 0
_s639: db "], ", 0
_s640: db "ebx", 0
_s641: db "ecx", 0
_s642: db "esi", 0
_s643: db "edi", 0
_s644: db "r8d", 0
_s645: db "r9d", 0
_s646: db "r10d", 0
_s647: db "r11d", 0
_s648: db "r12d", 0
_s649: db "r13d", 0
_s650: db "r14d", 0
_s651: db "r15d", 0
_s652: db "edx", 0
_s653: db "eax", 0
_s654: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s655: db "	mov qword [", 0
_s656: db "], ", 0
_s657: db "	xor ", 0
_s658: db ", ", 0
_s659: db "	mov ", 0
_s660: db ", [", 0
_s661: db "]", 0
_s662: db "	xor ", 0
_s663: db ", ", 0
_s664: db "	mov ", 0
_s665: db ", [", 0
_s666: db "]", 0
_s667: db "	mov ", 0
_s668: db ", [", 0
_s669: db "]", 0
_s670: db "	mov ", 0
_s671: db ", [", 0
_s672: db "]", 0
_s673: db "	syscall", 0
_s674: db "	syscall", 0
_s675: db "	syscall", 0
_s676: db "	syscall", 0
_s677: db "	syscall", 0
_s678: db "	syscall", 0
_s679: db "	syscall", 0
_s680: db 27, "[1m", 27, "[31msrc/gen.stas:560:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s681: db "section '.rodata'", 0
_s682: db "segment readable", 0
_s683: db "[section .rodata]", 0
_s684: db 27, "[1m", 27, "[31msrc/gen.stas:686:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s685: db "_s", 0
_s686: db ": db ", 0
_s687: db "0", 10, 0
_s688: db 34, 0
_s689: db ", ", 34, 0
_s690: db 34, ", ", 0
_s691: db ", ", 0
_s692: db 34, 0
_s693: db ", 0", 10, 0
_s694: db "section '.bss' writable", 0
_s695: db "segment readable writable", 0
_s696: db "[section .bss]", 0
_s697: db 27, "[1m", 27, "[31msrc/gen.stas:710:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s698: db "_g", 0
_s699: db ": rb ", 0
_s700: db ": resb ", 0
_s701: db 27, "[1m", 27, "[31msrc/gen.stas:722:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s702: db "_arg_p: rq 1", 0
_s703: db "_rs_p: rq 1", 0
_s704: db "_rs: rb 65536", 0
_s705: db "_arg_p: resq 1", 0
_s706: db "_rs_p: resq 1", 0
_s707: db "_rs: resb 65536", 0
_s708: db 27, "[1m", 27, "[31msrc/gen.stas:738:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s709: db "_rs_top:", 0
_s710: db "FATAL: Failed to close file descriptor", 10, 0
_s711: db "fasm", 0
_s712: db "-m", 0
_s713: db "1048576", 0
_s714: db "/usr/bin/fasm", 0
_s715: db "nasm", 0
_s716: db "-o", 0
_s717: db "-O0", 0
_s718: db "-felf64", 0
_s719: db "-Fdwarf", 0
_s720: db "-g", 0
_s721: db "/usr/bin/nasm", 0
_s722: db "/dev/null", 0
_s723: db "FATAL: Could not open /dev/null", 10, 0
_s724: db "FATAL: Could not open /dev/null as stdout", 10, 0
_s725: db "FATAL: Could not execve child", 0
_s726: db "FATAL: Could not wait for process", 0
_s727: db "FATAL: Child process was terminated by signal ", 0
_s728: db 27, "[1m", 27, "[31mlib/io.stas:294:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s729: db "FATAL: Could not fork child", 0
_s730: db "FATAL: Could not execve file", 10, 0
segment readable writable
_g__curbrk: rb 8
_gdebug_symbols: rb 1
_gbackend_type: rb 8
_gstring_buffer.len: rb 8
_gstring_buffer: rb 262144
_gtoken_stream: rb 917504
_gtoken_stream.len: rb 8
_gfunctions.len: rb 8
_gfunctions: rb 20480
_gglobal_var_context.len: rb 8
_gglobal_var_context: rb 12288
_gtoplevel_constants.len: rb 8
_gtoplevel_constants: rb 24576
_gir_stream.len: rb 8
_gir_stream: rb 262144
_gvar_context.len: rb 8
_gvar_context: rb 12288
_gscope_context.len: rb 8
_gscope_context: rb 14336
_gconst_stack.len: rb 8
_gconst_stack: rb 8192
_glabel_c: rb 8
_gmain_fn_idx: rb 8
_gpos: rb 8
_gfunction_context: rb 8
_gfunction_context_idx: rb 8
_gis_still_evaluating_constant: rb 8
_gsp.len: rb 8
_gsp: rb 4096
_gfwrite_buffer.len: rb 8
_gfwrite_buffer: rb 10240
_gfwrite_buffer.fd_loc: rb 8
_gslits.len: rb 8
_gslits: rb 8192
_grallocator_mask: rb 14
_grallocator_stack.len: rb 8
_grallocator_stack: rb 2048
_arg_p: rq 1
_rs_p: rq 1
_rs: rb 65536
_rs_top: