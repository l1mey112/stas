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
	test r9, r9
	jz .0
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
.0:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 21
	add rdi, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rdi
.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .3
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
	jmp .2
.3:
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
	test r9, r9
	jz .4
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
.4:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
	mov rsi, qword [_rs_p]
	add rsi, 8
	mov rdi, 20
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 28], rsi
.6:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .7
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
	jmp .6
.7:
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
fputpu:
	sub rsp, 52
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	pop rdi
	mov r8, qword [_rs_p]
	mov qword [r8 + 8], rdi
	mov r8, rbx
	mov r9, 0
	xor r10, r10
	cmp r8, r9
	sete r10b
	push rbx
	test r10, r10
	jz .16
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 48
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	add rbx, 16
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
	add rsp, 52
	ret
.16:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 44], rbx
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov rdi, 20
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 36], rsi
.18:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .19
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rsi
	mov rbx, 10
	pop rax
	xor rdx, rdx
	div rbx
	mov rbx, 48
	add rdx, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 36]
	mov byte [rdi], dl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rdi
	push rax
	jmp .18
.19:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .20
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	sub rsi, rdi
	push rsi
.22:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .23
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 36]
	mov rbx, 48
	mov byte [rdi], bl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rdi
	pop rbx
	dec rbx
	push rbx
	jmp .22
.23:
	add rsp, 8
.20:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 36]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 44]
	mov rbx, 1
	mov rax, rbx
	mov rdx, r8
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 52
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
	test rsi, rsi
	jz .36
	mov rbx, _s48
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
.36:
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
	test r8, r8
	jz .38
	mov rbx, _s46
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
	mov rbx, _s47
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
.38:
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
	test r8, r8
	jz .40
	mov rbx, _s435
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
	mov rbx, _s436
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
.40:
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
	test r8, r8
	jz .42
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
	test rdi, rdi
	jz .44
	mov rbx, _s49
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
	mov rbx, _s50
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
.44:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	jmp .46
.42:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.46:
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
	test rsi, rsi
	jz .47
	mov rbx, _s51
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
.47:
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
	test r10, r10
	jz .49
	mov rbx, qword [_rs_p]
	add rbx, 24
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, 18446744073709551516
	mov rsi, _s791
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
	test rdi, rdi
	jz .51
	mov rbx, _s792
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
.51:
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
	test rsi, rsi
	jz .53
	mov rbx, _s793
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
.53:
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
	test rsi, rsi
	jz .55
	mov rbx, _s794
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
.55:
	mov rbx, 0
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .50
.49:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setg r8b
	push rbx
	test r8, r8
	jz .58
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	test rsi, rsi
	jz .59
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.61:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .62
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
	test rsi, rsi
	jz .63
	mov rbx, _s795
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
.63:
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
	test r8, r8
	jz .65
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
	test r9, r9
	jz .67
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	mov rax, rdi
	mov rdi, rsi
	syscall
	push rbx
.67:
	add rsp, 8
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
	jmp .66
.65:
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
	test r8, r8
	jz .70
	mov rbx, _s796
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
	mov rsi, _s59
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
	jmp .66
.70:
	pop rbx
	mov rsi, rbx
	mov rdi, 255
	and rsi, rdi
	mov rdi, 127
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .72
	jmp .66
.72:
	pop rbx
	mov rsi, rbx
	mov rdi, 65535
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .74
	jmp .66
.74:
	mov rbx, 0
	test rbx, rbx
	jnz .1813
	mov eax, 1
	mov edi, 2
	mov rsi, _s797
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1813:
.75:
.66:
	add rsp, 8
	jmp .61
.62:
.59:
	jmp .50
.58:
	mov rbx, _s798
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
.76:
.50:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 48
	ret
Array64_c_c?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 8
	add rbx, r8
	mov rbx, [rbx]
	mov r8, 16
	add rdi, r8
	mov rdi, [rdi]
	xor r8, r8
	cmp rbx, rdi
	setae r8b
	test r8, r8
	jz .77
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.77:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, 8
	imul rbx, rdi
	mov rsi, [rsi]
	add rbx, rsi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	inc rbx
	mov qword [rsi], rbx
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array64_a_b?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r8, 8
	add r9, r8
	mov r9, [r9]
	xor r8, r8
	cmp rdi, r9
	setae r8b
	push rbx
	test r8, r8
	jz .83
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.83:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rdi, [rdi]
	add rsi, rdi
	mov rsi, [rsi]
	mov rbx, 1
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array64.init_with_buffer_sz_bytes:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	mov rdi, rbx
	mov r8, 8
	mov rax, rdi
	xor rdx, rdx
	div r8
	mov rdi, 0
	xor r8, r8
	cmp rdx, rdi
	sete r8b
	test r8, r8
	jnz .1814
	mov eax, 1
	mov edi, 2
	mov rsi, _s228
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.1814:
	mov rdi, 8
	mov rax, rbx
	xor rdx, rdx
	div rdi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 16
	add rdi, rbx
	mov qword [rdi], rax
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 0
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	pop rbx
	mov qword [rdi], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
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
.91:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .92
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
	test r8, r8
	jz .93
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.93:
	pop rbx
	pop rsi
	pop rdi
	inc rdi
	push rbx
	push rsi
	push rdi
	jmp .91
.92:
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
	test rdi, rdi
	jz .95
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.95:
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
.97:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .98
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
	jmp .97
.98:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memset:
	mov [_rs_p], rsp
	mov rsp, rbp
.99:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .100
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
	jmp .99
.100:
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
.101:
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	push rbx
	test r8, r8
	jz .102
	pop rbx
	inc rbx
	push rbx
	jmp .101
.102:
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
	test r8, r8
	jz .106
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.106:
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
argp_print:
	mov [_rs_p], rsp
	mov rsp, rbp
.108:
	mov rbx, 1
	test rbx, rbx
	jz .109
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call strlen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	mov rdi, 0
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	test r8, r8
	jz .110
	jmp .109
	jmp .112
.110:
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.112:
	jmp .108
.109:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
str_to_num:
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
.113:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .114
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
	mov rdi, r8
	mov r9, rdi
	mov r10, 48
	xor r11, r11
	cmp r9, r10
	setae r11b
	mov r9, 57
	xor r10, r10
	cmp rdi, r9
	setbe r10b
	and r11, r10
	test r11, r11
	jnz .1815
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1815:
	mov rdi, 48
	sub r8, rdi
	add rsi, r8
	inc rbx
	push rsi
	push rbx
	jmp .113
.114:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
get_lines_into_array:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	pop rdi
	add rdi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rdi
	pop rbx
	mov r8, rbx
	mov r9, qword [_rs_p]
	mov qword [r9 + 16], r8
	pop r9
	pop r10
	mov r11, qword [_rs_p]
	mov qword [r11 + 24], r10
	push r9
	push rbx
.115:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .116
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, 10
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	push rbx
	test r8, r8
	jz .117
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .119
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .121
.119:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .122
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	sub rsi, r8
	inc rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1816.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s229
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1816.1:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1817.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s229
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1817.2:
	pop rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .124
.122:
	jmp .116
.124:
.121:
	pop rbx
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	push rbx
.117:
	pop rbx
	inc rbx
	push rbx
	jmp .115
.116:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .125
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .127
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	sub rsi, r8
	inc rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1818.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s229
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1818.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1819.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s229
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1819.4:
.127:
.125:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
StasBackend.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .129
	mov rbx, _s774
	mov rsi, 4
	push rbx
	push rsi
	jmp .130
.129:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .132
	mov rbx, _s775
	mov rsi, 4
	push rbx
	push rsi
	jmp .130
.132:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1820
	mov eax, 1
	mov edi, 2
	mov rsi, _s776
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.1820:
	push rbx
	push rsi
.133:
.130:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
opened_files_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gopened_files.len]
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gopened_files
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, [_gopened_files.len]
	inc rbx
	mov [_gopened_files.len], rbx
	mov rbx, [_gopened_files.len]
	mov rsi, 128
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1821
	mov eax, 1
	mov edi, 2
	mov rsi, _s53
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1821:
	mov rbp, rsp
	mov rsp, [_rs_p]
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
	mov rbx, [_gstring_buffer.len]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r8, 8
	mov r10, 1
	add r8, r10
	add r9, r8
	add rbx, r9
	mov r8, rbx
	mov r9, 262144
	xor r10, r10
	cmp r8, r9
	setb r10b
	test r10, r10
	jnz .1822.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1822.1:
	mov r8, qword _gstring_buffer
	mov r9, [_gstring_buffer.len]
	add r8, r9
	mov r9, r8
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 0]
	mov qword [r9], r11
	mov r9, r8
	mov r10, 8
	add r9, r10
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 8]
	mov r10, qword [_rs_p]
	mov r12, qword [r10 + 0]
	push rbx
	push r8
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
	mov [_gstring_buffer.len], rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
new_empty_string:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gstring_buffer.len]
	mov rsi, 8
	mov rdi, 1
	add rsi, rdi
	add rbx, rsi
	mov rsi, 262144
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1823.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1823.2:
	mov rbx, qword _gstring_buffer
	mov rsi, [_gstring_buffer.len]
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 0
	mov qword [rsi], rdi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rdi, 0
	mov byte [rsi], dil
	mov rsi, [_gstring_buffer.len]
	mov rdi, 8
	mov r8, 1
	add rdi, r8
	add rsi, rdi
	mov [_gstring_buffer.len], rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
push_char:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gstring_buffer.len]
	mov rsi, 1
	add rbx, rsi
	mov rsi, 262144
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1824.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1824.3:
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
	mov rbx, [_gstring_buffer.len]
	inc rbx
	mov [_gstring_buffer.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
push_nul:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gstring_buffer.len]
	mov rsi, 1
	add rbx, rsi
	mov rsi, 262144
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1825.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1825.4:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, [_gstring_buffer.len]
	inc rbx
	mov [_gstring_buffer.len], rbx
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
	test r8, r8
	jz .134
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.134:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, 262144
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1826.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1826.5:
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov [_gstring_buffer.len], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, qword [_rs_p]
	pop rdi
	mov qword [rsi + 8], rdi
	mov rsi, qword [_rs_p]
	pop r8
	mov qword [rsi + 16], r8
	mov rsi, qword [_rs_p]
	mov r9, qword [rsi + 16]
	mov rsi, 8
	add r9, rsi
	mov rsi, qword [_rs_p]
	mov r10, qword [rsi + 16]
	mov r10, [r10]
	add r9, r10
	mov rsi, r9
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 8]
	mov r10, qword [_rs_p]
	mov r12, qword [r10 + 0]
	push r9
	push rsi
	push r11
	push r12
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
	mov rbx, [_gstring_buffer.len]
	mov rsi, 8
	add rbx, rsi
	mov rsi, 262144
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1827.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1827.6:
	mov rbx, qword _gstring_buffer
	mov rsi, [_gstring_buffer.len]
	add rbx, rsi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, [_gstring_buffer.len]
	mov rsi, 8
	add rbx, rsi
	mov [_gstring_buffer.len], rbx
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
	test r8, r8
	jz .136
	mov rbx, _s154
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.136:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .139
	mov rbx, _s155
	mov rsi, 10
	push rbx
	push rsi
	jmp .137
.139:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .141
	mov rbx, _s156
	mov rsi, 10
	push rbx
	push rsi
	jmp .137
.141:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .143
	mov rbx, _s157
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.143:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .145
	mov rbx, _s158
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.145:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .147
	mov rbx, _s159
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.147:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .149
	mov rbx, _s160
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.149:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .151
	mov rbx, _s161
	mov rsi, 11
	push rbx
	push rsi
	jmp .137
.151:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .153
	mov rbx, _s162
	mov rsi, 5
	push rbx
	push rsi
	jmp .137
.153:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .155
	mov rbx, _s163
	mov rsi, 6
	push rbx
	push rsi
	jmp .137
.155:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .157
	mov rbx, _s164
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.157:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .159
	mov rbx, _s165
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.159:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .161
	mov rbx, _s166
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.161:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .163
	mov rbx, _s167
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.163:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .165
	mov rbx, _s168
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.165:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .167
	mov rbx, _s169
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.167:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .169
	mov rbx, _s170
	mov rsi, 5
	push rbx
	push rsi
	jmp .137
.169:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .171
	mov rbx, _s171
	mov rsi, 5
	push rbx
	push rsi
	jmp .137
.171:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .173
	mov rbx, _s172
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.173:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .175
	mov rbx, _s173
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.175:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .177
	mov rbx, _s174
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.177:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .179
	mov rbx, _s175
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.179:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .181
	mov rbx, _s176
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.181:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .183
	mov rbx, _s177
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.183:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .185
	mov rbx, _s178
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.185:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .187
	mov rbx, _s179
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.187:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .189
	mov rbx, _s180
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.189:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .191
	mov rbx, _s181
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.191:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .193
	mov rbx, _s182
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.193:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .195
	mov rbx, _s183
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.195:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .197
	mov rbx, _s184
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.197:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .199
	mov rbx, _s185
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.199:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .201
	mov rbx, _s186
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.201:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .203
	mov rbx, _s187
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.203:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .205
	mov rbx, _s188
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.205:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .207
	mov rbx, _s189
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.207:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .209
	mov rbx, _s190
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.209:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .211
	mov rbx, _s191
	mov rsi, 5
	push rbx
	push rsi
	jmp .137
.211:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .213
	mov rbx, _s192
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.213:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .215
	mov rbx, _s193
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.215:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .217
	mov rbx, _s194
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.217:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .219
	mov rbx, _s195
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.219:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .221
	mov rbx, _s196
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.221:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .223
	mov rbx, _s197
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.223:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .225
	mov rbx, _s198
	mov rsi, 1
	push rbx
	push rsi
	jmp .137
.225:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .227
	mov rbx, _s199
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.227:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .229
	mov rbx, _s200
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.229:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .231
	mov rbx, _s201
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.231:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .233
	mov rbx, _s202
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.233:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .235
	mov rbx, _s203
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.235:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .237
	mov rbx, _s204
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.237:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .239
	mov rbx, _s205
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.239:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .241
	mov rbx, _s206
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.241:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .243
	mov rbx, _s207
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.243:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .245
	mov rbx, _s208
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.245:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .247
	mov rbx, _s209
	mov rsi, 2
	push rbx
	push rsi
	jmp .137
.247:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .249
	mov rbx, _s210
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.249:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .251
	mov rbx, _s211
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.251:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .253
	mov rbx, _s212
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.253:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .255
	mov rbx, _s213
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.255:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .257
	mov rbx, _s214
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.257:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .259
	mov rbx, _s215
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.259:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .261
	mov rbx, _s216
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.261:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .263
	mov rbx, _s217
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.263:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .265
	mov rbx, _s218
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.265:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .267
	mov rbx, _s219
	mov rsi, 8
	push rbx
	push rsi
	jmp .137
.267:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .269
	mov rbx, _s220
	mov rsi, 7
	push rbx
	push rsi
	jmp .137
.269:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .271
	mov rbx, _s221
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.271:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .273
	mov rbx, _s222
	mov rsi, 3
	push rbx
	push rsi
	jmp .137
.273:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .275
	mov rbx, _s223
	mov rsi, 4
	push rbx
	push rsi
	jmp .137
.275:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1828
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1828:
	push rbx
	push rsi
.276:
.137:
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
	mov rbx, _s73
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
	jz .277
	mov rbx, 4
	push rbx
	jmp .278
.277:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s74
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
	mov rbx, 5
	push rbx
	jmp .278
.280:
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
	jz .282
	mov rbx, 6
	push rbx
	jmp .278
.282:
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
	jz .284
	mov rbx, 7
	push rbx
	jmp .278
.284:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s77
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
	jz .286
	mov rbx, 8
	push rbx
	jmp .278
.286:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s78
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
	jz .288
	mov rbx, 9
	push rbx
	jmp .278
.288:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s79
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
	jz .290
	mov rbx, 10
	push rbx
	jmp .278
.290:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s80
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
	jz .292
	mov rbx, 11
	push rbx
	jmp .278
.292:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s81
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
	jz .294
	mov rbx, 12
	push rbx
	jmp .278
.294:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s82
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
	jz .296
	mov rbx, 13
	push rbx
	jmp .278
.296:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s83
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
	jz .298
	mov rbx, 15
	push rbx
	jmp .278
.298:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s84
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
	jz .300
	mov rbx, 16
	push rbx
	jmp .278
.300:
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
	jz .302
	mov rbx, 17
	push rbx
	jmp .278
.302:
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
	jz .304
	mov rbx, 18
	push rbx
	jmp .278
.304:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s87
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
	jz .306
	mov rbx, 19
	push rbx
	jmp .278
.306:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s88
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
	jz .308
	mov rbx, 20
	push rbx
	jmp .278
.308:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s89
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
	jz .310
	mov rbx, 21
	push rbx
	jmp .278
.310:
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
	jz .312
	mov rbx, 22
	push rbx
	jmp .278
.312:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s91
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
	jz .314
	mov rbx, 23
	push rbx
	jmp .278
.314:
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
	jz .316
	mov rbx, 24
	push rbx
	jmp .278
.316:
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
	jz .318
	mov rbx, 25
	push rbx
	jmp .278
.318:
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
	jz .320
	mov rbx, 26
	push rbx
	jmp .278
.320:
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
	jz .322
	mov rbx, 27
	push rbx
	jmp .278
.322:
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
	jz .324
	mov rbx, 28
	push rbx
	jmp .278
.324:
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
	jz .326
	mov rbx, 29
	push rbx
	jmp .278
.326:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s98
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
	mov rbx, 30
	push rbx
	jmp .278
.328:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s99
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
	jz .330
	mov rbx, 31
	push rbx
	jmp .278
.330:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s100
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
	jz .332
	mov rbx, 32
	push rbx
	jmp .278
.332:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s101
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
	jz .334
	mov rbx, 33
	push rbx
	jmp .278
.334:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s102
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
	jz .336
	mov rbx, 70
	push rbx
	jmp .278
.336:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s103
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
	jz .338
	mov rbx, 34
	push rbx
	jmp .278
.338:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s104
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
	jz .340
	mov rbx, 35
	push rbx
	jmp .278
.340:
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
	jz .342
	mov rbx, 36
	push rbx
	jmp .278
.342:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s106
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
	jz .344
	mov rbx, 37
	push rbx
	jmp .278
.344:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s107
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
	jz .346
	mov rbx, 38
	push rbx
	jmp .278
.346:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s108
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
	jz .348
	mov rbx, 39
	push rbx
	jmp .278
.348:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s109
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
	jz .350
	mov rbx, 40
	push rbx
	jmp .278
.350:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s110
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
	mov rbx, 41
	push rbx
	jmp .278
.352:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s111
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
	jz .354
	mov rbx, 42
	push rbx
	jmp .278
.354:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s112
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
	jz .356
	mov rbx, 43
	push rbx
	jmp .278
.356:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s113
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
	jz .358
	mov rbx, 44
	push rbx
	jmp .278
.358:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s114
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
	jz .360
	mov rbx, 45
	push rbx
	jmp .278
.360:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s115
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
	jz .362
	mov rbx, 46
	push rbx
	jmp .278
.362:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s116
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
	jz .364
	mov rbx, 47
	push rbx
	jmp .278
.364:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s117
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
	jz .366
	mov rbx, 48
	push rbx
	jmp .278
.366:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s118
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
	jz .368
	mov rbx, 49
	push rbx
	jmp .278
.368:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s119
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
	jz .370
	mov rbx, 50
	push rbx
	jmp .278
.370:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s120
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
	jz .372
	mov rbx, 51
	push rbx
	jmp .278
.372:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s121
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
	jz .374
	mov rbx, 52
	push rbx
	jmp .278
.374:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s122
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
	jz .376
	mov rbx, 53
	push rbx
	jmp .278
.376:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s123
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
	jz .378
	mov rbx, 54
	push rbx
	jmp .278
.378:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s124
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
	jz .380
	mov rbx, 55
	push rbx
	jmp .278
.380:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s125
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
	jz .382
	mov rbx, 56
	push rbx
	jmp .278
.382:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s126
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
	jz .384
	mov rbx, 57
	push rbx
	jmp .278
.384:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s127
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
	jz .386
	mov rbx, 58
	push rbx
	jmp .278
.386:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s128
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
	jz .388
	mov rbx, 59
	push rbx
	jmp .278
.388:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s129
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
	jz .390
	mov rbx, 60
	push rbx
	jmp .278
.390:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s130
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
	jz .392
	mov rbx, 61
	push rbx
	jmp .278
.392:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s131
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
	jz .394
	mov rbx, 62
	push rbx
	jmp .278
.394:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s132
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
	jz .396
	mov rbx, 63
	push rbx
	jmp .278
.396:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s133
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
	jz .398
	mov rbx, 64
	push rbx
	jmp .278
.398:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s134
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
	jz .400
	mov rbx, 65
	push rbx
	jmp .278
.400:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s135
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
	jz .402
	mov rbx, 66
	push rbx
	jmp .278
.402:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s136
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
	jz .404
	mov rbx, 67
	push rbx
	jmp .278
.404:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s137
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
	jz .406
	mov rbx, 68
	push rbx
	jmp .278
.406:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s138
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
	jz .408
	mov rbx, 69
	push rbx
	jmp .278
.408:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s139
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
	jz .410
	mov rbx, 71
	push rbx
	jmp .278
.410:
	mov rbx, 1
	push rbx
.411:
.278:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
token_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gtoken_stream.len]
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 24
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 12
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 4
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gtoken_stream.len]
	inc rbx
	mov [_gtoken_stream.len], rbx
	mov rbx, [_gtoken_stream.len]
	mov rsi, 32768
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1829
	mov eax, 1
	mov edi, 2
	mov rsi, _s64
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1829:
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
	mov esi, [rsi]
	mov rdi, rsi
	mov r8, [_gopened_files.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1830.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s55
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1830.1:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gopened_files
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
	mov rsi, _s151
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
	mov rbx, _s152
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
	mov rbx, _s153
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
print_normalise_tabs:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	pop rbx
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 8], rdi
	mov r8, 0
	mov r9, qword [_rs_p]
	mov qword [r9 + 16], r8
	push rbx
.412:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .413
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, 9
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	push rbx
	test r8, r8
	jz .414
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	pop rbx
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	sub rdi, r9
	dec rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r8, 1
	mov r10, 1
	mov rax, r10
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, r9
	mov r9, rdi
	mov rdi, r8
	syscall
	mov rsi, _s231
	mov rdi, 4
	mov r8, 1
	mov r10, 1
	mov rax, r10
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	push rbx
.414:
	pop rbx
	inc rbx
	push rbx
	jmp .412
.413:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	pop rbx
	sub rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
Token.print_file_loc:
	sub rsp, 112
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1831.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1831.1:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, qword [_rs_p]
	add rsi, 8
	mov rdi, 80
	mov r8, qword [_rs_p]
	add r8, 88
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov esi, [rsi]
	mov rbx, 1
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov r8d, [r8]
	mov rdi, r8
	mov r9, [_gopened_files.len]
	xor r10, r10
	cmp rdi, r9
	setb r10b
	test r10, r10
	jnz .1832.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s55
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1832.2:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _gopened_files
	add r8, rdi
	mov rdi, r8
	mov r9, 8
	add rdi, r9
	mov rdi, [rdi]
	mov r9, 16
	add r8, r9
	mov r8, [r8]
	mov r9, qword [_rs_p]
	add r9, 88
	push rsi
	push rbx
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call get_lines_into_array
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	add rsi, 88
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1833.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 94
	syscall
	mov rdi, 1
	jmp _exit
.1833.1:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	add rsi, 88
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1834.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 94
	syscall
	mov rdi, 1
	jmp _exit
.1834.2:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call print_normalise_tabs
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	imul rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 4
	add r8, rdi
	mov r8d, [r8]
	sub r8, rbx
	add rsi, r8
	push rsi
.416:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .417
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call putc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	dec rbx
	push rbx
	jmp .416
.417:
	add rsp, 8
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	push rsi
.418:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .419
	mov rbx, 126
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call putc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	dec rbx
	push rbx
	jmp .418
.419:
	add rsp, 8
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s29
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
	mov rbx, _s30
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s59
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
	add rsp, 112
	ret
token_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.420:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .421
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1835.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1835.2:
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
	mov rbx, 12
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
	mov rdi, 12
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .422
	mov rbx, _s225
	mov rsi, 4
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 16
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
	jmp .423
.422:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .425
	mov rbx, _s226
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
	mov rbx, 16
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
	jmp .423
.425:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .427
	mov rbx, _s227
	mov rsi, 4
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 16
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
	jmp .423
.427:
	add rsp, 8
.428:
.423:
	mov rbx, 1
	mov rsi, _s59
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
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.print_file_loc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .420
.421:
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gopened_files.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1836.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s55
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1836.3:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gopened_files
	add rbx, rsi
	mov rbx, [rbx]
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
	mov rbx, _s56
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
	mov rbx, _s57
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
	mov rbx, _s58
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
	mov rbx, _s282
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
	mov rbx, _s283
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
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1837.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1837.3:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, rsi
	mov r8, [_gopened_files.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1838.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s55
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1838.4:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gopened_files
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
	mov rbx, _s284
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
	mov rbx, _s285
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
	mov rbx, _s286
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
	mov rbx, _s287
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
	mov rbx, _s288
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
log.time.start:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .432
	mov rbx, 1
	mov rsi, qword _gtimespec_start
	mov rdi, 228
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	test rsi, rsi
	jz .434
	mov rbx, _s45
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
.434:
.432:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
log.time.end:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .436
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s142
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
	mov rbx, _s143
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s144
	mov rsi, 6
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
	mov rsi, qword [_rs_p]
	mov rdi, 228
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	test rsi, rsi
	jz .438
	mov rbx, _s145
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
.438:
	mov rbx, qword [_rs_p]
	mov rbx, [rbx]
	mov rsi, qword _gtimespec_start
	mov rsi, [rsi]
	sub rbx, rsi
	mov rsi, 1000000000
	imul rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, qword _gtimespec_start
	mov r8, 8
	add rdi, r8
	mov rdi, [rdi]
	sub rsi, rdi
	add rbx, rsi
	mov rsi, 1000000
	mov rax, rbx
	xor rdx, rdx
	div rsi
	mov rbx, 2
	push rdx
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s146
	mov rsi, 1
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 6
	mov rsi, 2
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputpu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s147
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
	mov rbx, _s148
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
	mov rbx, _s149
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .440
.436:
	add rsp, 8
	add rsp, 8
.440:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
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
	test r8, r8
	jz .441
	mov rbx, 1
	push rbx
	jmp .442
.441:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .444
	mov rbx, 1
	push rbx
	jmp .442
.444:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .446
	mov rbx, 1
	push rbx
	jmp .442
.446:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .448
	mov rbx, 1
	push rbx
	jmp .442
.448:
	mov rbx, 0
	push rbx
.449:
.442:
	pop rbx
	pop rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse_escape_ch:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .450
	mov rbx, 39
	push rbx
	jmp .451
.450:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .453
	mov rbx, 34
	push rbx
	jmp .451
.453:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .455
	mov rbx, 92
	push rbx
	jmp .451
.455:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .457
	mov rbx, 7
	push rbx
	jmp .451
.457:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .459
	mov rbx, 8
	push rbx
	jmp .451
.459:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .461
	mov rbx, 12
	push rbx
	jmp .451
.461:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .463
	mov rbx, 10
	push rbx
	jmp .451
.463:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .465
	mov rbx, 13
	push rbx
	jmp .451
.465:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .467
	mov rbx, 9
	push rbx
	jmp .451
.467:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .469
	mov rbx, 11
	push rbx
	jmp .451
.469:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .471
	mov rbx, 96
	push rbx
	jmp .451
.471:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.472:
.451:
	pop rbx
	pop rsi
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
stas.scan_file:
	sub rsp, 149
	mov [_rs_p], rsp
	mov rsp, rbp
.511:
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
	call open_and_mmap_fp
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 24], rdi
	mov rbx, [_gopened_files.len]
	mov r8, qword [_rs_p]
	mov qword [r8 + 16], rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call opened_files_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 41], rbx
	mov rsi, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 49], rsi
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 57], rdi
	mov r8, qword [_rs_p]
	add r8, 65
	mov r9, 0
	mov byte [r8], r9b
.473:
	mov rbx, 1
	test rbx, rbx
	jz .474
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .475
	jmp .474
.475:
.477:
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
	jz .478
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .479
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .481
.479:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.481:
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
	test rbx, rbx
	jz .482
	jmp .478
.482:
	jmp .477
.478:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .484
	jmp .474
.484:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 68], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 76], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 84], r8
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r10, qword [rbx + 41]
	add r9, r10
	xor rbx, rbx
	mov bl, [r9]
	mov r9, rbx
	mov r10, 39
	xor r11, r11
	cmp r9, r10
	sete r11b
	mov r9, 34
	xor r10, r10
	cmp rbx, r9
	sete r10b
	or r11, r10
	test r11, r11
	jz .486
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 92], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_empty_string
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 100], rsi
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rdi, 0
	mov byte [rbx], dil
.488:
	mov rbx, 1
	test rbx, rbx
	jz .489
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	add rdi, r8
	xor rbx, rbx
	mov bl, [rdi]
	mov rdi, 10
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	test r8, r8
	jz .490
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .492
.490:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.492:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .493
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s54
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
.493:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 109], rbx
	mov rsi, qword [_rs_p]
	add rsi, 108
	xor rdi, rdi
	mov dil, [rsi]
	test rdi, rdi
	jz .495
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
	call parse_escape_ch
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .497
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s60
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
.497:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 100]
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 0
	mov byte [rbx], sil
	jmp .488
.495:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 92]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .499
	jmp .489
.499:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .501
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 1
	mov byte [rbx], sil
	jmp .488
	jmp .502
.501:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 10
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .504
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	inc rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 49], rdi
.504:
.502:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 100]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 109]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .488
.489:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 100]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 108
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .505
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s61
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
.505:
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
	add rbx, 65
	xor r8, r8
	mov r8b, [rbx]
	test r8, r8
	jz .507
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .509
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s62
	mov rsi, 16
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 100]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s63
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.509:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 100]
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
	jmp .512
.507:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 2
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 100]
	mov r9, qword [_rs_p]
	mov r11, qword [r9 + 41]
	mov r9, qword [_rs_p]
	mov r12, qword [r9 + 68]
	sub r11, r12
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.512:
	jmp .473
	jmp .487
.486:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 96
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .514
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 125], rbx
.515:
	mov rbx, 1
	test rbx, rbx
	jz .516
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
	test rbx, rbx
	jz .517
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s65
	mov r9, 30
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
.517:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .519
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .520
.519:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .522
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	dec rdi
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 92
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	mov rbx, 2
	sub r8, rbx
	add rsi, r8
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 92
	xor r8, r8
	cmp rbx, rsi
	sete r8b
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 41]
	dec r9
	add rsi, r9
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 92
	xor r9, r9
	cmp rbx, rsi
	sete r9b
	and r8, r9
	or rdi, r8
	test rdi, rdi
	jz .523
	jmp .516
.523:
	jmp .520
.522:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.525:
.520:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 125], rsi
	jmp .515
.516:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 68]
	inc rdi
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 117], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 125]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	test r8, r8
	jz .526
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s66
	mov r9, 23
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
	jmp .527
.526:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 117]
	mov rbx, 92
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	and rdi, r8
	test rdi, rdi
	jz .529
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s67
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
	jmp .527
.529:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .531
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 117]
	mov rbx, 92
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	and rdi, r8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	seta r8b
	or rdi, r8
	test rdi, rdi
	jz .532
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s68
	mov r9, 50
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
.532:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 68]
	mov rbx, 2
	add rdi, rbx
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse_escape_ch
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .534
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s69
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
.534:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 117], rsi
.531:
.527:
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
	mov r8, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r10, qword [rbx + 16]
	mov rbx, 3
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 117]
	mov r11, qword [_rs_p]
	mov r13, qword [r11 + 41]
	mov r11, qword [_rs_p]
	mov r14, qword [r11 + 68]
	sub r13, r14
	push r8
	push r9
	push r10
	push rbx
	push r12
	push r13
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .473
	jmp .487
.514:
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
	test rdi, rdi
	jz .537
.538:
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
	test rdi, rdi
	jz .539
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
	test rbx, rbx
	jz .540
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 149
	ret
.540:
	jmp .538
.539:
	jmp .473
.537:
.487:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 45
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .542
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
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
	test r8, r8
	jz .544
	mov rbx, qword [_rs_p]
	add rbx, 67
	mov rsi, 1
	mov byte [rbx], sil
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
	mov qword [rbx + 68], r8
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 76], r9
.544:
.542:
.546:
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
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .547
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .548
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
	test r8, r8
	sete r8b
	test r8, r8
	jz .550
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .552
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 68]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 68], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	dec rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 76], rdi
.552:
.550:
.548:
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
	test rbx, rbx
	jz .554
	jmp .547
.554:
	jmp .546
.547:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .556
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .473
.556:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 68]
	add rsi, rdi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 68]
	sub rdi, r8
	mov rbx, qword [_rs_p]
	mov qword [rbx + 133], rdi
	mov qword [rbx + 141], rsi
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor r8, r8
	mov r8b, [rbx]
	test r8, r8
	jz .558
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s70
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
.558:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .560
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 3
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 141]
	mov r11, qword [r9 + 133]
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call str_to_num
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .562
	pop rbx
	not rbx
	inc rbx
	push rbx
.562:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 68]
	sub rsi, rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .564
.560:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rdi, qword [rbx + 133]
	mov rbx, _s72
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
	jz .565
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .473
.565:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 141]
	mov r10, qword [rbx + 133]
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
	test r8, r8
	jz .567
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rdi, qword [rbx + 133]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .569
.567:
	mov rbx, 0
	push rbx
.569:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 68]
	sub rsi, rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.564:
	jmp .473
.474:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .570
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s140
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
.570:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 149
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
	test r8, r8
	jz .572
	mov rbx, _s360
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.572:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .575
	mov rbx, _s361
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.575:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .577
	mov rbx, _s362
	mov rsi, 15
	push rbx
	push rsi
	jmp .573
.577:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .579
	mov rbx, _s363
	mov rsi, 19
	push rbx
	push rsi
	jmp .573
.579:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .581
	mov rbx, _s364
	mov rsi, 20
	push rbx
	push rsi
	jmp .573
.581:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .583
	mov rbx, _s365
	mov rsi, 20
	push rbx
	push rsi
	jmp .573
.583:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .585
	mov rbx, _s366
	mov rsi, 20
	push rbx
	push rsi
	jmp .573
.585:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .587
	mov rbx, _s367
	mov rsi, 21
	push rbx
	push rsi
	jmp .573
.587:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .589
	mov rbx, _s368
	mov rsi, 9
	push rbx
	push rsi
	jmp .573
.589:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .591
	mov rbx, _s369
	mov rsi, 9
	push rbx
	push rsi
	jmp .573
.591:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .593
	mov rbx, _s370
	mov rsi, 11
	push rbx
	push rsi
	jmp .573
.593:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .595
	mov rbx, _s371
	mov rsi, 6
	push rbx
	push rsi
	jmp .573
.595:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .597
	mov rbx, _s372
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.597:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .599
	mov rbx, _s373
	mov rsi, 10
	push rbx
	push rsi
	jmp .573
.599:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .601
	mov rbx, _s374
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.601:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .603
	mov rbx, _s375
	mov rsi, 7
	push rbx
	push rsi
	jmp .573
.603:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .605
	mov rbx, _s376
	mov rsi, 6
	push rbx
	push rsi
	jmp .573
.605:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .607
	mov rbx, _s377
	mov rsi, 15
	push rbx
	push rsi
	jmp .573
.607:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .609
	mov rbx, _s378
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.609:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .611
	mov rbx, _s379
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.611:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .613
	mov rbx, _s380
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.613:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .615
	mov rbx, _s381
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.615:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .617
	mov rbx, _s382
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.617:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .619
	mov rbx, _s383
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.619:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .621
	mov rbx, _s384
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.621:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .623
	mov rbx, _s385
	mov rsi, 6
	push rbx
	push rsi
	jmp .573
.623:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .625
	mov rbx, _s386
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.625:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .627
	mov rbx, _s387
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.627:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .629
	mov rbx, _s388
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.629:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .631
	mov rbx, _s389
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.631:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .633
	mov rbx, _s390
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.633:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .635
	mov rbx, _s391
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.635:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .637
	mov rbx, _s392
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.637:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .639
	mov rbx, _s393
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.639:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .641
	mov rbx, _s394
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.641:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .643
	mov rbx, _s395
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.643:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .645
	mov rbx, _s396
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.645:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .647
	mov rbx, _s397
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.647:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .649
	mov rbx, _s398
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.649:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .651
	mov rbx, _s399
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.651:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .653
	mov rbx, _s400
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.653:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .655
	mov rbx, _s401
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.655:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .657
	mov rbx, _s402
	mov rsi, 2
	push rbx
	push rsi
	jmp .573
.657:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .659
	mov rbx, _s403
	mov rsi, 2
	push rbx
	push rsi
	jmp .573
.659:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .661
	mov rbx, _s404
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.661:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .663
	mov rbx, _s405
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.663:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .665
	mov rbx, _s406
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.665:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .667
	mov rbx, _s407
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.667:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .669
	mov rbx, _s408
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.669:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .671
	mov rbx, _s409
	mov rsi, 5
	push rbx
	push rsi
	jmp .573
.671:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .673
	mov rbx, _s410
	mov rsi, 2
	push rbx
	push rsi
	jmp .573
.673:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .675
	mov rbx, _s411
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.675:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .677
	mov rbx, _s412
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.677:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .679
	mov rbx, _s413
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.679:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .681
	mov rbx, _s414
	mov rsi, 2
	push rbx
	push rsi
	jmp .573
.681:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .683
	mov rbx, _s415
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.683:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .685
	mov rbx, _s416
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.685:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .687
	mov rbx, _s417
	mov rsi, 3
	push rbx
	push rsi
	jmp .573
.687:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .689
	mov rbx, _s418
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.689:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .691
	mov rbx, _s419
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.691:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .693
	mov rbx, _s420
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.693:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .695
	mov rbx, _s421
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.695:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .697
	mov rbx, _s422
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.697:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .699
	mov rbx, _s423
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.699:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .701
	mov rbx, _s424
	mov rsi, 8
	push rbx
	push rsi
	jmp .573
.701:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1839
	mov eax, 1
	mov edi, 2
	mov rsi, _s425
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.1839:
	push rbx
	push rsi
.702:
.573:
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
	mov rbx, [_gir_stream.len]
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 4
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gir_stream.len]
	inc rbx
	mov [_gir_stream.len], rbx
	mov rbx, [_gir_stream.len]
	mov rsi, 16384
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1840
	mov eax, 1
	mov edi, 2
	mov rsi, _s257
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1840:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s357
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
.703:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .704
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1841.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1841.1:
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
	mov rbx, _s358
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
	mov rbx, _s359
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
	mov rsi, _s59
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
	jmp .703
.704:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gvar_context.len]
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gvar_context
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 12
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 4
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gvar_context.len]
	inc rbx
	mov [_gvar_context.len], rbx
	mov rbx, [_gvar_context.len]
	mov rsi, 512
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1842
	mov eax, 1
	mov edi, 2
	mov rsi, _s295
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1842:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
scope_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 24
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 20
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 12
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 4
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gscope_context.len]
	inc rbx
	mov [_gscope_context.len], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 512
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1843
	mov eax, 1
	mov edi, 2
	mov rsi, _s312
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1843:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
functions_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunctions.len]
	mov rsi, 40
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 29
	add rdi, r8
	mov byte [rdi], sil
	pop rsi
	mov rdi, rbx
	mov r8, 28
	add rdi, r8
	mov byte [rdi], sil
	pop rsi
	mov rdi, rbx
	mov r8, 24
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 20
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 4
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gfunctions.len]
	mov rsi, 40
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 30
	add rsi, rdi
	mov rdi, 4294967295
	mov dword [rsi], edi
	mov rsi, 34
	add rbx, rsi
	mov rsi, 0
	mov dword [rbx], esi
	mov rbx, [_gfunctions.len]
	inc rbx
	mov [_gfunctions.len], rbx
	mov rbx, [_gfunctions.len]
	mov rsi, 512
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1844
	mov eax, 1
	mov edi, 2
	mov rsi, _s256
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1844:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
toplevel_constants_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 12
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, [_gtoplevel_constants.len]
	inc rbx
	mov [_gtoplevel_constants.len], rbx
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1845
	mov eax, 1
	mov edi, 2
	mov rsi, _s242
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1845:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
global_var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gglobal_var_context.len]
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gglobal_var_context
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rsi
	pop rsi
	mov rdi, rbx
	mov r8, 12
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov rdi, rbx
	mov r8, 4
	add rdi, r8
	mov dword [rdi], esi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gglobal_var_context.len]
	inc rbx
	mov [_gglobal_var_context.len], rbx
	mov rbx, [_gglobal_var_context.len]
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1846
	mov eax, 1
	mov edi, 2
	mov rsi, _s266
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1846:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1847
	mov eax, 1
	mov edi, 2
	mov rsi, _s270
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1847:
	mov rbx, qword _gconst_stack
	mov rsi, [_gconst_stack.len]
	mov rdi, 8
	imul rsi, rdi
	add rbx, rsi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, [_gconst_stack.len]
	inc rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1848
	mov eax, 1
	mov edi, 2
	mov rsi, _s272
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1848:
	mov rbx, qword _gconst_stack
	mov rsi, [_gconst_stack.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, 8
	imul rsi, rdi
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top_e:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1849
	mov eax, 1
	mov edi, 2
	mov rsi, _s271
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1849:
	mov rbx, qword _gconst_stack
	mov rsi, [_gconst_stack.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, 8
	imul rsi, rdi
	add rbx, rsi
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
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1850.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1850.2:
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
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1851.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1851.3:
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
	test r10, r10
	jz .705
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.705:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 24
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .708
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
	jmp .706
.708:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 25
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .710
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
	jmp .706
.710:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 31
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .712
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
	jmp .706
.712:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 34
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .714
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
	jmp .706
.714:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 39
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .716
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	jmp .706
.716:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 19
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .718
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.718:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 20
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .720
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	sub rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.720:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 21
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .722
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.722:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 22
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .724
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	mov rax, rbx
	xor rdx, rdx
	div rsi
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.724:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 23
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .726
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	mov rax, rbx
	xor rdx, rdx
	div rsi
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.726:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 26
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .728
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	mov rax, rbx
	xor rdx, rdx
	div rsi
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
	jmp .706
.728:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 27
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .730
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	mov rcx, rsi
	shr rbx, cl
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.730:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 28
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .732
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	mov rcx, rsi
	shl rbx, cl
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.732:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 29
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .734
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	and rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.734:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 30
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .736
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	or rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.736:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 32
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .738
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.738:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 33
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .740
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	push rbx
	push rsi
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
	jmp .706
.740:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 35
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .742
	mov rbx, qword _gconst_stack
	mov rsi, [_gconst_stack.len]
	mov rdi, 2
	sub rsi, rdi
	mov rdi, 8
	imul rsi, rdi
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.742:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 40
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .744
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.744:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 41
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .746
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.746:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 42
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .748
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.748:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 43
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .750
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.750:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 44
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .752
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.752:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 45
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .754
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setbe dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.754:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .756
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setg dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.756:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 47
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .758
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.758:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 48
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .760
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setge dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.760:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 49
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .762
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setle dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.762:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 37
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 3
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .764
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	push rdi
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
	jmp .706
.764:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 36
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 3
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .766
	mov rbx, qword _gconst_stack
	mov rsi, [_gconst_stack.len]
	mov rdi, 3
	sub rsi, rdi
	mov rdi, 8
	imul rsi, rdi
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .706
.766:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 38
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, [_gconst_stack.len]
	mov rsi, 4
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	and rdi, r8
	test rdi, rdi
	jz .768
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	pop rdi
	pop r8
	push rdi
	push rsi
	push rbx
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
	jmp .706
.768:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.769:
.706:
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1852.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1852.4:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .770
	mov rbx, [_gsp.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.772:
	mov rbx, 1
	test rbx, rbx
	jz .773
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gsp.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1853.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s276
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1853.1:
	mov rdi, 4
	imul rsi, rdi
	mov rdi, qword _gsp
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, _s277
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
	mov rbx, _s38
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
	mov rbx, _s39
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
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1854.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1854.5:
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
	mov rbx, _s41
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
	mov rbx, _s42
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
	mov rsi, _s59
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
	test r8, r8
	jz .774
	jmp .773
.774:
	pop rbx
	dec rbx
	push rbx
	jmp .772
.773:
	add rsp, 8
.770:
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
	mov rbx, [_gsp.len]
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1855
	mov eax, 1
	mov edi, 2
	mov rsi, _s260
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1855:
	mov rbx, qword _gsp
	mov rsi, [_gsp.len]
	mov rdi, 4
	imul rsi, rdi
	add rbx, rsi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gsp.len]
	inc rbx
	mov [_gsp.len], rbx
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
.776:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .777
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
	jmp .776
.777:
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
	mov rbx, [_gsp.len]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jz .778
	mov rbx, [_gpos]
	mov rsi, _s292
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.778:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	sub rbx, rdi
	mov [_gsp.len], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, [_gpos]
	push rsi
	push rbx
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
	mov rbx, [_gglobal_var_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .780
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.780:
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
.782:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .783
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gglobal_var_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1856.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1856.1:
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
	jz .784
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.784:
	pop rbx
	inc rbx
	push rbx
	jmp .782
.783:
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
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .786
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.786:
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
.788:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .789
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoplevel_constants.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1857.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1857.1:
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
	jz .790
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.790:
	pop rbx
	inc rbx
	push rbx
	jmp .788
.789:
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
	mov rbx, [_gfunctions.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .792
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.792:
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
.794:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .795
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1858.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1858.1:
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
	jz .796
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.796:
	pop rbx
	inc rbx
	push rbx
	jmp .794
.795:
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
	mov rbx, [_gvar_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .798
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.798:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, [_gvar_context.len]
	mov r8, 1
	sub rdi, r8
	push rdi
.800:
	mov rbx, 1
	test rbx, rbx
	jz .801
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1859.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s293
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1859.1:
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
	jz .802
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.802:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .804
	jmp .801
.804:
	pop rbx
	dec rbx
	push rbx
	jmp .800
.801:
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
	mov r9, [_gtoken_stream.len]
	xor r10, r10
	cmp r8, r9
	setb r10b
	test r10, r10
	jnz .1860.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1860.6:
	mov r8, 28
	imul rdi, r8
	mov r8, qword _gtoken_stream
	add rdi, r8
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r8, r9
	mov r10, [_gtoplevel_constants.len]
	xor r11, r11
	cmp r8, r10
	setb r11b
	test r11, r11
	jnz .1861.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1861.2:
	mov r8, 24
	imul r9, r8
	mov r8, qword _gtoplevel_constants
	add r9, r8
	mov r8, 12
	add r9, r8
	mov r9d, [r9]
	mov r8, r9
	mov r10, [_gtoken_stream.len]
	xor r11, r11
	cmp r8, r10
	setb r11b
	test r11, r11
	jnz .1862.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1862.7:
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
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1863.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1863.8:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, 12
	add rsi, rdi
	mov rdi, 3
	mov dword [rsi], edi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1864.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1864.9:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, [_gtoplevel_constants.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1865.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1865.3:
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
parse.push_early_ret:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 10
	mov dword [rsi], edi
	mov rsi, 12
	add rbx, rsi
	mov rsi, 0
	mov dword [rbx], esi
	mov rbx, [_gscope_context.len]
	inc rbx
	mov [_gscope_context.len], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 512
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1866
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1866:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.push_early_ret_with_pos:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 10
	mov dword [rsi], edi
	mov rsi, 12
	add rbx, rsi
	mov rsi, [_gpos]
	mov dword [rbx], esi
	mov rbx, [_gscope_context.len]
	inc rbx
	mov [_gscope_context.len], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 512
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .1867
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1867:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.fn_decl:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .806
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1868.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1868.1:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1869.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1869.1:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s246
	mov rdi, 38
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1870.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1870.10:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.806:
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, [_gpos]
	mov rdi, 4
	add rsi, rdi
	mov [_gpos], rsi
	mov rsi, [_gpos]
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	test r8, r8
	jz .808
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s247
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1871.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1871.11:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.808:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1872.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1872.12:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .810
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s248
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1873.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1873.13:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.810:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1874.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1874.14:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 12
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
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1875.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1875.15:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	test rdi, rdi
	jz .812
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s249
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1876.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1876.16:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.812:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1877.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1877.17:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .814
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s250
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1878.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1878.18:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.814:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1879.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1879.19:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
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
	test r8, r8
	jz .816
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s251
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1880.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1880.20:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.816:
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
	test rsi, rsi
	jz .818
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s252
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1881.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1881.21:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.818:
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
	test rbx, rbx
	jz .820
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s253
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1882.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1882.22:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.820:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1883.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1883.23:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 3
	add rdi, rbx
	mov rbx, rdi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1884.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1884.24:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rdi
	mov rbx, [_gfunctions.len]
	mov r8, 40
	imul rbx, r8
	mov r8, qword _gfunctions
	add rbx, r8
	mov [_gfunction_context], rbx
	mov rbx, [_gfunctions.len]
	mov [_gfunction_context_idx], rbx
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r10, qword [rbx + 8]
	mov rbx, [_gir_stream.len]
	mov r11, 0
	mov r12, 0
	mov r13, qword [_rs_p]
	mov r14, qword [r13 + 8]
	mov r13, r14
	mov r15, 8
	add r13, r15
	mov r14, [r14]
	mov r15, _s254
	mov rcx, 4
	push r8
	push r9
	push r10
	push rbx
	push r11
	push r12
	push r13
	push r14
	push r15
	push rcx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .822
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
	test rdi, rdi
	jz .824
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s255
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1885.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1885.25:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.824:
	mov rbx, [_gfunctions.len]
	mov [_gmain_fn_idx], rbx
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .826
.822:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.826:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call functions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 14
	mov rdi, [_gfunction_context_idx]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .1886
	mov eax, 1
	mov edi, 2
	mov rsi, _s258
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1886:
	mov rbx, [_gvar_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .1887
	mov eax, 1
	mov edi, 2
	mov rsi, _s259
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1887:
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
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, [_gpos]
	mov rdi, 2
	add rsi, rdi
	mov [_gpos], rsi
	mov rsi, [_gpos]
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	test r8, r8
	jz .827
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s261
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1888.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1888.26:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.827:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1889.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1889.27:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 67
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .829
	mov rbx, 1
	push rbx
	jmp .831
.829:
	mov rbx, 2
	push rbx
.831:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1890.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1890.28:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 12
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 1
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	test r8, r8
	jz .832
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s262
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1891.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1891.29:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.832:
	mov rbx, 16
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
	test rsi, rsi
	jz .834
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s263
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1892.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1892.30:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.834:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1893.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1893.31:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .836
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1894.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1894.32:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
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
	test r8, r8
	jz .838
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, [_gpos]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
.838:
.836:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1895.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1895.33:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .840
	mov rbx, [_gpos]
	mov rsi, _s264
	mov rdi, 40
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1896.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1896.34:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.840:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1897.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1897.35:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 12
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 67
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push rsi
	test r8, r8
	jz .842
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1898.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1898.36:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	jmp .844
.842:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1899.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1899.37:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 8
	imul rbx, rsi
	push rbx
.844:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.fn_complex_body_tokens:
	sub rsp, 317
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1900.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1900.38:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
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
	test r9, r9
	jz .845
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
	mov rdi, [_gvar_context.len]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setne r8b
	test r8, r8
	jz .847
	mov rbx, [_gvar_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.849:
	mov rbx, 1
	test rbx, rbx
	jz .850
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1901.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s293
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1901.2:
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
	jz .851
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s294
	mov rdi, 23
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1902.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1902.39:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.851:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .853
	jmp .850
.853:
	pop rbx
	dec rbx
	push rbx
	jmp .849
.850:
	add rsp, 8
.847:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 24], rsi
	pop rdi
	mov r8, [_gfunction_context]
	mov r9, 24
	add r8, r9
	mov r8d, [r8]
	mov r9, [_gpos]
	mov r10, 2
	sub r9, r10
	push rbx
	push r8
	push r9
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunction_context]
	mov rsi, 24
	add rbx, rsi
	mov rsi, [_gfunction_context]
	mov rdi, 24
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 24]
	add rsi, r8
	mov dword [rbx], esi
	mov rbx, [_gfunction_context]
	mov rsi, 29
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .846
.845:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 69
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	or r9, r8
	push rbx
	test r9, r9
	jz .856
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1903.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1903.40:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 69
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rdi
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rsi
	setae r8b
	test r8, r8
	jz .857
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s296
	mov rdi, 14
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1904.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1904.41:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.857:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1905.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1905.42:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .859
	mov rbx, [_gpos]
	mov rsi, _s297
	mov rdi, 25
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1906.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1906.43:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.859:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1907.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1907.44:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov qword [rdi + 48], rsi
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 56], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 40]
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .861
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1908.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s293
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1908.3:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 64], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	test r8, r8
	jz .863
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .865
	mov rbx, [_gpos]
	mov rsi, _s298
	mov rdi, 24
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1909.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1909.45:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
	jmp .867
.865:
	mov rbx, [_gpos]
	mov rsi, _s299
	mov rdi, 60
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1910.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1910.46:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
	jmp .864
.863:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .869
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .870
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rax
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 72]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .872
	mov rbx, [_gpos]
	mov rsi, _s300
	mov rdi, 65
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.872:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 72]
	sub rbx, rdi
	mov [_gsp.len], rbx
	mov rbx, 4
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 72]
	mov rsi, 32
	mov rcx, rsi
	shl rdi, cl
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 64]
	mov rsi, 8
	add r8, rsi
	mov r8d, [r8]
	or rdi, r8
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .874
.870:
	mov rbx, 1
	mov rsi, [_gpos]
	dec rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 64]
	mov rsi, 8
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.874:
	jmp .864
.869:
	mov rbx, 0
	test rbx, rbx
	jnz .1911
	mov eax, 1
	mov edi, 2
	mov rsi, _s301
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1911:
.875:
.864:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.861:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .876
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .878
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1912.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1912.2:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	test r8, r8
	jz .880
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .882
	mov rbx, [_gpos]
	mov rsi, _s302
	mov rdi, 24
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1913.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1913.47:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
	jmp .884
.882:
	mov rbx, [_gpos]
	mov rsi, _s303
	mov rdi, 60
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1914.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1914.48:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.884:
	jmp .881
.880:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .886
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .887
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 88], rax
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 88]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .889
	mov rbx, [_gpos]
	mov rsi, _s304
	mov rdi, 65
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.889:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 88]
	sub rbx, rdi
	mov [_gsp.len], rbx
	mov rbx, 7
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 48]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .891
.887:
	mov rbx, 1
	mov rsi, [_gpos]
	dec rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 48]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.891:
	jmp .881
.886:
	mov rbx, 0
	test rbx, rbx
	jnz .1915
	mov eax, 1
	mov edi, 2
	mov rsi, _s305
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1915:
.892:
.881:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.878:
.876:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .893
	mov rbx, [_gpos]
	mov rsi, _s306
	mov rdi, 16
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1916.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1916.49:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.893:
	jmp .846
.856:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .896
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1917.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1917.50:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 96], rbx
	mov rsi, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov qword [rdi + 104], rsi
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 112], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 96]
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 104], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 104]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .897
	mov rbx, 16
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunction_context_idx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jz .899
	mov rbx, [_gfunction_context]
	mov rsi, 29
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gfunction_context]
	mov rsi, 30
	add rbx, rsi
	mov rsi, [_glabel_c]
	mov rdi, rsi
	inc rdi
	mov [_glabel_c], rdi
	mov dword [rbx], esi
.899:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
	mov rsi, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1918.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1918.2:
	mov rsi, 40
	imul rdi, rsi
	mov rsi, qword _gfunctions
	add rdi, rsi
	mov edi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .901
	mov rbx, [_gpos]
	mov rsi, _s307
	mov rdi, 46
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.901:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1919.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1919.3:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 104]
	mov rbx, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1920.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1920.4:
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
	mov qword [rsi + 112], rbx
.897:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .903
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 104], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 104]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .905
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1921.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s293
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1921.4:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 120], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 120]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	test r8, r8
	jz .907
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 120]
	mov rsi, 8
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gpos]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .908
.907:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .910
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rax
	mov rbx, 5
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 128]
	mov rsi, 32
	mov rcx, rsi
	shl rdi, cl
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 120]
	mov rsi, 8
	add r8, rsi
	mov r8d, [r8]
	or rdi, r8
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov rbx, [_gpos]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .908
.910:
	mov rbx, 0
	test rbx, rbx
	jnz .1922
	mov eax, 1
	mov edi, 2
	mov rsi, _s308
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1922:
.911:
.908:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
.905:
.903:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .912
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 104], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 104]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .914
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1923.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1923.3:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gglobal_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 136], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 136]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	test r8, r8
	jz .916
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gpos]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .917
.916:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .919
	mov rbx, 8
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, [_gpos]
	push rax
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .917
.919:
	mov rbx, 0
	test rbx, rbx
	jnz .1924
	mov eax, 1
	mov edi, 2
	mov rsi, _s309
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1924:
.920:
.917:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
.914:
.912:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .921
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 104], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 104]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .923
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 144], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 144]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .925
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, [_gpos]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	dec rbx
	mov [_gpos], rbx
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
.925:
.923:
.921:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .927
	mov rbx, [_gpos]
	mov rsi, _s310
	mov rdi, 33
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1925.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1925.51:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.927:
	jmp .846
.896:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .930
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .931
	mov rbx, [_gpos]
	mov rsi, _s311
	mov rdi, 45
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1926.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1926.52:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.931:
	mov rbx, [_gsp.len]
	dec rbx
	mov [_gsp.len], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 152], rbx
	mov rsi, 3
	mov rdi, [_gsp.len]
	mov r8, 0
	mov r9, [_gpos]
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 152]
	mov r10, [_glabel_c]
	mov r12, r10
	inc r12
	mov [_glabel_c], r12
	mov r12, [_gvar_context.len]
	push rsi
	push rdi
	push r8
	push r9
	push r11
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 152]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .933
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s313
	mov rdi, 40
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1927.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1927.53:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.933:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1928.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1928.54:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .935
	mov rbx, [_gpos]
	mov rsi, _s314
	mov rdi, 39
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1929.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1929.55:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.935:
	jmp .846
.930:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .938
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	mov rsi, 13
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 160]
	mov rdi, [_gpos]
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	mov rsi, [_gsp.len]
	mov rdi, 0
	mov r8, [_gpos]
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 160]
	mov r9, 0
	mov r11, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r8
	push r10
	push r9
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .846
.938:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .940
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .941
	mov rbx, [_gpos]
	mov rsi, _s315
	mov rdi, 26
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1930.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1930.56:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.941:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 168], rbx
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	push rsi
.943:
	mov rbx, 1
	test rbx, rbx
	jz .944
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1931.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1931.2:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 176], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 176]
	mov r8d, [r8]
	mov rdi, 9
	xor r9, r9
	cmp r8, rdi
	sete r9b
	push rbx
	test r9, r9
	jz .945
	mov rbx, 12
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 176]
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 168], rbx
	jmp .944
.945:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .947
	jmp .944
.947:
	pop rbx
	dec rbx
	push rbx
	jmp .943
.944:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .949
	mov rbx, [_gpos]
	mov rsi, _s316
	mov rdi, 26
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1932.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1932.57:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.949:
	jmp .846
.940:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .952
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .953
	mov rbx, [_gpos]
	mov rsi, _s317
	mov rdi, 26
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1933.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1933.58:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.953:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 184], rbx
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	push rsi
.955:
	mov rbx, 1
	test rbx, rbx
	jz .956
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1934.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1934.3:
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
	test r8, r8
	jz .957
	pop rbx
	mov rsi, rbx
	dec rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1935.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1935.4:
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
	jnz .1936
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1936:
	mov rdi, 12
	mov r8, 16
	add rsi, r8
	mov esi, [rsi]
	mov r8, [_gpos]
	push rbx
	push r8
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 184], rbx
	jmp .956
.957:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .959
	jmp .956
.959:
	pop rbx
	dec rbx
	push rbx
	jmp .955
.956:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 184]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .961
	mov rbx, [_gpos]
	mov rsi, _s319
	mov rdi, 26
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1937.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1937.59:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.961:
	jmp .846
.952:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .964
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .965
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1938.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1938.2:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1939.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1939.5:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .967
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .969
	mov rbx, [_gpos]
	mov rsi, _s320
	mov rdi, 45
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1940.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1940.60:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.969:
	mov rbx, [_gsp.len]
	dec rbx
	mov [_gsp.len], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 192], rbx
	mov rsi, 9
	mov rdi, [_gsp.len]
	mov r8, 0
	mov r9, [_gpos]
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 192]
	mov r10, 0
	mov r12, [_gvar_context.len]
	push rsi
	push rdi
	push r8
	push r9
	push r11
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 192]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .968
.967:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .972
	mov rbx, qword [_rs_p]
	add rbx, 200
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .1941.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1941.3:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1942.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1942.6:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 28
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .973
	mov rbx, [_gpos]
	mov rsi, _s321
	mov rdi, 50
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1943.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1943.61:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.973:
	mov rbx, [_gsp.len]
	dec rbx
	mov [_gsp.len], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 228], rbx
	mov rsi, 7
	mov rdi, qword [_rs_p]
	add rdi, 200
	mov r8, 4
	add rdi, r8
	mov edi, [rdi]
	mov r8, qword [_rs_p]
	add r8, 200
	mov r9, 8
	add r8, r9
	mov r8d, [r8]
	mov r9, [_gpos]
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 228]
	mov r10, qword [_rs_p]
	add r10, 200
	mov r12, 20
	add r10, r12
	mov r10d, [r10]
	mov r12, [_gvar_context.len]
	push rsi
	push rdi
	push r8
	push r9
	push r11
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 228]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .968
.972:
	mov rbx, 1
	mov rsi, [_gsp.len]
	mov rdi, 0
	mov r8, [_gpos]
	mov r9, 0
	mov r10, 0
	mov r11, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r8
	push r9
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.975:
.968:
	add rsp, 8
	jmp .976
.965:
	mov rbx, 1
	mov rsi, [_gsp.len]
	mov rdi, 0
	mov r8, [_gpos]
	mov r9, 0
	mov r10, 0
	mov r11, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r8
	push r9
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.976:
	jmp .846
.964:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .978
	mov rbx, qword [_rs_p]
	add rbx, 236
	mov rsi, 0
	mov byte [rbx], sil
.979:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .980
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1944.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1944.4:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1945.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1945.7:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 10
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .982
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1946.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1946.5:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1947.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1947.8:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .984
	pop rbx
	mov rsi, rbx
	mov rdi, [_gpos]
	dec rdi
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .986
	pop rbx
	inc rbx
	mov rsi, _s322
	mov rdi, 16
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1948.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1948.62:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
	jmp .988
.986:
	add rsp, 8
.988:
	jmp .989
.984:
	add rsp, 8
.989:
	mov rbx, 1
	push rbx
	jmp .990
.982:
	mov rbx, 0
	push rbx
.990:
	jmp .991
.980:
	mov rbx, 0
	push rbx
.991:
	pop rbx
	test rbx, rbx
	jz .992
	mov rbx, qword [_rs_p]
	add rbx, 236
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	jmp .979
.992:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .993
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .1949.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1949.6:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1950.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1950.9:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 28
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gvar_context.len], rbx
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .995
	mov rbx, qword [_rs_p]
	add rbx, 265
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .1951.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1951.7:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1952.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s245
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1952.10:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 28
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	add rsi, 265
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .996
.995:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .998
	jmp .996
.998:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1000
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1001
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1001:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1003
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s323
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1004
.1003:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1006
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s324
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1006:
.1004:
	jmp .996
.1000:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1008
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1953.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1953.63:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 16
	xor r8, r8
	cmp rbx, rsi
	sete r8b
	and rdi, r8
	test rdi, rdi
	jz .1009
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 293], rbx
	mov rsi, 5
	mov rdi, [_gsp.len]
	mov r8, [_gsp.len]
	mov r9, [_gpos]
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 293]
	mov r10, 4294967295
	mov r12, [_gvar_context.len]
	push rsi
	push rdi
	push r8
	push r9
	push r11
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 293]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1011
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s325
	mov rdi, 42
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1954.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1954.64:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1011:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1955.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1955.65:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1013
	mov rbx, [_gpos]
	mov rsi, _s326
	mov rdi, 41
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1956.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1956.66:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1013:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1010
.1009:
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1957.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1957.67:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 17
	xor r8, r8
	cmp rbx, rsi
	sete r8b
	and rdi, r8
	test rdi, rdi
	jz .1016
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, 6
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gsp.len]
	mov r8, [_gpos]
	mov r9, [_glabel_c]
	mov r10, r9
	inc r10
	mov [_glabel_c], r10
	mov r10, qword [_rs_p]
	add r10, 237
	mov r11, 20
	add r10, r11
	mov r10d, [r10]
	mov r11, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r8
	push r9
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1010
.1016:
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1018
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1018:
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, [_gsp.len]
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1020
	mov rbx, [_gpos]
	mov rsi, _s327
	mov rdi, 51
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1020:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.1017:
.1010:
	jmp .996
.1008:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1023
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1958.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1958.68:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov r8, 17
	xor r9, r9
	cmp rsi, r8
	sete r9b
	mov rsi, 16
	xor r8, r8
	cmp rbx, rsi
	sete r8b
	or r9, r8
	and rdi, r9
	test rdi, rdi
	jz .1024
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1959.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1959.69:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1026
	mov rbx, 6
	push rbx
	jmp .1027
.1026:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1029
	mov rbx, 5
	push rbx
	jmp .1027
.1029:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .1960
	mov eax, 1
	mov edi, 2
	mov rsi, _s328
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.1960:
	push rbx
.1030:
.1027:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	add rdi, 237
	mov r8, 8
	add rdi, r8
	mov edi, [rdi]
	mov r8, [_gpos]
	mov r9, [_glabel_c]
	mov r10, r9
	inc r10
	mov [_glabel_c], r10
	mov r10, qword [_rs_p]
	add r10, 237
	mov r11, 20
	add r10, r11
	mov r10d, [r10]
	mov r11, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r8
	push r9
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1031
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1031:
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, [_gsp.len]
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1033
	mov rbx, [_gpos]
	mov rsi, _s329
	mov rdi, 55
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1033:
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1961.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1961.70:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 16
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1035
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1037
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s330
	mov rdi, 42
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1962.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1962.71:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1037:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1963.72
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1963.72:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1039
	mov rbx, [_gpos]
	mov rsi, _s331
	mov rdi, 41
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1964.73
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1964.73:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1039:
.1035:
	jmp .1041
.1024:
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1042
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1042:
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, [_gsp.len]
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1044
	mov rbx, [_gpos]
	mov rsi, _s332
	mov rdi, 51
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1044:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.1041:
	jmp .996
.1023:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1047
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1048
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1048:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 8
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1050
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s333
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1051
.1050:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 8
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1053
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s334
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1053:
.1051:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 20
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4294967295
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1054
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 237
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.1054:
	jmp .996
.1047:
	mov rbx, 0
	test rbx, rbx
	jnz .1965
	mov eax, 1
	mov edi, 2
	mov rsi, _s335
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1965:
.1056:
.996:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1057
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
.1057:
	jmp .1059
.993:
	mov rbx, [_gfunction_context]
	mov rsi, 20
	add rbx, rsi
	mov rsi, [_gir_stream.len]
	mov dword [rbx], esi
	mov rbx, 15
	mov rsi, [_gfunction_context_idx]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1060
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1062
	mov rbx, [_gfunction_context]
	mov rsi, 16
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1966.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1966.4:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s337
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1063
.1062:
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1065
	mov rbx, [_gfunction_context]
	mov rsi, 16
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1967.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1967.5:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s338
	mov rdi, 49
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1065:
.1063:
.1060:
	mov rbx, 0
	mov [_gsp.len], rbx
	mov rbx, 0
	mov [_gvar_context.len], rbx
	mov rbx, 0
	mov [_gfunction_context], rbx
	mov rbx, 18446744073709551615
	mov [_gfunction_context_idx], rbx
.1059:
	jmp .846
.978:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1067
	mov rbx, 15
	mov rsi, [_gfunction_context_idx]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1068
	mov rbx, [_gpos]
	mov rsi, _s339
	mov rdi, 44
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1069
.1068:
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1071
	mov rbx, [_gpos]
	mov rsi, _s340
	mov rdi, 46
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1071:
.1069:
	mov rbx, 0
	mov [_gsp.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunction_context]
	mov rsi, 29
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .846
.1067:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1073
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 301], rbx
	mov rsi, [_gpos]
	mov rdi, 2
	add rsi, rdi
	mov [_gpos], rsi
	mov rsi, [_gpos]
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	test r8, r8
	jz .1074
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 301]
	mov rbx, _s342
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1968.74
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1968.74:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1074:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 301]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1969.75
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1969.75:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 12
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 3
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	test r8, r8
	jz .1076
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 301]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s343
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1970.76
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1970.76:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1076:
	mov rbx, 16
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 309], rsi
	mov rbx, 2
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 309]
	mov rdi, [_gsp.len]
	add r8, rdi
	mov rdi, 0
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 301]
	mov r9, 0
	mov r11, 0
	mov r12, [_gvar_context.len]
	push rbx
	push r8
	push rdi
	push r10
	push r9
	push r11
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1971.77
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1971.77:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1078
	mov rbx, [_gpos]
	mov rsi, _s344
	mov rdi, 49
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1972.78
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1972.78:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1078:
	jmp .846
.1073:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1081
	mov rbx, 1
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1973.79
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1973.79:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, [_gpos]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .846
.1081:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1083
	mov rbx, 50
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1083:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1085
	mov rbx, 51
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1085:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1087
	mov rbx, 52
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1087:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1089
	mov rbx, 53
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1089:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1091
	mov rbx, 54
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1091:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1093
	mov rbx, 55
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1093:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1095
	mov rbx, 56
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1095:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1097
	mov rbx, 57
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1097:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1099
	mov rbx, 18
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1099:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1101
	mov rbx, 58
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1101:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1103
	mov rbx, 59
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1103:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1105
	mov rbx, 60
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1105:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1107
	mov rbx, 61
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1107:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1109
	mov rbx, 62
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1109:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1111
	mov rbx, 63
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1111:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1113
	mov rbx, 64
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .846
.1113:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1115
	mov rbx, 9
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gpos]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .846
.1115:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1117
	mov rbx, 10
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gpos]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .846
.1117:
	mov rbx, [_gpos]
	mov rsi, _s345
	mov rdi, 28
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1974.80
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1974.80:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1118:
.846:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 317
	ret
parse.assert:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1119
	mov rbx, [_gpos]
	mov rsi, _s280
	mov rdi, 42
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1975.81
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1975.81:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1119:
	mov rbx, [_gsp.len]
	dec rbx
	mov [_gsp.len], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, [_gpos]
	mov rdi, 2
	add rsi, rdi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jz .1121
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1976.82
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1976.82:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 6
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1977.83
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1977.83:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 2
	xor r8, r8
	cmp rbx, rsi
	sete r8b
	and rdi, r8
	test rdi, rdi
	jz .1123
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
.1123:
.1121:
	mov rbx, [_gpos]
	mov rsi, _s281
	mov rdi, 0
	push rbx
	push rsi
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
	test rdi, rdi
	jz .1125
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s289
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
	mov rbx, [_gpos]
	mov rdi, 2
	add rbx, rdi
	mov rdi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1978.84
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1978.84:
	mov rdi, 28
	imul rbx, rdi
	mov rdi, qword _gtoken_stream
	add rbx, rdi
	mov rdi, 16
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov rbx, [rbx]
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s290
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
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov [_gpos], rbx
	jmp .1127
.1125:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s291
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
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.1127:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.fn_body_tokens:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1979.85
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1979.85:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1128
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1129
.1128:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1131
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1980.86
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1980.86:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, [_gpos]
	push rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gpos]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1129
.1131:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1133
	mov rbx, 19
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1133:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1135
	mov rbx, 20
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1135:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1137
	mov rbx, 21
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1137:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1139
	mov rbx, 22
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1139:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1141
	mov rbx, 23
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1141:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1143
	mov rbx, 24
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1143:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1145
	mov rbx, 25
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1145:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1147
	mov rbx, 26
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1147:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1149
	mov rbx, 27
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1149:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1151
	mov rbx, 28
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1151:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1153
	mov rbx, 29
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1153:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1155
	mov rbx, 30
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1155:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1157
	mov rbx, 31
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1157:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1159
	mov rbx, 65
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1159:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1161
	mov rbx, 32
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1161:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1163
	mov rbx, 33
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1163:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1165
	mov rbx, 34
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1165:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1167
	mov rbx, 35
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1167:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1169
	mov rbx, 36
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1169:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1171
	mov rbx, 37
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1171:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1173
	mov rbx, 38
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1173:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1175
	mov rbx, 39
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1175:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1177
	mov rbx, 40
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1177:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1179
	mov rbx, 41
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1179:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1181
	mov rbx, 42
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1181:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1183
	mov rbx, 43
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1183:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1185
	mov rbx, 44
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1185:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1187
	mov rbx, 45
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1187:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1189
	mov rbx, 46
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1189:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1191
	mov rbx, 47
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1191:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1193
	mov rbx, 48
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1193:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1195
	mov rbx, 49
	mov rsi, 0
	mov rdi, [_gpos]
	push rdi
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
	jmp .1129
.1195:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1197
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1199
.1197:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1981.87
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1981.87:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 9
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1200
	mov rbx, [_gpos]
	mov rsi, _s346
	mov rdi, 62
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1982.88
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1982.88:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1200:
	mov rbx, [_gpos]
	mov rsi, _s347
	mov rdi, 33
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1983.89
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1983.89:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1199:
.1196:
.1129:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.const_expression:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, [_gpos]
	mov rdi, 2
	add rsi, rdi
	mov [_gpos], rsi
	mov rsi, [_gpos]
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	test r8, r8
	jz .1202
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s234
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1984.90
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1984.90:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1202:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1985.91
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1985.91:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1204
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s235
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1986.92
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1986.92:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1204:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1987.93
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1987.93:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
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
	test rsi, rsi
	jz .1206
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s237
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1988.94
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1988.94:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1206:
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
	test rbx, rbx
	jz .1208
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s240
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
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1989.95
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1989.95:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1208:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1990.96
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1990.96:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1210
	mov rbx, [_gpos]
	mov rsi, _s241
	mov rdi, 43
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1991.97
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1991.97:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1210:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, [_gir_stream.len]
	mov rdi, [_gpos]
	mov r8, 1
	sub rdi, r8
	mov r8, 18446744073709551615
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call toplevel_constants_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov [_gis_still_evaluating_constant], rbx
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .1992
	mov eax, 1
	mov edi, 2
	mov rsi, _s243
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1992:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.parse:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	mov [_gmain_fn_idx], rbx
	mov rbx, 0
	mov [_gpos], rbx
.1212:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1213
	mov rbx, [_gis_still_evaluating_constant]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor r8, r8
	cmp rbx, rsi
	sete r8b
	and rdi, r8
	test rdi, rdi
	jz .1214
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1993.98
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1993.98:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1216
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1217
.1216:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1219
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1217
.1219:
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
	test r9, r9
	jz .1221
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
	test rbx, rbx
	jz .1222
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s265
	mov rdi, 33
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1994.99
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1994.99:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1222:
	pop rbx
	pop rsi
	mov rdi, 0
	mov r8, [_gpos]
	mov r9, 2
	sub r8, r9
	push rbx
	push rdi
	push r8
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call global_var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1217
.1221:
	mov rbx, [_gpos]
	mov rsi, _s267
	mov rdi, 22
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1995.100
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1995.100:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1224:
.1217:
	add rsp, 8
	jmp .1225
.1214:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1226
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1996.101
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1996.101:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1228
	mov rbx, 0
	mov [_gconst_stack.len], rbx
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1997.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s268
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1997.1:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1998.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1998.4:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
.1230:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1231
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
	jnz .1999
	mov eax, 1
	mov edi, 2
	mov rsi, _s273
	mov rdx, 78
	syscall
	mov rdi, 1
	jmp _exit
.1999:
	pop rbx
	inc rbx
	push rbx
	jmp .1230
.1231:
	add rsp, 8
	mov rbx, [_gconst_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1232
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2000.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s268
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2000.2:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2001.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2001.5:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s274
	mov rdi, 40
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2002.102
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2002.102:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1232:
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1234
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2003.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s268
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2003.3:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2004.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2004.6:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s275
	mov rdi, 64
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1234:
	mov rbx, 0
	mov [_gsp.len], rbx
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2005.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s268
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2005.4:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2006.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2006.7:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gir_stream.len], rbx
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2007.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s268
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2007.5:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2008.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s238
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2008.8:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	pop rbx
	pop rsi
	mov qword [rsi], rbx
	mov rbx, 0
	mov [_gis_still_evaluating_constant], rbx
	mov rbx, [_gconst_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2009
	mov eax, 1
	mov edi, 2
	mov rsi, _s278
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2009:
	jmp .1229
.1228:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1237
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2010.103
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2010.103:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
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
	test r8, r8
	jz .1238
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, [_gpos]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	dec rbx
	mov [_gpos], rbx
	jmp .1240
.1238:
	mov rbx, [_gpos]
	mov rsi, _s279
	mov rdi, 25
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2011.104
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2011.104:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1240:
	jmp .1229
.1237:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1241:
.1229:
	add rsp, 8
	jmp .1242
.1226:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1242:
.1225:
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .1212
.1213:
	mov rbx, [_gvar_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2012
	mov eax, 1
	mov edi, 2
	mov rsi, _s348
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2012:
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2013
	mov eax, 1
	mov edi, 2
	mov rsi, _s349
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2013:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1243
	mov rbx, [_gtoken_stream.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s350
	mov rdi, 32
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2014.105
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2014.105:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1243:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1245
	mov rbx, [_gtoken_stream.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s351
	mov rdi, 60
	mov r8, 27
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
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
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2015.106
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2015.106:
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	mov rsi, _s59
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
.1245:
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
	jnz .2016
	mov eax, 1
	mov edi, 2
	mov rsi, _s440
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2016:
	mov rsi, [_gfwrite_buffer.len]
	add rbx, rsi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1247
	mov rbx, [_gfwrite_buffer.fd_loc]
	mov rsi, qword _gfwrite_buffer
	mov rdi, [_gfwrite_buffer.len]
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gfwrite_buffer.len]
	xor rsi, rsi
	cmp rax, rbx
	sete sil
	test rsi, rsi
	jnz .2017.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s441
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2017.1:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
.1247:
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
	mov rbx, [_gfwrite_buffer.len]
	mov rsi, qword _gfwrite_buffer
	add rbx, rsi
	pop rsi
	mov byte [rbx], sil
	mov rbx, [_gfwrite_buffer.len]
	inc rbx
	mov [_gfwrite_buffer.len], rbx
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
	mov r9, [_gfwrite_buffer.len]
	add r8, r9
	push rsi
	push r8
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfwrite_buffer.len]
	pop rsi
	add rsi, rbx
	mov [_gfwrite_buffer.len], rsi
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
	test r8, r8
	jz .1249
	mov rbx, _s487
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1249:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1252
	mov rbx, _s488
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1252:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1254
	mov rbx, _s489
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1254:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1256
	mov rbx, _s490
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1256:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1258
	mov rbx, _s491
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1258:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1260
	mov rbx, _s492
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1260:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1262
	mov rbx, _s493
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1250
.1262:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1263:
.1250:
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
.1264:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1265
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
	jmp .1264
.1265:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
slits_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gslits.len]
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2018
	mov eax, 1
	mov edi, 2
	mov rsi, _s428
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2018:
	mov rbx, qword _gslits
	mov rsi, [_gslits.len]
	mov rdi, 8
	imul rsi, rdi
	add rbx, rsi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_gslits.len]
	inc rbx
	mov [_gslits.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
dce.recurse_function:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
.1293:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2019.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2019.5:
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
	mov rsi, [_gused_functions]
	inc rsi
	mov [_gused_functions], rsi
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
	test r8, r8
	jz .1266
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_ginlined_functions]
	inc rbx
	mov [_ginlined_functions], rbx
.1266:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.1268:
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
	test rbx, rbx
	jz .1269
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2020.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2020.6:
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
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .2021.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2021.7:
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
	test r9, r9
	jz .1270
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2022.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2022.6:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1272
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rdi
.1274:
	mov rbx, 1
	test rbx, rbx
	jz .1275
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	mov rbx, rdi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .2023.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2023.8:
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
	mov r9, [_gir_stream.len]
	xor r10, r10
	cmp rbx, r9
	setb r10b
	test r10, r10
	jnz .2024.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2024.9:
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
	test r10, r10
	jz .1276
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1278
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.1278:
	jmp .1277
.1276:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1281
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1282
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.1282:
	jmp .1277
.1281:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1285
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2025.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2025.10:
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
	jmp .1275
	jmp .1277
.1285:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1287
	jmp .1275
.1287:
.1286:
.1277:
	jmp .1274
.1275:
	add rsp, 8
.1272:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2026.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2026.11:
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
	test rdi, rdi
	jz .1289
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2027.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2027.12:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2028.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2028.7:
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
	test rbx, rbx
	jz .1291
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.1291:
.1289:
	jmp .1271
.1270:
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
	test r9, r9
	jz .1295
	mov rbx, [_gslits.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call slits_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2029.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2029.13:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.1295:
.1271:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1268
.1269:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2030.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2030.14:
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
	jnz .2031
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2031:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
stas.dce:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gmain_fn_idx]
	mov rsi, 18446744073709551615
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1296
	mov rbx, _s427
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
	mov rbx, _s26
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
	mov rbx, _s28
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
	mov rbx, _s29
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
	mov rbx, _s30
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
.1296:
	mov rbx, 0
	mov [_gused_functions], rbx
	mov rbx, 0
	mov [_ginlined_functions], rbx
	mov rbx, [_gmain_fn_idx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 65536
	mov [_gdce.max_stack_frame], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
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
	test r8, r8
	jz .1298
	mov rbx, _s470
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1298:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1301
	mov rbx, _s471
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1301:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1303
	mov rbx, _s472
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1303:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1305
	mov rbx, _s473
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1305:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1307
	mov rbx, _s474
	mov rsi, 2
	push rbx
	push rsi
	jmp .1299
.1307:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1309
	mov rbx, _s475
	mov rsi, 2
	push rbx
	push rsi
	jmp .1299
.1309:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1311
	mov rbx, _s476
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1313
	mov rbx, _s477
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1313:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1315
	mov rbx, _s478
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1315:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1317
	mov rbx, _s479
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1317:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1319
	mov rbx, _s480
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1319:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1321
	mov rbx, _s481
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1321:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1323
	mov rbx, _s482
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1323:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1325
	mov rbx, _s483
	mov rsi, 3
	push rbx
	push rsi
	jmp .1299
.1325:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2032
	mov eax, 1
	mov edi, 2
	mov rsi, _s484
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2032:
	push rbx
	push rsi
.1326:
.1299:
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
	test r8, r8
	jz .1327
	mov rbx, _s696
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1330
	mov rbx, _s697
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1330:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1332
	mov rbx, _s698
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1332:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1334
	mov rbx, _s699
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1334:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1336
	mov rbx, _s700
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1336:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1338
	mov rbx, _s701
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1338:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1340
	mov rbx, _s702
	mov rsi, 4
	push rbx
	push rsi
	jmp .1328
.1340:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1342
	mov rbx, _s703
	mov rsi, 4
	push rbx
	push rsi
	jmp .1328
.1342:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1344
	mov rbx, _s704
	mov rsi, 4
	push rbx
	push rsi
	jmp .1328
.1344:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1346
	mov rbx, _s705
	mov rsi, 4
	push rbx
	push rsi
	jmp .1328
.1346:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1348
	mov rbx, _s706
	mov rsi, 4
	push rbx
	push rsi
	jmp .1328
.1348:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1350
	mov rbx, _s707
	mov rsi, 4
	push rbx
	push rsi
	jmp .1328
.1350:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1352
	mov rbx, _s708
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1352:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1354
	mov rbx, _s709
	mov rsi, 3
	push rbx
	push rsi
	jmp .1328
.1354:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2033
	mov eax, 1
	mov edi, 2
	mov rsi, _s710
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2033:
	push rbx
	push rsi
.1355:
.1328:
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
	test r8, r8
	jz .1356
	mov rbx, _s679
	mov rsi, 2
	push rbx
	push rsi
	jmp .1357
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1359
	mov rbx, _s680
	mov rsi, 2
	push rbx
	push rsi
	jmp .1357
.1359:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1361
	mov rbx, _s681
	mov rsi, 2
	push rbx
	push rsi
	jmp .1357
.1361:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1363
	mov rbx, _s682
	mov rsi, 2
	push rbx
	push rsi
	jmp .1357
.1363:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1365
	mov rbx, _s683
	mov rsi, 3
	push rbx
	push rsi
	jmp .1357
.1365:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1367
	mov rbx, _s684
	mov rsi, 3
	push rbx
	push rsi
	jmp .1357
.1367:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1369
	mov rbx, _s685
	mov rsi, 4
	push rbx
	push rsi
	jmp .1357
.1369:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1371
	mov rbx, _s686
	mov rsi, 4
	push rbx
	push rsi
	jmp .1357
.1371:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1373
	mov rbx, _s687
	mov rsi, 4
	push rbx
	push rsi
	jmp .1357
.1373:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1375
	mov rbx, _s688
	mov rsi, 4
	push rbx
	push rsi
	jmp .1357
.1375:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1377
	mov rbx, _s689
	mov rsi, 4
	push rbx
	push rsi
	jmp .1357
.1377:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1379
	mov rbx, _s690
	mov rsi, 4
	push rbx
	push rsi
	jmp .1357
.1379:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1381
	mov rbx, _s691
	mov rsi, 2
	push rbx
	push rsi
	jmp .1357
.1381:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1383
	mov rbx, _s692
	mov rsi, 2
	push rbx
	push rsi
	jmp .1357
.1383:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2034
	mov eax, 1
	mov edi, 2
	mov rsi, _s693
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2034:
	push rbx
	push rsi
.1384:
.1357:
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
	test r8, r8
	jz .1385
	mov rbx, _s599
	mov rsi, 2
	push rbx
	push rsi
	jmp .1386
.1385:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1388
	mov rbx, _s600
	mov rsi, 2
	push rbx
	push rsi
	jmp .1386
.1388:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1390
	mov rbx, _s601
	mov rsi, 3
	push rbx
	push rsi
	jmp .1386
.1390:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1392
	mov rbx, _s602
	mov rsi, 3
	push rbx
	push rsi
	jmp .1386
.1392:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1394
	mov rbx, _s603
	mov rsi, 3
	push rbx
	push rsi
	jmp .1386
.1394:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1396
	mov rbx, _s604
	mov rsi, 3
	push rbx
	push rsi
	jmp .1386
.1396:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1398
	mov rbx, _s605
	mov rsi, 4
	push rbx
	push rsi
	jmp .1386
.1398:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1400
	mov rbx, _s606
	mov rsi, 4
	push rbx
	push rsi
	jmp .1386
.1400:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1402
	mov rbx, _s607
	mov rsi, 4
	push rbx
	push rsi
	jmp .1386
.1402:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1404
	mov rbx, _s608
	mov rsi, 4
	push rbx
	push rsi
	jmp .1386
.1404:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1406
	mov rbx, _s609
	mov rsi, 4
	push rbx
	push rsi
	jmp .1386
.1406:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1408
	mov rbx, _s610
	mov rsi, 4
	push rbx
	push rsi
	jmp .1386
.1408:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1410
	mov rbx, _s611
	mov rsi, 2
	push rbx
	push rsi
	jmp .1386
.1410:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1412
	mov rbx, _s612
	mov rsi, 2
	push rbx
	push rsi
	jmp .1386
.1412:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2035
	mov eax, 1
	mov edi, 2
	mov rsi, _s613
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2035:
	push rbx
	push rsi
.1413:
.1386:
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
	jnz .2036
	mov eax, 1
	mov edi, 2
	mov rsi, _s522
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2036:
	mov rsi, [_grallocator_stack.len]
	mov rdi, 2048
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2037
	mov eax, 1
	mov edi, 2
	mov rsi, _s523
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2037:
	mov rsi, qword _grallocator_stack
	mov rdi, [_grallocator_stack.len]
	add rsi, rdi
	mov byte [rsi], bl
	mov rbx, [_grallocator_stack.len]
	inc rbx
	mov [_grallocator_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
rallocator_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jnz .2038
	mov eax, 1
	mov edi, 2
	mov rsi, _s507
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2038:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, qword _grallocator_stack
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_ffs:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1415
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	test rdi, rdi
	sete dil
	push rbx
	test rdi, rdi
	jz .1416
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1416:
	pop rbx
	inc rbx
	push rbx
	jmp .1414
.1415:
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
.1418:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1419
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
	test rsi, rsi
	jz .1420
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1420:
	pop rbx
	inc rbx
	push rbx
	jmp .1418
.1419:
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
.1424:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1425
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s469
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
	jmp .1424
.1425:
	add rsp, 8
	mov rbx, 0
	mov [_grallocator_stack.len], rbx
	mov rbx, qword _grallocator_mask
	mov rsi, 0
	mov rdi, 14
	push rbx
	push rsi
	push rdi
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
.1428:
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
	test r8, r8
	jz .1426
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1428
	jmp .1429
.1426:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.1429:
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
	jnz .2039.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s572
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2039.1:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	jz .1430
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
	jnz .2040.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2040.1:
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
	jnz .2041.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2041.1:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	mov rbx, 0
	mov byte [rdi], bl
	mov rbx, _s573
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
	mov rbx, _s574
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
	test r8, r8
	jz .1432
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1432:
.1430:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
r_pop:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1434
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	jmp .1436
.1434:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s508
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
.1436:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2042.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2042.2:
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
	jnz .2043.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s572
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2043.2:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	jz .1437
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1437:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1439
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	xor rbx, rbx
	cmp rdi, r8
	sete bl
	test rbx, rbx
	jz .1441
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1441:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2044.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2044.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s575
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
	mov rbx, _s576
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
	jmp .1443
.1439:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2045.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s572
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2045.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .2046
	mov eax, 1
	mov edi, 2
	mov rsi, _s577
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2046:
	mov rbx, _s578
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
.1443:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2047.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2047.3:
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
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1444
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1446
.1444:
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
	jnz .2048.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2048.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s531
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
.1446:
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
	jnz .2049.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2049.5:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s618
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
	mov rbx, _s619
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
	jnz .2050.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2050.6:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s527
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
	mov rbx, _s528
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
label.def.fwriteln:
	mov [_rs_p], rsp
	mov rsp, rbp
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
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .1447
	mov rbx, 46
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
.1447:
	add rsp, 8
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
label.ref.fwriteln:
	mov [_rs_p], rsp
	mov rsp, rbp
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
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .1449
	mov rbx, 46
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
.1449:
	add rsp, 8
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
	mov rbx, _s581
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
	sub rsp, 160
	mov [_rs_p], rsp
	mov rsp, rbp
.1478:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	pop r8
	mov qword [rbx + 16], r8
.1451:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1452
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	and rdi, rsi
	test rdi, rdi
	jz .1453
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2051.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2051.15:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2052.107
	mov eax, 1
	mov edi, 2
	mov rsi, _s150
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2052.107:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s466
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
	mov rbx, _s467
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
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, [_gopened_files.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2053.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s55
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2053.5:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gopened_files
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
	mov rbx, _s468
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
.1453:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2054.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2054.16:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, rdi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .2055.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s269
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2055.17:
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
	test r9, r9
	jz .1455
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.def.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1456
.1455:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1458
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2056
	mov eax, 1
	mov edi, 2
	mov rsi, _s485
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2056:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2057.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2057.8:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	mov rbx, 28
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	sete bl
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 32]
	mov rdi, 29
	add r8, rdi
	xor rdi, rdi
	mov dil, [r8]
	test rdi, rdi
	sete dil
	or rbx, rdi
	test rbx, rbx
	jz .1459
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1461
.1459:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	and rdi, rsi
	test rdi, rdi
	jz .1462
	mov rbx, _s486
	mov rsi, 7
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
.1462:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s494
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
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1464
	mov rbx, _s495
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
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
.1464:
	mov rbx, _s496
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
	mov rbx, _s497
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
	mov rsi, qword [rbx + 32]
	mov rbx, 30
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 4294967295
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	test r8, r8
	jz .1466
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.def.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1466:
	add rsp, 8
.1461:
	jmp .1456
.1458:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1469
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2058.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2058.9:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, _s498
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
	mov rbx, _s499
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
	mov rsi, qword [rbx + 32]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1470
	mov rbx, _s500
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
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
.1470:
	mov rbx, _s501
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
	jmp .1456
.1469:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1473
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2059.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2059.10:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 1
	add rdi, rbx
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	mov rbx, 16
	add r8, rbx
	mov r8d, [r8]
	sub rdi, r8
	mov rbx, 2
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	test r8, r8
	jz .1474
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1476
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 34
	add rsi, rbx
	mov rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov dword [rsi], ebx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	mov rbx, 34
	add r8, rbx
	mov r8d, [r8]
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1479
.1476:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s502
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
	mov rbx, _s503
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
	mov rbx, _s504
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
	mov rbx, _s505
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
	mov rbx, _s506
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
.1479:
.1474:
	jmp .1456
.1473:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1481
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s510
	mov rdi, 6
	push rbx
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
	mov rbx, _s511
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
	mov rbx, _s512
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
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 72]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s513
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
	mov rbx, _s514
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
	mov rbx, _s515
	mov rsi, 12
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
	mov rbx, _s516
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
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2060.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s517
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2060.1:
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
	mov rbx, _s518
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
	mov rbx, _s519
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
	mov rbx, _s520
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
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 72]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.def.fwriteln
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
	jnz .2061.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2061.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1481:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1483
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
	jnz .2062.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2062.7:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s526
	mov rsi, 2
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
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2063.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s517
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2063.2:
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
	jmp .1456
.1483:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1485
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1456
.1485:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1487
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
	jnz .2064.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2064.8:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s529
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
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1488
	mov rbx, _s530
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
	mov rbx, _s532
	mov rsi, 2
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
.1488:
	jmp .1456
.1487:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1491
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 32
	mov rcx, rbx
	shr rdi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 88], rdi
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
	jnz .2065.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2065.9:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 96], rbx
	mov rsi, _s533
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
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
	mov rbx, _s534
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
.1492:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 88]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1493
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 80]
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
	mov rdi, _s535
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
	mov rsi, qword [rbx + 96]
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
	mov rbx, _s536
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
	mov rbx, _s537
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
	jmp .1492
.1493:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2066.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2066.4:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1491:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1495
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 104], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 32
	mov rcx, rbx
	shr rdi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 112], rdi
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
	jnz .2067.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2067.10:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rsi, _s538
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
	mov rbx, _s539
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
.1496:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 112]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1497
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 112]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
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
	jnz .2068.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2068.11:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s540
	mov rsi, 7
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
	mov rbx, _s541
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
	mov rbx, _s542
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
	jmp .1496
.1497:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2069.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2069.5:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1495:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1499
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
	jnz .2070.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2070.12:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s543
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2071.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2071.4:
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
	jmp .1456
.1499:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1501
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2072.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2072.5:
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
	mov qword [rbx + 136], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1502
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 128], rsi
	mov rbx, _s544
	mov rdi, 8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2073.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2073.6:
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
	mov rbx, _s545
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
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
	jmp .1504
.1502:
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
	jnz .2074.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2074.13:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 128], rbx
	mov rsi, _s546
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
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
	mov rbx, _s547
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2075.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2075.7:
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
	mov rbx, 0
	push rbx
.1505:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 136]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1506
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
	mov rbx, _s548
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
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
	mov rbx, _s549
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
	mov rbx, _s550
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
	jmp .1505
.1506:
	add rsp, 8
.1504:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2076.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2076.6:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1501:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1508
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2077.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2077.8:
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
	mov qword [rbx + 152], rax
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
	jnz .2078.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2078.14:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 144], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 152]
	mov rsi, 1
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	test r8, r8
	jz .1509
	mov rbx, _s551
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
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
	mov rbx, _s552
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2079.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2079.9:
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
	mov rbx, _s553
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
	mov rsi, qword [rbx + 144]
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
	jnz .2080.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2080.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1509:
	mov rbx, _s554
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
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
	mov rbx, _s555
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2081.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2081.10:
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
	mov rbx, 0
	push rbx
.1512:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 152]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1513
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 152]
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
	jnz .2082.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2082.16:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s556
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
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
	mov rbx, _s557
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
	mov rbx, _s558
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
	jmp .1512
.1513:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2083.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2083.7:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
.1511:
	jmp .1456
.1508:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1515
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s559
	mov rdi, 5
	push rbx
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
	mov rbx, _s560
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
	mov rbx, _s561
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
	mov rbx, _s562
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
	mov rbx, _s563
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
	jnz .2084.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2084.17:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1515:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1517
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s564
	mov rdi, 5
	push rbx
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
	mov rbx, _s565
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
	mov rbx, _s566
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
	mov rbx, _s567
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
	jnz .2085.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2085.18:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1517:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1519
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
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s568
	mov rsi, 6
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
	mov rbx, _s569
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
	mov rbx, _s570
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
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
	jnz .2086.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2086.8:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1519:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1521
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
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
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1456
.1521:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1523
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s579
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
	jnz .2087.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2087.19:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1523:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1525
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
	mov rdi, _s580
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
	jnz .2088.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2088.20:
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
	jnz .2089.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2089.9:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1525:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1527
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
	mov rdi, _s582
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
	jnz .2090.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2090.21:
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
	jnz .2091.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2091.10:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1527:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1529
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
	mov rdi, _s583
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
	jnz .2092.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2092.22:
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
	jnz .2093.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2093.11:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1529:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1531
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
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
	mov rbx, _s584
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
	mov rbx, _s585
	mov rsi, 5
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
	jnz .2094.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2094.23:
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
	jnz .2095.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2095.12:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2096.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2096.13:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1531:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1533
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
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
	mov rbx, _s586
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
	mov rbx, _s587
	mov rsi, 5
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
	jnz .2097.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2097.24:
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
	jnz .2098.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2098.14:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2099.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2099.15:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1533:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1535
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s588
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
	jmp .1456
.1535:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1537
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s589
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
	jmp .1456
.1537:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1539
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
	jnz .2100.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2100.25:
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
	mov qword [rbx + 48], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s590
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2101.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2101.16:
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
	jnz .2102.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2102.26:
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
	jnz .2103.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2103.27:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1539:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1541
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
	mov qword [rbx + 40], rsi
	mov rbx, _s592
	mov rdi, 5
	push rbx
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
	mov rbx, _s593
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
	jnz .2104.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2104.28:
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
	jnz .2105.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2105.17:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1541:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1543
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
	mov qword [rbx + 40], rsi
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
	mov rbx, _s595
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
	jnz .2106.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2106.29:
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
	jnz .2107.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2107.18:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1543:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1545
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s596
	mov rdi, 6
	push rbx
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
	mov rsi, 6
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
	jnz .2108.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2108.30:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1545:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1547
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
	mov rdi, _s614
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
	jnz .2109.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2109.31:
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
	jnz .2110.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2110.19:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1547:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1549
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
	mov rdi, _s615
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
	jnz .2111.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2111.32:
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
	jnz .2112.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2112.20:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1549:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1551
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s616
	mov rdi, 5
	push rbx
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
	jnz .2113.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2113.33:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1551:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1553
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
	mov rdi, _s617
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
	jnz .2114.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2114.34:
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
	jnz .2115.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2115.21:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1553:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1555
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
	jnz .2116.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2116.35:
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
	jnz .2117.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2117.36:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1555:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1557
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
	jmp .1456
.1557:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1559
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1560
	mov rbx, 1
	mov rsi, [_grallocator_stack.len]
	sub rbx, rsi
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
	jnz .2118.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2118.37:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s620
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
	mov rbx, _s621
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
	jmp .1562
.1560:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	sub rbx, rsi
	mov rsi, qword _grallocator_stack
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1562:
	jmp .1456
.1559:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1564
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1565
	mov rbx, 2
	mov rsi, [_grallocator_stack.len]
	sub rbx, rsi
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
	jnz .2119.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2119.38:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s524
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
	mov rbx, _s525
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s622
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
	mov rbx, _s623
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
	jmp .1567
.1565:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	sub rbx, rsi
	mov rsi, qword _grallocator_stack
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1567:
	jmp .1456
.1564:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1569
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
	jnz .2120.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2120.39:
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
	jnz .2121.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2121.40:
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
	jnz .2122.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2122.41:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1569:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1571
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
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
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
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
	jnz .2123.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2123.42:
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
	jnz .2124.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2124.43:
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
	jnz .2125.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2125.44:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	jnz .2126.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2126.45:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1571:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1573
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1574
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2127.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2127.22:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1576
.1574:
	mov rbx, _s624
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
.1576:
	jmp .1456
.1573:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1578
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
	jnz .2128.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2128.46:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s625
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s626
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s627
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
	mov rbx, _s628
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
	mov rbx, _s629
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2129.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2129.47:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2130.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2130.23:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2131.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2131.24:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1578:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1580
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
	jnz .2132.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2132.48:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s630
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s631
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s632
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
	mov rbx, _s633
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
	mov rbx, _s634
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2133.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2133.49:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2134.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2134.25:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2135.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2135.26:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1580:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1582
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
	jnz .2136.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2136.50:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s635
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s636
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s637
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
	mov rbx, _s638
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
	mov rbx, _s639
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2137.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2137.51:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2138.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2138.27:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2139.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2139.28:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1582:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1584
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
	jnz .2140.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2140.52:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s640
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s641
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s642
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
	mov rbx, _s643
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
	mov rbx, _s644
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2141.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2141.53:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2142.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2142.29:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2143.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2143.30:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1584:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1586
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
	jnz .2144.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2144.54:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s645
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s646
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s647
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
	mov rbx, _s648
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
	mov rbx, _s649
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2145.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2145.55:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2146.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2146.31:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2147.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2147.32:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1586:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1588
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
	jnz .2148.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2148.56:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s650
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s651
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s652
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
	mov rbx, _s653
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
	mov rbx, _s654
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2149.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2149.57:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2150.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2150.33:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2151.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2151.34:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1588:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1590
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
	jnz .2152.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2152.58:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s655
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s657
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
	mov rbx, _s659
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2153.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2153.59:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2154.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2154.35:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2155.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2155.36:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1590:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1592
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
	jnz .2156.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2156.60:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s660
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s662
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
	mov rbx, _s664
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2157.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2157.61:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2158.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2158.37:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2159.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2159.38:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1592:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1594
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
	jnz .2160.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2160.62:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rbx, _s665
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s667
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
	mov rbx, _s668
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
	mov rbx, _s669
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2161.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2161.63:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2162.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2162.39:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2163.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2163.40:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1594:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1596
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
	jnz .2164.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2164.64:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
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
	mov rsi, qword [rbx + 56]
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
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s672
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
	mov rbx, _s673
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
	mov rbx, _s674
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rsi, qword [rbx + 56]
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
	jnz .2165.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2165.65:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2166.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2166.41:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2167.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2167.42:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1596:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1598
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
	mov rbx, _s675
	mov rdi, 11
	push rbx
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
	mov rbx, _s676
	mov rsi, 3
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
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2168.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2168.43:
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
	jnz .2169.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2169.44:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1598:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1600
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
	mov rbx, _s677
	mov rdi, 11
	push rbx
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
	mov rbx, _s678
	mov rsi, 3
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
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2170.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2170.45:
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
	jnz .2171.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2171.46:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1600:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1602
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
	mov rbx, _s694
	mov rdi, 12
	push rbx
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
	mov rbx, _s695
	mov rsi, 3
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
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2172.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2172.47:
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
	jnz .2173.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2173.48:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1602:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1604
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
	mov rbx, _s711
	mov rdi, 12
	push rbx
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
	mov rbx, _s712
	mov rsi, 3
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2174.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2174.49:
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
	jnz .2175.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2175.50:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1604:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1606
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
	jnz .2176.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2176.66:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rsi, _s713
	mov rdi, 5
	push rsi
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
	mov rbx, _s714
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
	mov rbx, _s715
	mov rsi, 5
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
	mov rbx, _s716
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
	mov rbx, _s717
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
	jnz .2177.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2177.67:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2178.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2178.51:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1606:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1608
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
	jnz .2179.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2179.68:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rsi, _s718
	mov rdi, 5
	push rsi
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
	mov rbx, _s719
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
	mov rbx, _s720
	mov rsi, 5
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
	call Reg.16.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s721
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
	mov rbx, _s722
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
	jnz .2180.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2180.69:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2181.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2181.52:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1456
.1608:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1610
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s723
	mov rdi, 5
	push rbx
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
	call Reg.32.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s724
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
	mov rbx, _s725
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
	jnz .2182.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2182.70:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1610:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1612
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s726
	mov rdi, 5
	push rbx
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
	mov rbx, _s727
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
	mov rbx, _s728
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
	jnz .2183.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2183.71:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1612:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1614
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s729
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
	jnz .2184.72
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2184.72:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1456
.1614:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1616
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
	mov rbx, _s730
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
	jnz .2185.73
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2185.73:
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
	jnz .2186.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2186.53:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1616:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1618
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
	mov rbx, _s731
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
	jnz .2187.74
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2187.74:
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
	jnz .2188.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2188.54:
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
	jnz .2189.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2189.55:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1618:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1620
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
	mov rbx, _s732
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
	jnz .2190.75
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2190.75:
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
	jnz .2191.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2191.56:
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
	jnz .2192.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2192.57:
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
	jnz .2193.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2193.58:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1620:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1622
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
	mov rbx, _s733
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
	jnz .2194.76
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2194.76:
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
	jnz .2195.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2195.59:
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
	jnz .2196.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2196.60:
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
	jnz .2197.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2197.61:
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
	jnz .2198.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2198.62:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1622:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1624
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
	mov rbx, _s734
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
	jnz .2199.77
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2199.77:
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
	jnz .2200.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2200.63:
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
	jnz .2201.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2201.64:
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
	jnz .2202.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2202.65:
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
	jnz .2203.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2203.66:
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
	jnz .2204.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2204.67:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1624:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1626
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
	mov rbx, _s735
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
	jnz .2205.78
	mov eax, 1
	mov edi, 2
	mov rsi, _s509
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2205.78:
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
	jnz .2206.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2206.68:
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
	jnz .2207.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2207.69:
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
	jnz .2208.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2208.70:
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
	jnz .2209.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2209.71:
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
	jnz .2210.72
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2210.72:
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
	jnz .2211.73
	mov eax, 1
	mov edi, 2
	mov rsi, _s521
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2211.73:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1456
.1626:
	mov rbx, 0
	test rbx, rbx
	jnz .2212
	mov eax, 1
	mov edi, 2
	mov rsi, _s736
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2212:
.1627:
.1456:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1451
.1452:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 160
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
	test r8, r8
	jz .1628
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1628:
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
	test r9, r9
	jz .1630
	mov rbx, _s743
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
.1630:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1632
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
	jz .1634
	mov rbx, _s744
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
	jmp .1636
.1634:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1636:
.1632:
	mov rbx, 1
	push rbx
.1637:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1638
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
	jz .1639
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1641
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1643
.1641:
	mov rbx, _s745
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
.1643:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1644
.1639:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1645
	mov rbx, _s746
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
	jmp .1647
.1645:
	mov rbx, _s747
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
.1647:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1644:
	pop rbx
	inc rbx
	push rbx
	jmp .1637
.1638:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1648
	mov rbx, _s748
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.1648:
	mov rbx, _s749
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
	mov rbx, [_gbackend_type]
	mov r8, 1
	xor r9, r9
	cmp rbx, r8
	sete r9b
	test r9, r9
	jz .1650
	mov rbx, _s439
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
	test rsi, rsi
	jz .1652
	mov rbx, _s442
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
	mov rbx, _s443
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
	mov rbx, _s444
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
	mov rbx, _s445
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
	jmp .1654
.1652:
	mov rbx, _s446
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
	mov rbx, _s447
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
	mov rbx, _s448
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
.1654:
	jmp .1651
.1650:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1656
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1657
	mov rbx, _s449
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
	mov rbx, _s450
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
.1657:
	mov rbx, _s451
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
	mov rbx, _s452
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
	mov rbx, _s453
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
	jmp .1651
.1656:
	mov rbx, 0
	test rbx, rbx
	jnz .2213
	mov eax, 1
	mov edi, 2
	mov rsi, _s454
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2213:
.1659:
.1651:
	mov rbx, _s455
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
	mov rbx, _s456
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
	mov rbx, _s457
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
	mov rbx, _s458
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
	mov rbx, _s459
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
	mov rbx, _s460
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
	mov rbx, _s461
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
	mov rbx, _s462
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
	mov rbx, _s463
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
	mov rbx, _s464
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
	mov rbx, _s465
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
	mov rsi, [_gir_stream.len]
	mov rdi, 0
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1660
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1662
	mov rbx, _s737
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
	jmp .1664
.1662:
	mov rbx, _s738
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
.1664:
	jmp .1661
.1660:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1666
	mov rbx, _s739
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
	jmp .1661
.1666:
	mov rbx, 0
	test rbx, rbx
	jnz .2214
	mov eax, 1
	mov edi, 2
	mov rsi, _s740
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2214:
.1667:
.1661:
	mov rbx, 0
	push rbx
.1668:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1669
	pop rbx
	mov rsi, rbx
	mov rdi, _s741
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
	mov rbx, _s742
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
	jnz .2215.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s517
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2215.3:
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
	jmp .1668
.1669:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1670
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1672
	mov rbx, _s750
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
	jmp .1674
.1672:
	mov rbx, _s751
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
.1674:
	jmp .1671
.1670:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1676
	mov rbx, _s752
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
	jmp .1671
.1676:
	mov rbx, 0
	test rbx, rbx
	jnz .2216
	mov eax, 1
	mov edi, 2
	mov rsi, _s753
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2216:
.1677:
.1671:
	mov rbx, 0
	push rbx
.1678:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1679
	mov rbx, _s754
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
	mov r8, [_gglobal_var_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2217.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2217.11:
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
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1680
	mov rbx, _s755
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1681
.1680:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1683
	mov rbx, _s756
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1681
.1683:
	mov rbx, 0
	test rbx, rbx
	jnz .2218
	mov eax, 1
	mov edi, 2
	mov rsi, _s757
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2218:
.1684:
.1681:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gglobal_var_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2219.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2219.12:
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
	jmp .1678
.1679:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1685
	mov rbx, _s758
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
	mov rbx, _s759
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
	mov rbx, _s760
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gdce.max_stack_frame]
	push rbx
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
	jmp .1686
.1685:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1688
	mov rbx, _s761
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
	mov rbx, _s762
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
	mov rbx, _s763
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gdce.max_stack_frame]
	push rbx
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
	jmp .1686
.1688:
	mov rbx, 0
	test rbx, rbx
	jnz .2220
	mov eax, 1
	mov edi, 2
	mov rsi, _s764
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2220:
.1689:
.1686:
	mov rbx, _s765
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
	mov rbx, [_gfwrite_buffer.fd_loc]
	mov rsi, qword _gfwrite_buffer
	mov rdi, [_gfwrite_buffer.len]
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gfwrite_buffer.len]
	xor rsi, rsi
	cmp rax, rbx
	sete sil
	test rsi, rsi
	jnz .2221.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s441
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2221.2:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
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
	mov rsi, 70
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
	mov rsi, 41
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s8
	mov rsi, 63
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s9
	mov rsi, 72
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s10
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
	mov rdi, _s23
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
	jz .1690
	mov rbx, 1
	mov [_gbackend_type], rbx
	jmp .1691
.1690:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s24
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
	jz .1693
	mov rbx, 2
	mov [_gbackend_type], rbx
	jmp .1691
.1693:
	mov rbx, _s25
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
	mov rbx, _s26
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
	mov rbx, _s28
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
	mov rbx, _s29
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
	mov rbx, _s30
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
.1694:
.1691:
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
	mov rbx, [_gbackend_type]
	mov r11, 1
	xor r12, r12
	cmp rbx, r11
	sete r12b
	test r12, r12
	jz .1695
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s778
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
	mov rdi, _s779
	mov r8, 2
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s780
	mov r8, 7
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s781
	mov rsi, 13
	push rbx
	push rsi
	jmp .1696
.1695:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1698
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s782
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
	mov rdi, _s783
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
	mov rdi, _s784
	mov r8, 3
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s785
	mov r8, 7
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	test rdi, rdi
	jz .1699
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s786
	mov r8, 7
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s787
	mov r8, 2
	mov qword [rbx], rdi
	push rsi
.1699:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, 0
	mov qword [rsi], rbx
	mov rbx, _s788
	mov rsi, 13
	push rbx
	push rsi
.1698:
.1696:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1701
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s789
	mov rsi, 1
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	add rbx, 40
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call argp_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s790
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1701:
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
	test rdi, rdi
	jz .1703
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
.1703:
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
	mov [_gfwrite_buffer.fd_loc], rsi
	mov rsi, 1
	mov [_gbackend_type], rsi
	mov rsi, 0
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 35], rdi
	mov qword [r8 + 43], rsi
	mov r8, 0
	mov r9, 0
	mov r10, qword [_rs_p]
	mov qword [r10 + 51], r9
	mov qword [r10 + 59], r8
	mov r10, 0
	mov r11, qword [_rs_p]
	mov qword [r11 + 11], r10
	mov r11, qword _gdebug_symbols
	mov r12, 0
	mov byte [r11], r12b
	mov r11, 1
	push r11
.1705:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1706
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
	mov rbx, _s11
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
	jz .1707
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1709
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
.1709:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
	jmp .1708
.1707:
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
	jz .1712
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1713
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
.1713:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
	jmp .1708
.1712:
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
	jz .1716
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1717
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
.1717:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1719
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
.1719:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1708
.1716:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s14
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
	test rsi, rsi
	jz .1722
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1723
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
.1723:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1725
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
.1725:
	mov rbx, qword _gverbose_mode
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1708
.1722:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s16
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
	jz .1728
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1729
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
.1729:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .1708
.1728:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s17
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
	mov rbx, _s18
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
	test rsi, rsi
	jz .1732
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
	jmp .1708
.1732:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s19
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
	mov rbx, _s20
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
	test rsi, rsi
	jz .1734
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
	test rdi, rdi
	jz .1735
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
.1735:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1708
.1734:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s21
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
	mov rbx, _s22
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
	test rsi, rsi
	jz .1738
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
	test rdi, rdi
	jz .1739
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
.1739:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1708
.1738:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1742
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1744
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
.1744:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 59], rsi
	jmp .1743
.1742:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1747
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1748
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
.1748:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 43], rsi
	jmp .1743
.1747:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1751
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
	jmp .1743
.1751:
	mov rbx, 0
	test rbx, rbx
	jnz .2222
	mov eax, 1
	mov edi, 2
	mov rsi, _s31
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.2222:
.1752:
.1743:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
.1741:
.1708:
	pop rbx
	inc rbx
	push rbx
	jmp .1705
.1706:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1753
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1755
	mov rbx, _s32
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
	mov rbx, _s26
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
	mov rbx, _s28
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
	mov rbx, _s29
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
	mov rbx, _s30
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
	jmp .1756
.1755:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1758
	mov rbx, _s33
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
	mov rbx, _s26
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
	mov rbx, _s28
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
	mov rbx, _s29
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
	mov rbx, _s30
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
.1758:
.1756:
.1753:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1759
	mov rbx, _s34
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
	mov rbx, _s26
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
	mov rbx, _s28
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
	mov rbx, _s29
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
	mov rbx, _s30
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
.1759:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1761
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, [_gbackend_type]
	mov rdi, 2
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	or rsi, r8
	test rsi, rsi
	jz .1763
	mov rbx, _s35
	mov rsi, 3
	push rbx
	push rsi
	jmp .1765
.1763:
	mov rbx, _s36
	mov rsi, 5
	push rbx
	push rsi
.1765:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 35], rsi
	pop rdi
	mov qword [rbx + 43], rdi
	jmp .1766
.1761:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, _s37
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
	jz .1767
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.1767:
.1766:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1769
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s43
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s44
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1769:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rbx, _s141
	mov rsi, 14
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.end
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1771
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1771:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1773
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s232
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gtoken_stream.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s233
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1773:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.parse
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s352
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.end
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1775
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gfunctions.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s353
	mov rsi, 12
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_glabel_c]
	inc rbx
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s354
	mov rsi, 8
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
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gglobal_var_context.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s355
	mov rsi, 19
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s356
	mov rsi, 11
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1775:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1777
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1777:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1779
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s426
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1779:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.dce
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s430
	mov rsi, 9
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.end
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1781
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gused_functions]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s431
	mov rsi, 26
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_ginlined_functions]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s432
	mov rsi, 25
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
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gslits.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s433
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1781:
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1783
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
	mov rdi, _s434
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
	pop rbx
	mov [_gfwrite_buffer.fd_loc], rbx
	jmp .1785
.1783:
	mov rbx, 1
	mov [_gfwrite_buffer.fd_loc], rbx
.1785:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1786
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s437
	mov rsi, 21
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gir_stream.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s438
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1786:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rbx, _s766
	mov rsi, 9
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.end
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1788
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1788:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1790
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s767
	mov rsi, 10
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gfwrite_buffer.fd_loc]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_stat_size
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1024
	mov rax, rsi
	xor rdx, rdx
	div rdi
	mov rsi, 0
	xor rdi, rdi
	cmp rax, rsi
	seta dil
	push rbx
	test rdi, rdi
	jz .1792
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s768
	mov rsi, 14
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .1794
.1792:
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s769
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1794:
.1790:
	mov rbx, [_gfwrite_buffer.fd_loc]
	mov rsi, 3
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	test rsi, rsi
	jz .1795
	mov rbx, _s770
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
.1795:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1797
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s771
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 67]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s772
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1797:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1799
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s773
	mov rsi, 29
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, [_gbackend_type]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call StasBackend.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s777
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1799:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rbx, _s799
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.end
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1801
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s800
	mov rsi, 16
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s801
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1801:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, [_gbackend_type]
	mov rdi, 2
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	or rsi, r8
	test rsi, rsi
	jz .1803
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
.1803:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1805
	mov rbx, qword [_rs_p]
	add rbx, 75
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, qword _gstring_buffer
	mov rsi, [_gstring_buffer.len]
	add rbx, rsi
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
.1807:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1808
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
	jmp .1807
.1808:
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
	mov r8, qword _gverbose_mode
	xor r9, r9
	mov r9b, [r8]
	push rsi
	push rdi
	push rbx
	test r9, r9
	jz .1809
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
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
	mov rbx, _s39
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s40
	mov rsi, 6
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
	mov rbx, _s41
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
	mov rbx, _s42
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s802
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 83]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call argp_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s803
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1809:
	mov rbx, 59
	mov rax, rbx
	pop rdx
	pop rsi
	pop rdi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	test rsi, rsi
	jz .1811
	mov rbx, _s804
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
.1811:
.1805:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 91
	ret
segment readable
_s0: db "stas 0.1.1 Copyright (C) 2022  l-m.dev", 10, 10, 0
_s1: db "USAGE: ./stas [OPTIONS] [FILE]", 10, 10, 0
_s2: db "	-o <output>       Specify '-o -' to dump assembly to stdout", 10, 0
_s3: db "	-g                Debug info. Most effective with the `nasm` backend", 10, 0
_s4: db "	-b <backend>      Assemblers `nasm` or `fasm` as compiler backend", 10, 0
_s5: db "	-r                Execute file after compiling. Arguments after this", 10, 0
_s6: db "	                  switch will ignored and passed to the program", 10, 0
_s7: db "	-v, --verbose     Activate verbose mode", 10, 0
_s8: db "	--dump-tok        Dump token information after scanning stage", 10, 0
_s9: db "	--dump-ir         Dump intermediate representation after parsing stage", 10, 0
_s10: db "	-h, --help        Show this message", 10, 10, 0
_s11: db "-o", 0
_s12: db "-b", 0
_s13: db "-g", 0
_s14: db "--verbose", 0
_s15: db "-v", 0
_s16: db "-r", 0
_s17: db "--help", 0
_s18: db "-h", 0
_s19: db "--dump-ir", 0
_s20: db "-h", 0
_s21: db "--dump-tok", 0
_s22: db "-h", 0
_s23: db "fasm", 0
_s24: db "nasm", 0
_s25: db "unknown backend", 0
_s26: db "[1m", 0
_s27: db "[31m", 0
_s28: db "FATAL: ", 0
_s29: db "[39m", 0
_s30: db "[22m", 0
_s31: db 27, "[1m", 27, "[31mstas.stas:218:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s32: db "supply output file", 0
_s33: db "supply backend type", 0
_s34: db "supply stas file", 0
_s35: db "a.o", 0
_s36: db "a.out", 0
_s37: db "-", 0
_s38: db "[1m", 0
_s39: db "[33m", 0
_s40: db "LOG:  ", 0
_s41: db "[39m", 0
_s42: db "[22m", 0
_s43: db "scanning file `", 0
_s44: db "`", 10, 0
_s45: db "FATAL: Failed to get current time", 0
_s46: db "FATAL: Failed to open file '", 0
_s47: db "'", 10, 0
_s48: db "FATAL: Failed to stat the file descriptor", 10, 0
_s49: db "FATAL: Could not mmap file '", 0
_s50: db "'", 10, 0
_s51: db "FATAL: Failed to close file descriptor", 10, 0
_s52: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s53: db 27, "[1m", 27, "[31msrc/formatting.stas:49:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s54: db "unterminated string literal", 0
_s55: db 27, "[1m", 27, "[31msrc/formatting.stas:37:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s56: db ":", 0
_s57: db ":", 0
_s58: db ": ", 0
_s59: db 10, 0
_s60: db "escape character does not exist", 0
_s61: db "unhandled escape character", 0
_s62: db "including file `", 0
_s63: db "`", 10, 0
_s64: db 27, "[1m", 27, "[31msrc/tokens.stas:402:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s65: db "unterminated character literal", 0
_s66: db "empty character literal", 0
_s67: db "unhandled escape character", 0
_s68: db "character literals must contain a single character", 0
_s69: db "escape character does not exist", 0
_s70: db "file to include is not a string", 0
_s71: db 27, "[1m", 27, "[31mlib/conv.stas:59:15: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s72: db "include", 0
_s73: db "{", 0
_s74: db "}", 0
_s75: db "->", 0
_s76: db "fn", 0
_s77: db "_breakpoint", 0
_s78: db "const", 0
_s79: db "assert", 0
_s80: db "argc", 0
_s81: db "argv", 0
_s82: db "ret", 0
_s83: db "if", 0
_s84: db "else", 0
_s85: db "elif", 0
_s86: db "while", 0
_s87: db "break", 0
_s88: db "continue", 0
_s89: db "+", 0
_s90: db "-", 0
_s91: db "*", 0
_s92: db "/", 0
_s93: db "%", 0
_s94: db "++", 0
_s95: db "--", 0
_s96: db "%%", 0
_s97: db ">>", 0
_s98: db "<<", 0
_s99: db "&", 0
_s100: db "|", 0
_s101: db "~", 0
_s102: db "!", 0
_s103: db "^", 0
_s104: db "swap", 0
_s105: db "dup", 0
_s106: db "over", 0
_s107: db "over2", 0
_s108: db "rot", 0
_s109: db "rot4", 0
_s110: db "drop", 0
_s111: db "=", 0
_s112: db "!=", 0
_s113: db ">", 0
_s114: db "<", 0
_s115: db ">=", 0
_s116: db "<=", 0
_s117: db ">s", 0
_s118: db "<s", 0
_s119: db ">=s", 0
_s120: db "<=s", 0
_s121: db "w8", 0
_s122: db "w16", 0
_s123: db "w32", 0
_s124: db "w64", 0
_s125: db "r8", 0
_s126: db "r16", 0
_s127: db "r32", 0
_s128: db "r64", 0
_s129: db "syscall0", 0
_s130: db "syscall1", 0
_s131: db "syscall2", 0
_s132: db "syscall3", 0
_s133: db "syscall4", 0
_s134: db "syscall5", 0
_s135: db "syscall6", 0
_s136: db "reserve", 0
_s137: db "auto", 0
_s138: db "pop", 0
_s139: db "addr", 0
_s140: db "unexpected EOF when parsing file to include", 0
_s141: db "scanning took ", 0
_s142: db "[1m", 0
_s143: db "[34m", 0
_s144: db "TIME: ", 0
_s145: db "FATAL: Failed to get current time", 0
_s146: db ".", 0
_s147: db " ms", 10, 0
_s148: db "[39m", 0
_s149: db "[22m", 0
_s150: db 27, "[1m", 27, "[31msrc/tokens.stas:387:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s151: db ":", 0
_s152: db ":", 0
_s153: db ": ", 0
_s154: db "name", 0
_s155: db "string_lit", 0
_s156: db "number_lit", 0
_s157: db "{", 0
_s158: db "}", 0
_s159: db "->", 0
_s160: db "fn", 0
_s161: db "_breakpoint", 0
_s162: db "const", 0
_s163: db "assert", 0
_s164: db "argc", 0
_s165: db "argv", 0
_s166: db "ret", 0
_s167: db "if", 0
_s168: db "else", 0
_s169: db "elif", 0
_s170: db "while", 0
_s171: db "break", 0
_s172: db "continue", 0
_s173: db "+", 0
_s174: db "-", 0
_s175: db "*", 0
_s176: db "/", 0
_s177: db "%", 0
_s178: db "++", 0
_s179: db "--", 0
_s180: db "%%", 0
_s181: db ">>", 0
_s182: db "<<", 0
_s183: db "&", 0
_s184: db "|", 0
_s185: db "~", 0
_s186: db "!", 0
_s187: db "^", 0
_s188: db "swap", 0
_s189: db "dup", 0
_s190: db "over", 0
_s191: db "over2", 0
_s192: db "rot", 0
_s193: db "rot4", 0
_s194: db "drop", 0
_s195: db "=", 0
_s196: db "!=", 0
_s197: db ">", 0
_s198: db "<", 0
_s199: db ">=", 0
_s200: db "<=", 0
_s201: db ">s", 0
_s202: db "<s", 0
_s203: db ">=s", 0
_s204: db "<=s", 0
_s205: db "w8", 0
_s206: db "w16", 0
_s207: db "w32", 0
_s208: db "w64", 0
_s209: db "r8", 0
_s210: db "r16", 0
_s211: db "r32", 0
_s212: db "r64", 0
_s213: db "syscall0", 0
_s214: db "syscall1", 0
_s215: db "syscall2", 0
_s216: db "syscall3", 0
_s217: db "syscall4", 0
_s218: db "syscall5", 0
_s219: db "syscall6", 0
_s220: db "reserve", 0
_s221: db "auto", 0
_s222: db "pop", 0
_s223: db "addr", 0
_s224: db 27, "[1m", 27, "[31msrc/tokens.stas:216:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s225: db " -> ", 0
_s226: db " -> ", 0
_s227: db " -> ", 0
_s228: db 27, "[1m", 27, "[31mlib/array.stas:130:24: ", 27, "[39m", 27, "[22massertation failed, 'Array64.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s229: db 27, "[1m", 27, "[31mlib/array.stas:93:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64<<: append exceeded bounds in Array64'", 10, 0
_s230: db 27, "[1m", 27, "[31mlib/array.stas:89:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64[]: index out of bounds'", 10, 0
_s231: db "    ", 0
_s232: db "parsing ", 0
_s233: db " tokens", 10, 0
_s234: db "unexpected EOF when parsing constant expression", 0
_s235: db "constant expression name must not be in instrinsic", 0
_s236: db 27, "[1m", 27, "[31msrc/parserdefs.stas:408:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s237: db "duplicate constant expression name as existing function name", 0
_s238: db 27, "[1m", 27, "[31msrc/parserdefs.stas:434:31: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s239: db 27, "[1m", 27, "[31msrc/parserdefs.stas:458:31: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s240: db "constant expression name as duplicate top level variable name", 0
_s241: db "a scope must follow a const expression decl", 0
_s242: db 27, "[1m", 27, "[31msrc/parserdefs.stas:447:50: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s243: db 27, "[1m", 27, "[31msrc/parser.stas:1302:13: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s244: db 27, "[1m", 27, "[31msrc/parserdefs.stas:397:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s245: db 27, "[1m", 27, "[31msrc/parserdefs.stas:376:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s246: db "unclosed scope for constant expression", 0
_s247: db "unexpected EOF when parsing function", 0
_s248: db "function name must not be an intrinsic", 0
_s249: db "function return and argument counts must be numbers", 0
_s250: db "new scope must proceed after function header", 0
_s251: db "a function name cannot begin with an an underscore", 0
_s252: db "duplicate function name", 0
_s253: db "function name already exists as variable name", 0
_s254: db "main", 0
_s255: db "the main function must accept and return zero values", 0
_s256: db 27, "[1m", 27, "[31msrc/parserdefs.stas:429:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s257: db 27, "[1m", 27, "[31msrc/parserdefs.stas:329:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s258: db 27, "[1m", 27, "[31msrc/parser.stas:310:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s259: db 27, "[1m", 27, "[31msrc/parser.stas:311:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s260: db 27, "[1m", 27, "[31msrc/parser.stas:61:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s261: db "unexpected EOF when parsing variable decl", 0
_s262: db "variable name must not be an intrinsic", 0
_s263: db "variable decl must not be a function", 0
_s264: db "variable decl must specify size in bytes", 0
_s265: db "duplicate top level variable name", 0
_s266: db 27, "[1m", 27, "[31msrc/parserdefs.stas:472:50: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s267: db "unknown toplevel token", 0
_s268: db 27, "[1m", 27, "[31msrc/parserdefs.stas:452:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s269: db 27, "[1m", 27, "[31msrc/parserdefs.stas:315:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s270: db 27, "[1m", 27, "[31msrc/eval.stas:8:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s271: db 27, "[1m", 27, "[31msrc/eval.stas:21:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s272: db 27, "[1m", 27, "[31msrc/eval.stas:15:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s273: db 27, "[1m", 27, "[31msrc/parser.stas:1344:25: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s274: db "constant expression must contain a value", 0
_s275: db "more than one unhandled value on left on the constant expression", 0
_s276: db 27, "[1m", 27, "[31msrc/parser.stas:29:15: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s277: db "backtrace", 0
_s278: db 27, "[1m", 27, "[31msrc/parser.stas:1369:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s279: db "unknown constant variable", 0
_s280: db "no value on stack to consume for assertion", 0
_s281: db 0
_s282: db "[1m", 0
_s283: db "[31m", 0
_s284: db ":", 0
_s285: db ":", 0
_s286: db ": ", 0
_s287: db "[39m", 0
_s288: db "[22m", 0
_s289: db "assertation failed, '", 0
_s290: db "'", 10, 0
_s291: db "assertation failed", 10, 0
_s292: db "not enough values to consume for operation", 0
_s293: db 27, "[1m", 27, "[31msrc/parserdefs.stas:352:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s294: db "duplicate variable name", 0
_s295: db 27, "[1m", 27, "[31msrc/parserdefs.stas:366:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s296: db "unexpected EOF", 0
_s297: db "expected name of variable", 0
_s298: db "cannot pop into a buffer", 0
_s299: db "cannot get address of a buffer, buffer is already an address", 0
_s300: db "not enought values on the stack to pop into an automatic variable", 0
_s301: db 27, "[1m", 27, "[31msrc/parser.stas:491:8: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s302: db "cannot pop into a buffer", 0
_s303: db "cannot get address of a buffer, buffer is already an address", 0
_s304: db "not enought values on the stack to pop into an automatic variable", 0
_s305: db 27, "[1m", 27, "[31msrc/parser.stas:525:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s306: db "unknown variable", 0
_s307: db "not enough values to consume for function call", 0
_s308: db 27, "[1m", 27, "[31msrc/parser.stas:583:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s309: db 27, "[1m", 27, "[31msrc/parser.stas:603:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s310: db "unknown function call or variable", 0
_s311: db "no value on stack to consume for if statement", 0
_s312: db 27, "[1m", 27, "[31msrc/parserdefs.stas:392:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s313: db "unexpected EOF when parsing if statement", 0
_s314: db "a scope must come after an if statement", 0
_s315: db "not inside while loop body", 0
_s316: db "not inside while loop body", 0
_s317: db "not inside while loop body", 0
_s318: db 27, "[1m", 27, "[31msrc/parser.stas:711:59: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s319: db "not inside while loop body", 0
_s320: db "no value on stack to consume for while header", 0
_s321: db "no value on stack to consume for else if statement", 0
_s322: db "unreachable code", 0
_s323: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s324: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s325: db "unexpected EOF when parsing else statement", 0
_s326: db "a scope must come after an else statement", 0
_s327: db "the stack must remain the same with single branches", 0
_s328: db 27, "[1m", 27, "[31msrc/parser.stas:912:12: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s329: db "the stack must remain the same each with else if branch", 0
_s330: db "unexpected EOF when parsing else statement", 0
_s331: db "a scope must come after an else statement", 0
_s332: db "the stack must remain the same with single branches", 0
_s333: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s334: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s335: db 27, "[1m", 27, "[31msrc/parser.stas:972:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s336: db 27, "[1m", 27, "[31msrc/parser.stas:233:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s337: db "unhandled data on the stack", 0
_s338: db "not enough values on the stack on function return", 0
_s339: db "unhandled data on the stack for early return", 0
_s340: db "not enough values on the stack on early return", 0
_s341: db 27, "[1m", 27, "[31msrc/parser.stas:242:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s342: db "unexpected EOF when parsing checked scope", 0
_s343: db "a number must appear after the arrow assert operator", 0
_s344: db "a scope must come after the arrow assert operator", 0
_s345: db "unknown function local token", 0
_s346: db "cannot define constant expression inside a constant expression", 0
_s347: db "unknown constant expression token", 0
_s348: db 27, "[1m", 27, "[31msrc/parser.stas:1392:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s349: db 27, "[1m", 27, "[31msrc/parser.stas:1393:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s350: db "unclosed scopes on parser finish", 0
_s351: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s352: db "parsing took ", 0
_s353: db " functions, ", 0
_s354: db " labels", 10, 0
_s355: db " global variables, ", 0
_s356: db " constants", 10, 0
_s357: db "tok[]	data	inst", 10, 10, 0
_s358: db "	", 0
_s359: db "	", 0
_s360: db "push_str", 0
_s361: db "push_num", 0
_s362: db "push_local_addr", 0
_s363: db "pop_local_stack_var", 0
_s364: db "push_local_stack_var", 0
_s365: db "push_global_var_name", 0
_s366: db "pop_global_stack_var", 0
_s367: db "push_global_stack_var", 0
_s368: db "push_argc", 0
_s369: db "push_argv", 0
_s370: db "do_cond_jmp", 0
_s371: db "do_jmp", 0
_s372: db "label", 0
_s373: db "fn_prelude", 0
_s374: db "fn_leave", 0
_s375: db "fn_call", 0
_s376: db "assert", 0
_s377: db "trap_breakpoint", 0
_s378: db "plus", 0
_s379: db "sub", 0
_s380: db "mul", 0
_s381: db "div", 0
_s382: db "mod", 0
_s383: db "inc", 0
_s384: db "dec", 0
_s385: db "divmod", 0
_s386: db "shr", 0
_s387: db "shl", 0
_s388: db "not", 0
_s389: db "b_and", 0
_s390: db "b_or", 0
_s391: db "b_not", 0
_s392: db "b_xor", 0
_s393: db "swap", 0
_s394: db "dup", 0
_s395: db "over", 0
_s396: db "over2", 0
_s397: db "rot", 0
_s398: db "rot4", 0
_s399: db "drop", 0
_s400: db "equ", 0
_s401: db "nequ", 0
_s402: db "gt", 0
_s403: db "lt", 0
_s404: db "gte", 0
_s405: db "lte", 0
_s406: db "s_gt", 0
_s407: db "s_lt", 0
_s408: db "s_gte", 0
_s409: db "s_lte", 0
_s410: db "w8", 0
_s411: db "w16", 0
_s412: db "w32", 0
_s413: db "w64", 0
_s414: db "r8", 0
_s415: db "r16", 0
_s416: db "r32", 0
_s417: db "r64", 0
_s418: db "syscall0", 0
_s419: db "syscall1", 0
_s420: db "syscall2", 0
_s421: db "syscall3", 0
_s422: db "syscall4", 0
_s423: db "syscall5", 0
_s424: db "syscall6", 0
_s425: db 27, "[1m", 27, "[31msrc/parserdefs.stas:293:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s426: db "dce pass started", 10, 0
_s427: db "no main function", 0
_s428: db 27, "[1m", 27, "[31msrc/dce.stas:12:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s429: db 27, "[1m", 27, "[31msrc/dce.stas:101:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s430: db "dce took ", 0
_s431: db " used functions, of which ", 0
_s432: db " are eligible for inline", 10, 0
_s433: db " string literals", 10, 0
_s434: db ".tmp", 0
_s435: db "FATAL: Failed to open file '", 0
_s436: db "'", 10, 0
_s437: db "generating code from ", 0
_s438: db " IR instructions", 10, 0
_s439: db "use64", 0
_s440: db 27, "[1m", 27, "[31msrc/write.stas:17:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s441: db 27, "[1m", 27, "[31msrc/write.stas:10:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s442: db "format ELF64", 0
_s443: db "section '.text' executable", 0
_s444: db "public _start", 0
_s445: db "public _exit", 0
_s446: db "format ELF64 executable", 0
_s447: db "segment readable executable", 0
_s448: db "entry _start", 0
_s449: db "%line 0+0 '", 0
_s450: db "'", 0
_s451: db "[BITS 64]", 0
_s452: db "[global _start]", 0
_s453: db "[section .text]", 0
_s454: db 27, "[1m", 27, "[31msrc/gen.stas:699:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s455: db "_start:", 0
_s456: db "	mov [_arg_p], rsp", 0
_s457: db "	mov qword [_rs_p], _rs_top", 0
_s458: db "	mov rbp, rsp", 0
_s459: db "	mov rsp, [_rs_p]", 0
_s460: db "	call main", 0
_s461: db "	xor rdi, rdi", 0
_s462: db "_exit:", 0
_s463: db "	mov eax, 60", 0
_s464: db "	syscall", 0
_s465: db "	nop", 0
_s466: db "%line ", 0
_s467: db "+0 '", 0
_s468: db "'", 0
_s469: db "	push ", 0
_s470: db "rbx", 0
_s471: db "rcx", 0
_s472: db "rsi", 0
_s473: db "rdi", 0
_s474: db "r8", 0
_s475: db "r9", 0
_s476: db "r10", 0
_s477: db "r11", 0
_s478: db "r12", 0
_s479: db "r13", 0
_s480: db "r14", 0
_s481: db "r15", 0
_s482: db "rdx", 0
_s483: db "rax", 0
_s484: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s485: db 27, "[1m", 27, "[31msrc/gen.stas:59:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s486: db "public ", 0
_s487: db "_a", 0
_s488: db "_b", 0
_s489: db "_c", 0
_s490: db "_d", 0
_s491: db "_e", 0
_s492: db "_f", 0
_s493: db "_g", 0
_s494: db ":", 0
_s495: db "	sub rsp, ", 0
_s496: db "	mov [_rs_p], rsp", 0
_s497: db "	mov rsp, rbp", 0
_s498: db "	mov rbp, rsp", 0
_s499: db "	mov rsp, [_rs_p]", 0
_s500: db "	add rsp, ", 0
_s501: db "	ret", 0
_s502: db "	mov rbp, rsp", 0
_s503: db "	mov rsp, [_rs_p]", 0
_s504: db "	call ", 0
_s505: db "	mov [_rs_p], rsp", 0
_s506: db "	mov rsp, rbp", 0
_s507: db 27, "[1m", 27, "[31msrc/x86.stas:178:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s508: db "	pop ", 0
_s509: db 27, "[1m", 27, "[31msrc/x86.stas:195:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s510: db "	test ", 0
_s511: db ", ", 0
_s512: db "	jnz ", 0
_s513: db "	mov eax, 1", 0
_s514: db "	mov edi, 2", 0
_s515: db "	mov rsi, _s", 0
_s516: db "	mov rdx, ", 0
_s517: db 27, "[1m", 27, "[31msrc/dce.stas:22:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s518: db "	syscall", 0
_s519: db "	mov rdi, 1", 0
_s520: db "	jmp _exit", 0
_s521: db 27, "[1m", 27, "[31msrc/x86.stas:189:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s522: db 27, "[1m", 27, "[31msrc/x86.stas:170:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s523: db 27, "[1m", 27, "[31msrc/x86.stas:171:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s524: db "	mov ", 0
_s525: db ", ", 0
_s526: db "_s", 0
_s527: db "	mov ", 0
_s528: db ", ", 0
_s529: db "qword [_rs_p]", 0
_s530: db "	add ", 0
_s531: db "	pop ", 0
_s532: db ", ", 0
_s533: db "	mov ", 0
_s534: db ", qword [_rs_p]", 0
_s535: db "	mov qword [", 0
_s536: db " + ", 0
_s537: db "], ", 0
_s538: db "	mov ", 0
_s539: db ", qword [_rs_p]", 0
_s540: db "qword [", 0
_s541: db " + ", 0
_s542: db "]", 0
_s543: db "qword _g", 0
_s544: db "	mov [_g", 0
_s545: db "], ", 0
_s546: db "	mov ", 0
_s547: db ", _g", 0
_s548: db "	mov qword [", 0
_s549: db " + ", 0
_s550: db "], ", 0
_s551: db "	mov ", 0
_s552: db ", [_g", 0
_s553: db "]", 0
_s554: db "	mov ", 0
_s555: db ", _g", 0
_s556: db "qword [", 0
_s557: db " + ", 0
_s558: db "]", 0
_s559: db "	mov ", 0
_s560: db ", qword [_arg_p]", 0
_s561: db "	mov ", 0
_s562: db ", [", 0
_s563: db "]", 0
_s564: db "	mov ", 0
_s565: db ", qword [_arg_p]", 0
_s566: db "	add ", 0
_s567: db ", 8", 0
_s568: db "	test ", 0
_s569: db ", ", 0
_s570: db "	jz ", 0
_s571: db "	jmp ", 0
_s572: db 27, "[1m", 27, "[31msrc/x86.stas:201:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s573: db "	mov ", 0
_s574: db ", ", 0
_s575: db "	mov ", 0
_s576: db ", ", 0
_s577: db 27, "[1m", 27, "[31msrc/x86.stas:348:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s578: db "	pop ", 0
_s579: db "	db 0xcc", 0
_s580: db "add", 0
_s581: db ", ", 0
_s582: db "sub", 0
_s583: db "imul", 0
_s584: db "	xor rdx, rdx", 0
_s585: db "	div ", 0
_s586: db "	xor rdx, rdx", 0
_s587: db "	div ", 0
_s588: db "	inc ", 0
_s589: db "	dec ", 0
_s590: db "	xor rdx, rdx", 0
_s591: db "	div ", 0
_s592: db "	shr ", 0
_s593: db ", cl", 0
_s594: db "	shl ", 0
_s595: db ", cl", 0
_s596: db "	test ", 0
_s597: db ", ", 0
_s598: db "	sete ", 0
_s599: db "bl", 0
_s600: db "cl", 0
_s601: db "sil", 0
_s602: db "dil", 0
_s603: db "r8b", 0
_s604: db "r9b", 0
_s605: db "r10b", 0
_s606: db "r11b", 0
_s607: db "r12b", 0
_s608: db "r13b", 0
_s609: db "r14b", 0
_s610: db "r15b", 0
_s611: db "dl", 0
_s612: db "al", 0
_s613: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s614: db "and", 0
_s615: db "or", 0
_s616: db "	not ", 0
_s617: db "xor", 0
_s618: db "	mov ", 0
_s619: db ", ", 0
_s620: db "qword [rsp + ", 0
_s621: db "]", 0
_s622: db "qword [rsp + ", 0
_s623: db "]", 0
_s624: db "	add rsp, 8", 0
_s625: db "	xor ", 0
_s626: db ", ", 0
_s627: db "	cmp ", 0
_s628: db ", ", 0
_s629: db "	sete ", 0
_s630: db "	xor ", 0
_s631: db ", ", 0
_s632: db "	cmp ", 0
_s633: db ", ", 0
_s634: db "	setne ", 0
_s635: db "	xor ", 0
_s636: db ", ", 0
_s637: db "	cmp ", 0
_s638: db ", ", 0
_s639: db "	seta ", 0
_s640: db "	xor ", 0
_s641: db ", ", 0
_s642: db "	cmp ", 0
_s643: db ", ", 0
_s644: db "	setb ", 0
_s645: db "	xor ", 0
_s646: db ", ", 0
_s647: db "	cmp ", 0
_s648: db ", ", 0
_s649: db "	setae ", 0
_s650: db "	xor ", 0
_s651: db ", ", 0
_s652: db "	cmp ", 0
_s653: db ", ", 0
_s654: db "	setbe ", 0
_s655: db "	xor ", 0
_s656: db ", ", 0
_s657: db "	cmp ", 0
_s658: db ", ", 0
_s659: db "	setg ", 0
_s660: db "	xor ", 0
_s661: db ", ", 0
_s662: db "	cmp ", 0
_s663: db ", ", 0
_s664: db "	setl ", 0
_s665: db "	xor ", 0
_s666: db ", ", 0
_s667: db "	cmp ", 0
_s668: db ", ", 0
_s669: db "	setge ", 0
_s670: db "	xor ", 0
_s671: db ", ", 0
_s672: db "	cmp ", 0
_s673: db ", ", 0
_s674: db "	setle ", 0
_s675: db "	mov byte [", 0
_s676: db "], ", 0
_s677: db "	mov word [", 0
_s678: db "], ", 0
_s679: db "bx", 0
_s680: db "cx", 0
_s681: db "si", 0
_s682: db "di", 0
_s683: db "r8w", 0
_s684: db "r9w", 0
_s685: db "r10w", 0
_s686: db "r11w", 0
_s687: db "r12w", 0
_s688: db "r13w", 0
_s689: db "r14w", 0
_s690: db "r15w", 0
_s691: db "dx", 0
_s692: db "ax", 0
_s693: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s694: db "	mov dword [", 0
_s695: db "], ", 0
_s696: db "ebx", 0
_s697: db "ecx", 0
_s698: db "esi", 0
_s699: db "edi", 0
_s700: db "r8d", 0
_s701: db "r9d", 0
_s702: db "r10d", 0
_s703: db "r11d", 0
_s704: db "r12d", 0
_s705: db "r13d", 0
_s706: db "r14d", 0
_s707: db "r15d", 0
_s708: db "edx", 0
_s709: db "eax", 0
_s710: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s711: db "	mov qword [", 0
_s712: db "], ", 0
_s713: db "	xor ", 0
_s714: db ", ", 0
_s715: db "	mov ", 0
_s716: db ", [", 0
_s717: db "]", 0
_s718: db "	xor ", 0
_s719: db ", ", 0
_s720: db "	mov ", 0
_s721: db ", [", 0
_s722: db "]", 0
_s723: db "	mov ", 0
_s724: db ", [", 0
_s725: db "]", 0
_s726: db "	mov ", 0
_s727: db ", [", 0
_s728: db "]", 0
_s729: db "	syscall", 0
_s730: db "	syscall", 0
_s731: db "	syscall", 0
_s732: db "	syscall", 0
_s733: db "	syscall", 0
_s734: db "	syscall", 0
_s735: db "	syscall", 0
_s736: db 27, "[1m", 27, "[31msrc/gen.stas:597:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s737: db "section '.rodata'", 0
_s738: db "segment readable", 0
_s739: db "[section .rodata]", 0
_s740: db 27, "[1m", 27, "[31msrc/gen.stas:725:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s741: db "_s", 0
_s742: db ": db ", 0
_s743: db "0", 10, 0
_s744: db 34, 0
_s745: db ", ", 34, 0
_s746: db 34, ", ", 0
_s747: db ", ", 0
_s748: db 34, 0
_s749: db ", 0", 10, 0
_s750: db "section '.bss' writable", 0
_s751: db "segment readable writable", 0
_s752: db "[section .bss]", 0
_s753: db 27, "[1m", 27, "[31msrc/gen.stas:749:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s754: db "_g", 0
_s755: db ": rb ", 0
_s756: db ": resb ", 0
_s757: db 27, "[1m", 27, "[31msrc/gen.stas:761:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s758: db "_arg_p: rq 1", 0
_s759: db "_rs_p: rq 1", 0
_s760: db "_rs: rb ", 0
_s761: db "_arg_p: resq 1", 0
_s762: db "_rs_p: resq 1", 0
_s763: db "_rs: resb ", 0
_s764: db 27, "[1m", 27, "[31msrc/gen.stas:777:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s765: db "_rs_top:", 0
_s766: db "gen took ", 0
_s767: db "generated ", 0
_s768: db " KiBs of code", 10, 0
_s769: db " bytes of code", 10, 0
_s770: db "FATAL: Failed to close file descriptor", 10, 0
_s771: db "wrote code to `", 0
_s772: db "`", 10, 0
_s773: db "executing assembler backend `", 0
_s774: db "fasm", 0
_s775: db "nasm", 0
_s776: db 27, "[1m", 27, "[31mstas.stas:17:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s777: db "`", 10, 0
_s778: db "fasm", 0
_s779: db "-m", 0
_s780: db "1048576", 0
_s781: db "/usr/bin/fasm", 0
_s782: db "nasm", 0
_s783: db "-o", 0
_s784: db "-O0", 0
_s785: db "-felf64", 0
_s786: db "-Fdwarf", 0
_s787: db "-g", 0
_s788: db "/usr/bin/nasm", 0
_s789: db "`", 0
_s790: db "`", 10, 0
_s791: db "/dev/null", 0
_s792: db "FATAL: Could not open /dev/null", 10, 0
_s793: db "FATAL: Could not open /dev/null as stdout", 10, 0
_s794: db "FATAL: Could not execve child", 0
_s795: db "FATAL: Could not wait for process", 0
_s796: db "FATAL: Child process was terminated by signal ", 0
_s797: db 27, "[1m", 27, "[31mlib/io.stas:435:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s798: db "FATAL: Could not fork child", 0
_s799: db "backend took ", 0
_s800: db "created binary `", 0
_s801: db "`", 10, 0
_s802: db "exceve binary `", 0
_s803: db "`", 10, 0
_s804: db "FATAL: Could not execve file", 10, 0
segment readable writable
_g_rand_state: rb 8
_gdebug_symbols: rb 1
_gverbose_mode: rb 1
_gbackend_type: rb 8
_gopened_files.len: rb 8
_gopened_files: rb 3072
_gstring_buffer.len: rb 8
_gstring_buffer: rb 262144
_gtoken_stream: rb 917504
_gtoken_stream.len: rb 8
_gtimespec_start: rb 16
_gfunctions.len: rb 8
_gfunctions: rb 20480
_gglobal_var_context.len: rb 8
_gglobal_var_context: rb 24576
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
_gdce.max_stack_frame: rb 8
_gslits.len: rb 8
_gslits: rb 8192
_gused_functions: rb 8
_ginlined_functions: rb 8
_grallocator_mask: rb 14
_grallocator_stack.len: rb 8
_grallocator_stack: rb 2048
_arg_p: rq 1
_rs_p: rq 1
_rs: rb 65536
_rs_top:
