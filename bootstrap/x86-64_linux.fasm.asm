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
fputpu_space:
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
	jz .8
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
.8:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 44], rbx
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov rdi, 20
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 36], rsi
.10:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .11
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
	jmp .10
.11:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .12
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	sub rsi, rdi
	push rsi
.14:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .15
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 36]
	mov rbx, 32
	mov byte [rdi], bl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rdi
	pop rbx
	dec rbx
	push rbx
	jmp .14
.15:
	add rsp, 8
.12:
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
	mov rbx, _s42
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
	mov rbx, _s40
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
	mov rbx, _s41
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
	mov rbx, _s40
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
	mov rbx, _s41
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
	mov rbx, _s43
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
	mov rbx, _s41
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
	mov rbx, _s44
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
	sub rsp, 40
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
	mov rbx, 18446744073709551516
	mov rsi, _s527
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
	mov rbx, _s528
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
	mov rbx, _s529
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
	mov rbx, qword [_arg_p]
	mov r8, [rbx]
	add rbx, 8
	lea rbx, [rbx + r8 * 8 + 8]
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
	mov rbx, _s530
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
	mov qword [rsi + 24], rbx
.61:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	test rsi, rsi
	jz .62
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	add rsi, 32
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
	mov rbx, _s531
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
	add rbx, 32
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
	mov qword [rsi + 24], rbx
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
	mov rbx, _s532
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
	mov rsi, _s51
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
	mov qword [rsi + 24], rbx
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
	jnz .1871
	mov eax, 1
	mov edi, 2
	mov rsi, _s533
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1871:
.75:
.66:
	add rsp, 8
	jmp .61
.62:
.59:
	jmp .50
.58:
	mov rbx, _s534
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
	add rsp, 40
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
	jnz .1872
	mov eax, 1
	mov edi, 2
	mov rsi, _s52
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.1872:
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
string.after_delim_u8:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .103
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.103:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	mov rdi, qword [rsp + 0]
	add rbx, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	pop rdi
	pop r8
	push rdi
	push r8
.105:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .106
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	xor rsi, rsi
	cmp rdi, r8
	sete sil
	push rbx
	test rsi, rsi
	jz .107
	pop rbx
	inc rbx
	pop rsi
	dec rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.107:
	pop rbx
	inc rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .105
.106:
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
string.after_delim_u8.ret_both:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 16]
	mov rsi, qword [rsp + 8]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.after_delim_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .109
	add rsp, 8
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, 0
	mov r8, 0
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.109:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [rsp + 8]
	sub rbx, rsi
	dec rbx
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push r9
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
string.starts_with:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 16]
	mov rsi, qword [rsp + 0]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .111
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.111:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	pop rdi
	pop r8
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push r9
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
string.trim_len_delim_u8:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
.113:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .114
	pop rbx
	mov rsi, rbx
	dec rsi
	mov rdi, qword [rsp + 0]
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
	jz .115
	pop rbx
	dec rbx
	push rbx
	jmp .117
.115:
	jmp .114
.117:
	jmp .113
.114:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
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
	jz .121
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.121:
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
.123:
	mov rbx, 1
	test rbx, rbx
	jz .124
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
	jz .125
	jmp .124
	jmp .127
.125:
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.127:
	jmp .123
.124:
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
.128:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .129
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
	jnz .1873
	mov eax, 1
	mov edi, 2
	mov rsi, _s66
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1873:
	mov rdi, 48
	sub r8, rdi
	add rsi, r8
	inc rbx
	push rsi
	push rbx
	jmp .128
.129:
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
.130:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .131
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
	jz .132
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .134
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .136
.134:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .137
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
	jnz .1874.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s53
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1874.1:
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
	jnz .1875.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s53
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1875.2:
	pop rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .139
.137:
	jmp .131
.139:
.136:
	pop rbx
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	push rbx
.132:
	pop rbx
	inc rbx
	push rbx
	jmp .130
.131:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .140
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .142
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
	jnz .1876.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s53
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1876.3:
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
	jnz .1877.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s53
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.1877.4:
.142:
.140:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
getenv:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_arg_p]
	mov r8, [rbx]
	add rbx, 8
	lea rbx, [rbx + r8 * 8 + 8]
	push rbx
.144:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .145
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
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	mov r9, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.starts_with
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .146
	mov rbx, 61
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.after_delim_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
	jmp .148
.146:
	add rsp, 8
	add rsp, 8
.148:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	push rsi
	jmp .144
.145:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
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
	jz .149
	mov rbx, _s21
	mov rsi, 4
	push rbx
	push rsi
	jmp .150
.149:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .152
	mov rbx, _s22
	mov rsi, 4
	push rbx
	push rsi
	jmp .150
.152:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1878
	mov eax, 1
	mov edi, 2
	mov rsi, _s519
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.1878:
	push rbx
	push rsi
.153:
.150:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
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
	jnz .1879.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s45
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1879.1:
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
	jnz .1880.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s45
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1880.2:
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
	jnz .1881.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s45
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1881.3:
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
	jnz .1882.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s45
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1882.4:
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
	jz .154
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.154:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, 262144
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1883.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s45
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1883.5:
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
	jnz .1884.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s45
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1884.6:
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
	jnz .1885
	mov eax, 1
	mov edi, 2
	mov rsi, _s46
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1885:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
join_path:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	pop r8
	mov r9, 47
	push rsi
	push rbx
	push r8
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.trim_len_delim_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 47
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
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
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
find_abs_path_of_executable:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, _s523
	mov r8, 4
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call getenv
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1886
	mov eax, 1
	mov edi, 2
	mov rsi, _s524
	mov rdx, 105
	syscall
	mov rdi, 1
	jmp _exit
.1886:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rdi
	mov qword [rbx + 24], rdi
.156:
	mov rbx, 1
	test rbx, rbx
	jz .157
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 16]
	mov rbx, 58
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.after_delim_u8.ret_both
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rdi
	mov qword [rbx + 24], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	mov r9, qword [rbx + 16]
	mov rbx, 0
	xor r9, r9
	cmp r8, rbx
	sete r9b
	test r9, r9
	jz .158
	add rsp, 8
	add rsp, 8
	jmp .157
	jmp .160
.158:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call join_path
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	mov rdi, 21
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	sete sil
	test rsi, rsi
	jz .161
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
	jmp .163
.161:
	add rsp, 8
	add rsp, 8
.163:
.160:
	jmp .156
.157:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
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
	jz .164
	mov rbx, _s142
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.164:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .167
	mov rbx, _s143
	mov rsi, 10
	push rbx
	push rsi
	jmp .165
.167:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .169
	mov rbx, _s144
	mov rsi, 10
	push rbx
	push rsi
	jmp .165
.169:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .171
	mov rbx, _s68
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.171:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .173
	mov rbx, _s69
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.173:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .175
	mov rbx, _s70
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.175:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .177
	mov rbx, _s71
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.177:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .179
	mov rbx, _s72
	mov rsi, 11
	push rbx
	push rsi
	jmp .165
.179:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .181
	mov rbx, _s73
	mov rsi, 5
	push rbx
	push rsi
	jmp .165
.181:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .183
	mov rbx, _s74
	mov rsi, 6
	push rbx
	push rsi
	jmp .165
.183:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .185
	mov rbx, _s75
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.185:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .187
	mov rbx, _s76
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.187:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .189
	mov rbx, _s77
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.189:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .191
	mov rbx, _s78
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.191:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .193
	mov rbx, _s79
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.193:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .195
	mov rbx, _s80
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.195:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .197
	mov rbx, _s81
	mov rsi, 5
	push rbx
	push rsi
	jmp .165
.197:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .199
	mov rbx, _s82
	mov rsi, 5
	push rbx
	push rsi
	jmp .165
.199:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .201
	mov rbx, _s83
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.201:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .203
	mov rbx, _s84
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.203:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .205
	mov rbx, _s34
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.205:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .207
	mov rbx, _s85
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.207:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .209
	mov rbx, _s86
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.209:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .211
	mov rbx, _s87
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.211:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .213
	mov rbx, _s88
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.213:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .215
	mov rbx, _s89
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.215:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .217
	mov rbx, _s90
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.217:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .219
	mov rbx, _s91
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.219:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .221
	mov rbx, _s92
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.221:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .223
	mov rbx, _s93
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.223:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .225
	mov rbx, _s94
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.225:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .227
	mov rbx, _s95
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.227:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .229
	mov rbx, _s96
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.229:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .231
	mov rbx, _s97
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.231:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .233
	mov rbx, _s98
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.233:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .235
	mov rbx, _s99
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.235:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .237
	mov rbx, _s100
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.237:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .239
	mov rbx, _s101
	mov rsi, 5
	push rbx
	push rsi
	jmp .165
.239:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .241
	mov rbx, _s102
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.241:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .243
	mov rbx, _s103
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.243:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .245
	mov rbx, _s104
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.245:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .247
	mov rbx, _s105
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.247:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .249
	mov rbx, _s106
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.249:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .251
	mov rbx, _s107
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.251:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .253
	mov rbx, _s108
	mov rsi, 1
	push rbx
	push rsi
	jmp .165
.253:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .255
	mov rbx, _s109
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.255:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .257
	mov rbx, _s110
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.257:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .259
	mov rbx, _s111
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.259:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .261
	mov rbx, _s112
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.261:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .263
	mov rbx, _s113
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.263:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .265
	mov rbx, _s114
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.265:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .267
	mov rbx, _s115
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.267:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .269
	mov rbx, _s116
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.269:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .271
	mov rbx, _s117
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.271:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .273
	mov rbx, _s118
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.273:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .275
	mov rbx, _s119
	mov rsi, 2
	push rbx
	push rsi
	jmp .165
.275:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .277
	mov rbx, _s120
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.277:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .279
	mov rbx, _s121
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.279:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .281
	mov rbx, _s122
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.281:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .283
	mov rbx, _s123
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.283:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .285
	mov rbx, _s124
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.285:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .287
	mov rbx, _s125
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.287:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .289
	mov rbx, _s126
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.289:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .291
	mov rbx, _s127
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.291:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .293
	mov rbx, _s128
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.293:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .295
	mov rbx, _s129
	mov rsi, 8
	push rbx
	push rsi
	jmp .165
.295:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .297
	mov rbx, _s130
	mov rsi, 7
	push rbx
	push rsi
	jmp .165
.297:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .299
	mov rbx, _s131
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.299:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .301
	mov rbx, _s132
	mov rsi, 3
	push rbx
	push rsi
	jmp .165
.301:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .303
	mov rbx, _s133
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.303:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .305
	mov rbx, _s134
	mov rsi, 4
	push rbx
	push rsi
	jmp .165
.305:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1887
	mov eax, 1
	mov edi, 2
	mov rsi, _s145
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1887:
	push rbx
	push rsi
.306:
.165:
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
	mov rbx, _s68
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
	jz .307
	mov rbx, 4
	push rbx
	jmp .308
.307:
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
	jz .310
	mov rbx, 5
	push rbx
	jmp .308
.310:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s70
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
	mov rbx, 6
	push rbx
	jmp .308
.312:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s71
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
	mov rbx, 7
	push rbx
	jmp .308
.314:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s72
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
	jz .316
	mov rbx, 8
	push rbx
	jmp .308
.316:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s73
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
	jz .318
	mov rbx, 9
	push rbx
	jmp .308
.318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s74
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
	jz .320
	mov rbx, 10
	push rbx
	jmp .308
.320:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s75
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
	jz .322
	mov rbx, 11
	push rbx
	jmp .308
.322:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s76
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
	jz .324
	mov rbx, 12
	push rbx
	jmp .308
.324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s77
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
	mov rbx, 13
	push rbx
	jmp .308
.326:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s78
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
	mov rbx, 15
	push rbx
	jmp .308
.328:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s79
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
	jz .330
	mov rbx, 16
	push rbx
	jmp .308
.330:
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
	jz .332
	mov rbx, 17
	push rbx
	jmp .308
.332:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s81
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
	jz .334
	mov rbx, 18
	push rbx
	jmp .308
.334:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s82
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
	jz .336
	mov rbx, 19
	push rbx
	jmp .308
.336:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s83
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
	mov rbx, 20
	push rbx
	jmp .308
.338:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s84
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
	jz .340
	mov rbx, 21
	push rbx
	jmp .308
.340:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
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
	jz .342
	mov rbx, 22
	push rbx
	jmp .308
.342:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s85
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
	jz .344
	mov rbx, 23
	push rbx
	jmp .308
.344:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s86
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
	jz .346
	mov rbx, 24
	push rbx
	jmp .308
.346:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s87
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
	jz .348
	mov rbx, 25
	push rbx
	jmp .308
.348:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s88
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
	jz .350
	mov rbx, 26
	push rbx
	jmp .308
.350:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s89
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
	jz .352
	mov rbx, 27
	push rbx
	jmp .308
.352:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s90
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
	jz .354
	mov rbx, 28
	push rbx
	jmp .308
.354:
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
	jz .356
	mov rbx, 29
	push rbx
	jmp .308
.356:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s92
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
	jz .358
	mov rbx, 30
	push rbx
	jmp .308
.358:
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
	jz .360
	mov rbx, 31
	push rbx
	jmp .308
.360:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s94
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
	jz .362
	mov rbx, 32
	push rbx
	jmp .308
.362:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s95
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
	jz .364
	mov rbx, 33
	push rbx
	jmp .308
.364:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s96
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
	jz .366
	mov rbx, 70
	push rbx
	jmp .308
.366:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s97
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
	jz .368
	mov rbx, 34
	push rbx
	jmp .308
.368:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s98
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
	jz .370
	mov rbx, 35
	push rbx
	jmp .308
.370:
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
	jz .372
	mov rbx, 36
	push rbx
	jmp .308
.372:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s100
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
	jz .374
	mov rbx, 37
	push rbx
	jmp .308
.374:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s101
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
	jz .376
	mov rbx, 38
	push rbx
	jmp .308
.376:
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
	jz .378
	mov rbx, 39
	push rbx
	jmp .308
.378:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s103
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
	jz .380
	mov rbx, 40
	push rbx
	jmp .308
.380:
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
	jz .382
	mov rbx, 41
	push rbx
	jmp .308
.382:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s105
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
	jz .384
	mov rbx, 42
	push rbx
	jmp .308
.384:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s106
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
	jz .386
	mov rbx, 43
	push rbx
	jmp .308
.386:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s107
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
	jz .388
	mov rbx, 44
	push rbx
	jmp .308
.388:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s108
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
	jz .390
	mov rbx, 45
	push rbx
	jmp .308
.390:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s109
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
	jz .392
	mov rbx, 46
	push rbx
	jmp .308
.392:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s110
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
	jz .394
	mov rbx, 47
	push rbx
	jmp .308
.394:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s111
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
	jz .396
	mov rbx, 48
	push rbx
	jmp .308
.396:
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
	jz .398
	mov rbx, 49
	push rbx
	jmp .308
.398:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s113
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
	jz .400
	mov rbx, 50
	push rbx
	jmp .308
.400:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s114
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
	jz .402
	mov rbx, 51
	push rbx
	jmp .308
.402:
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
	jz .404
	mov rbx, 52
	push rbx
	jmp .308
.404:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s116
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
	jz .406
	mov rbx, 53
	push rbx
	jmp .308
.406:
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
	jz .408
	mov rbx, 54
	push rbx
	jmp .308
.408:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s118
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
	jz .410
	mov rbx, 55
	push rbx
	jmp .308
.410:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s119
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
	jz .412
	mov rbx, 56
	push rbx
	jmp .308
.412:
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
	jz .414
	mov rbx, 57
	push rbx
	jmp .308
.414:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s121
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
	jz .416
	mov rbx, 58
	push rbx
	jmp .308
.416:
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
	jz .418
	mov rbx, 59
	push rbx
	jmp .308
.418:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s123
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
	jz .420
	mov rbx, 60
	push rbx
	jmp .308
.420:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s124
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
	jz .422
	mov rbx, 61
	push rbx
	jmp .308
.422:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s125
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
	jz .424
	mov rbx, 62
	push rbx
	jmp .308
.424:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s126
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
	jz .426
	mov rbx, 63
	push rbx
	jmp .308
.426:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s127
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
	jz .428
	mov rbx, 64
	push rbx
	jmp .308
.428:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s128
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
	jz .430
	mov rbx, 65
	push rbx
	jmp .308
.430:
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
	jz .432
	mov rbx, 66
	push rbx
	jmp .308
.432:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s130
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
	jz .434
	mov rbx, 67
	push rbx
	jmp .308
.434:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s131
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
	jz .436
	mov rbx, 68
	push rbx
	jmp .308
.436:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s132
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
	jz .438
	mov rbx, 69
	push rbx
	jmp .308
.438:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s133
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
	jz .440
	mov rbx, 71
	push rbx
	jmp .308
.440:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _s134
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
	jz .442
	mov rbx, 72
	push rbx
	jmp .308
.442:
	mov rbx, 1
	push rbx
.443:
.308:
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
	jnz .1888
	mov eax, 1
	mov edi, 2
	mov rsi, _s61
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1888:
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
	jnz .1889.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s48
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1889.1:
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
	mov rsi, _s49
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
	mov rbx, _s49
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
	mov rbx, _s50
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
.444:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .445
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
	jz .446
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
	mov rsi, _s56
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
.446:
	pop rbx
	inc rbx
	push rbx
	jmp .444
.445:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	pop rbx
	sub rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, rdi
	mov r8, rbx
	mov r9, 1
	mov r10, 1
	mov rax, r10
	mov rdx, r8
	mov r8, rsi
	mov rsi, r8
	mov r8, rdi
	mov rdi, r9
	syscall
	add r8, rbx
	dec r8
	xor rbx, rbx
	mov bl, [r8]
	mov rsi, 10
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .448
	mov rbx, 1
	mov rsi, _s51
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
.448:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
Token.eprint_file_lok:
	sub rsp, 72
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	pop r8
	mov qword [rbx + 16], r8
	mov rbx, qword [_rs_p]
	pop r9
	mov qword [rbx + 24], r9
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov r10, 16
	mov r11, qword [_rs_p]
	add r11, 48
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 1
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	mov rdi, r8
	mov r9, [_gopened_files.len]
	xor r10, r10
	cmp rdi, r9
	setb r10b
	test r10, r10
	jnz .1890.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s48
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1890.2:
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
	add r9, 48
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
	add rsi, 48
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1891.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s54
	mov rdx, 94
	syscall
	mov rdi, 1
	jmp _exit
.1891.1:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	add rsi, 48
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1892.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s54
	mov rdx, 94
	syscall
	mov rdi, 1
	jmp _exit
.1892.2:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
	inc rdi
	mov rsi, 4
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputpu_space
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s55
	mov rsi, 3
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
	call print_normalise_tabs
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s57
	mov rsi, 7
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
	mov rdi, 4
	imul rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	sub r8, rbx
	add rsi, r8
	push rsi
.450:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .451
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	dec rbx
	push rbx
	jmp .450
.451:
	add rsp, 8
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	push rsi
.452:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .453
	mov rbx, 126
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	dec rbx
	push rbx
	jmp .452
.453:
	add rsp, 8
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	add rsp, 72
	ret
Token.eprint_file_tok:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1893.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1893.1:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov edi, [rdi]
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	mov rsi, 4
	add r8, rsi
	mov r8d, [r8]
	mov rsi, qword [_rs_p]
	mov r9, qword [rsi + 0]
	mov rsi, 8
	add r9, rsi
	mov r9d, [r9]
	mov rsi, qword [_rs_p]
	mov r10, qword [rsi + 0]
	mov rsi, 24
	add r10, rsi
	mov r10d, [r10]
	push rdi
	push r8
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.eprint_file_lok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
token_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.454:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .455
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1894.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1894.2:
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
	jz .456
	mov rbx, _s146
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
	jmp .457
.456:
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
	jz .459
	mov rbx, _s146
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
	jmp .457
.459:
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
	jz .461
	mov rbx, _s146
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
	jmp .457
.461:
	add rsp, 8
.462:
.457:
	mov rbx, 1
	mov rsi, _s51
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
	jmp .454
.455:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
error.Loc:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	pop r8
	mov qword [rbx + 16], r8
	pop r9
	mov qword [rbx + 24], r9
	pop r10
	mov qword [rbx + 32], r10
	mov rbx, qword [_rs_p]
	mov r11, qword [rbx + 32]
	mov r12, qword [rbx + 24]
	mov r13, qword [rbx + 16]
	mov rbx, 27
	push r11
	push r12
	push r13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1895.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s48
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1895.3:
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
	mov rbx, _s49
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
	mov rbx, _s49
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
	mov rbx, _s50
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rdi, qword [rbx + 24]
	mov r8, qword [rbx + 16]
	mov rbx, 1
	push rsi
	push rdi
	push r8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.eprint_file_lok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
notice.Tok:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	mov r9, 27
	push r8
	push rsi
	push rbx
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
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
	jnz .1896.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1896.3:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
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
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1897.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1897.4:
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
	jnz .1898.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s48
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.1898.4:
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
	mov rbx, _s49
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
	mov rbx, _s49
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
	mov rbx, _s50
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
	mov rbx, _s27
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
	mov rbx, _s28
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
	jz .466
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
	jz .468
	mov rbx, _s39
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
.468:
.466:
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
	jz .470
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s137
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s138
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
	jz .472
	mov rbx, _s39
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
.472:
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
	mov rbx, _s139
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
	mov rbx, _s140
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .474
.470:
	add rsp, 8
	add rsp, 8
.474:
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
	jz .475
	mov rbx, 1
	push rbx
	jmp .476
.475:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .478
	mov rbx, 1
	push rbx
	jmp .476
.478:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .480
	mov rbx, 1
	push rbx
	jmp .476
.480:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .482
	mov rbx, 1
	push rbx
	jmp .476
.482:
	mov rbx, 0
	push rbx
.483:
.476:
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
	jz .484
	mov rbx, 39
	push rbx
	jmp .485
.484:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .487
	mov rbx, 34
	push rbx
	jmp .485
.487:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .489
	mov rbx, 92
	push rbx
	jmp .485
.489:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .491
	mov rbx, 7
	push rbx
	jmp .485
.491:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .493
	mov rbx, 8
	push rbx
	jmp .485
.493:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .495
	mov rbx, 12
	push rbx
	jmp .485
.495:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .497
	mov rbx, 10
	push rbx
	jmp .485
.497:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .499
	mov rbx, 13
	push rbx
	jmp .485
.499:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .501
	mov rbx, 9
	push rbx
	jmp .485
.501:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .503
	mov rbx, 11
	push rbx
	jmp .485
.503:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .505
	mov rbx, 96
	push rbx
	jmp .485
.505:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.506:
.485:
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
.545:
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
.507:
	mov rbx, 1
	test rbx, rbx
	jz .508
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
	jz .509
	jmp .508
.509:
.511:
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
	jz .512
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .513
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .515
.513:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.515:
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
	jz .516
	jmp .512
.516:
	jmp .511
.512:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .518
	jmp .508
.518:
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
	jz .520
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
.522:
	mov rbx, 1
	test rbx, rbx
	jz .523
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
	jz .524
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .526
.524:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.526:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .527
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s47
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
.527:
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
	jz .529
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
	jz .531
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s58
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
.531:
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
	jmp .522
.529:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 92]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .533
	jmp .523
.533:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .535
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 1
	mov byte [rbx], sil
	jmp .522
	jmp .536
.535:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 10
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .538
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	inc rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 49], rdi
.538:
.536:
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
	jmp .522
.523:
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
	jz .539
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s59
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
.539:
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
	jz .541
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .543
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s60
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
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.543:
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
	jmp .546
.541:
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
.546:
	jmp .507
	jmp .521
.520:
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
	jz .548
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 125], rbx
.549:
	mov rbx, 1
	test rbx, rbx
	jz .550
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 32]
	xor rbx, rbx
	cmp r8, r9
	setae bl
	test rbx, rbx
	jz .551
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s62
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
.551:
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
	jz .553
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .554
.553:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .556
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
	jz .557
	jmp .550
.557:
.556:
.554:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 125], rsi
	jmp .549
.550:
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
	jz .559
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s63
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
	jmp .560
.559:
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
	jz .562
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s59
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
	jmp .560
.562:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .564
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
	jz .565
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s64
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
.565:
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
	jz .567
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s58
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
.567:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 117], rsi
.564:
.560:
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
	jmp .507
	jmp .521
.548:
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
	jz .570
.571:
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
	jz .572
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
	jz .573
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 149
	ret
.573:
	jmp .571
.572:
	jmp .507
.570:
.521:
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
	jz .575
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
	jz .577
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
.577:
.575:
.579:
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
	jz .580
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .581
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
	jz .583
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .585
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
.585:
.583:
.581:
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
	jz .587
	jmp .580
.587:
	jmp .579
.580:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .589
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .507
.589:
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
	jz .591
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s65
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
.591:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .593
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
	jz .595
	pop rbx
	not rbx
	inc rbx
	push rbx
.595:
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
	jmp .597
.593:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rdi, qword [rbx + 133]
	mov rbx, _s67
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
	jz .598
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .507
.598:
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
	jz .600
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
	jmp .602
.600:
	mov rbx, 0
	push rbx
.602:
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
.597:
	jmp .507
.508:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .603
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s135
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
.603:
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
	jz .605
	mov rbx, _s258
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.605:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .608
	mov rbx, _s259
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.608:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .610
	mov rbx, _s260
	mov rsi, 15
	push rbx
	push rsi
	jmp .606
.610:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .612
	mov rbx, _s261
	mov rsi, 19
	push rbx
	push rsi
	jmp .606
.612:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .614
	mov rbx, _s262
	mov rsi, 20
	push rbx
	push rsi
	jmp .606
.614:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .616
	mov rbx, _s263
	mov rsi, 20
	push rbx
	push rsi
	jmp .606
.616:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .618
	mov rbx, _s264
	mov rsi, 20
	push rbx
	push rsi
	jmp .606
.618:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .620
	mov rbx, _s265
	mov rsi, 21
	push rbx
	push rsi
	jmp .606
.620:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .622
	mov rbx, _s266
	mov rsi, 9
	push rbx
	push rsi
	jmp .606
.622:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .624
	mov rbx, _s267
	mov rsi, 9
	push rbx
	push rsi
	jmp .606
.624:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .626
	mov rbx, _s268
	mov rsi, 11
	push rbx
	push rsi
	jmp .606
.626:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .628
	mov rbx, _s269
	mov rsi, 6
	push rbx
	push rsi
	jmp .606
.628:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .630
	mov rbx, _s270
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.630:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .632
	mov rbx, _s271
	mov rsi, 10
	push rbx
	push rsi
	jmp .606
.632:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .634
	mov rbx, _s272
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.634:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .636
	mov rbx, _s273
	mov rsi, 7
	push rbx
	push rsi
	jmp .606
.636:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .638
	mov rbx, _s74
	mov rsi, 6
	push rbx
	push rsi
	jmp .606
.638:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .640
	mov rbx, _s274
	mov rsi, 15
	push rbx
	push rsi
	jmp .606
.640:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .642
	mov rbx, _s275
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.642:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .644
	mov rbx, _s276
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.644:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .646
	mov rbx, _s277
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.646:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .648
	mov rbx, _s278
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.648:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .650
	mov rbx, _s279
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.650:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .652
	mov rbx, _s280
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.652:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .654
	mov rbx, _s281
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.654:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .656
	mov rbx, _s282
	mov rsi, 6
	push rbx
	push rsi
	jmp .606
.656:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .658
	mov rbx, _s283
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.658:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .660
	mov rbx, _s284
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.660:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .662
	mov rbx, _s285
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.662:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .664
	mov rbx, _s286
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.664:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .666
	mov rbx, _s287
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.666:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .668
	mov rbx, _s288
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.668:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .670
	mov rbx, _s289
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.670:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .672
	mov rbx, _s98
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.672:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .674
	mov rbx, _s99
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.674:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .676
	mov rbx, _s100
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.676:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .678
	mov rbx, _s101
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.678:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .680
	mov rbx, _s102
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.680:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .682
	mov rbx, _s103
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.682:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .684
	mov rbx, _s104
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.684:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .686
	mov rbx, _s290
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.686:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .688
	mov rbx, _s291
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.688:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .690
	mov rbx, _s292
	mov rsi, 2
	push rbx
	push rsi
	jmp .606
.690:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .692
	mov rbx, _s293
	mov rsi, 2
	push rbx
	push rsi
	jmp .606
.692:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .694
	mov rbx, _s294
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.694:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .696
	mov rbx, _s295
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.696:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .698
	mov rbx, _s296
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.698:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .700
	mov rbx, _s297
	mov rsi, 4
	push rbx
	push rsi
	jmp .606
.700:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .702
	mov rbx, _s298
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.702:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .704
	mov rbx, _s299
	mov rsi, 5
	push rbx
	push rsi
	jmp .606
.704:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .706
	mov rbx, _s115
	mov rsi, 2
	push rbx
	push rsi
	jmp .606
.706:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .708
	mov rbx, _s116
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.708:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .710
	mov rbx, _s117
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.710:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .712
	mov rbx, _s118
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.712:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .714
	mov rbx, _s119
	mov rsi, 2
	push rbx
	push rsi
	jmp .606
.714:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .716
	mov rbx, _s120
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.716:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .718
	mov rbx, _s121
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.718:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .720
	mov rbx, _s122
	mov rsi, 3
	push rbx
	push rsi
	jmp .606
.720:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .722
	mov rbx, _s123
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.722:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .724
	mov rbx, _s124
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.724:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .726
	mov rbx, _s125
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.726:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .728
	mov rbx, _s126
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.728:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .730
	mov rbx, _s127
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.730:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .732
	mov rbx, _s128
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.732:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .734
	mov rbx, _s129
	mov rsi, 8
	push rbx
	push rsi
	jmp .606
.734:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .736
	mov rbx, _s300
	mov rsi, 9
	push rbx
	push rsi
	jmp .606
.736:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1899
	mov eax, 1
	mov edi, 2
	mov rsi, _s301
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.1899:
	push rbx
	push rsi
.737:
.606:
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
	jnz .1900
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1900:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s256
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
.738:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .739
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1901.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1901.1:
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
	mov rbx, _s257
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
	mov rbx, _s257
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
	mov rsi, _s51
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
	jmp .738
.739:
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
	jnz .1902
	mov eax, 1
	mov edi, 2
	mov rsi, _s203
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1902:
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
	jnz .1903
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1903:
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
	jnz .1904
	mov eax, 1
	mov edi, 2
	mov rsi, _s172
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1904:
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
	jnz .1905
	mov eax, 1
	mov edi, 2
	mov rsi, _s157
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1905:
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
	jnz .1906
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1906:
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
	jnz .1907
	mov eax, 1
	mov edi, 2
	mov rsi, _s186
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1907:
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
	jnz .1908
	mov eax, 1
	mov edi, 2
	mov rsi, _s188
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1908:
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
	jnz .1909
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1909:
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
	jnz .1910.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1910.2:
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
	jnz .1911.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1911.3:
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
	jz .740
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .741
.740:
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
	jz .743
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
	jmp .741
.743:
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
	jz .745
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
	jmp .741
.745:
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
	jz .747
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
	jmp .741
.747:
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
	jz .749
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
	jmp .741
.749:
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
	jz .751
	mov rbx, [_gconst_stack.len]
	dec rbx
	mov [_gconst_stack.len], rbx
	jmp .741
.751:
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
	jz .753
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
	jmp .741
.753:
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
	jz .755
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
	jmp .741
.755:
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
	jz .757
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
	jmp .741
.757:
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
	jz .759
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
	jmp .741
.759:
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
	jz .761
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
	jmp .741
.761:
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
	jz .763
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
	jmp .741
.763:
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
	jz .765
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
	jmp .741
.765:
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
	jz .767
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
	jmp .741
.767:
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
	jz .769
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
	jmp .741
.769:
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
	jz .771
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
	jmp .741
.771:
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
	jz .773
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
	jmp .741
.773:
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
	jz .775
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
	jmp .741
.775:
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
	jz .777
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
	jmp .741
.777:
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
	jz .779
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
	jmp .741
.779:
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
	jz .781
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
	jmp .741
.781:
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
	jz .783
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
	jmp .741
.783:
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
	jz .785
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
	jmp .741
.785:
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
	jz .787
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
	jmp .741
.787:
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
	jz .789
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
	jmp .741
.789:
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
	jz .791
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
	jmp .741
.791:
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
	jz .793
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
	jmp .741
.793:
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
	jz .795
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
	jmp .741
.795:
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
	jz .797
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
	jmp .741
.797:
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
	jz .799
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
	jmp .741
.799:
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
	jz .801
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
	jmp .741
.801:
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
	jz .803
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
	jmp .741
.803:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.804:
.741:
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
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1912.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1912.5:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	jz .805
	mov rbx, [_gsp.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.807:
	mov rbx, 1
	test rbx, rbx
	jz .808
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gsp.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1913.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s192
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1913.1:
	mov rdi, 4
	imul rsi, rdi
	mov rdi, qword _gsp
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, _s193
	mov r8, 9
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.Tok
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
	jz .809
	jmp .808
.809:
	pop rbx
	dec rbx
	push rbx
	jmp .807
.808:
	add rsp, 8
.805:
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
	jnz .1914
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1914:
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
.811:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .812
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
	jmp .811
.812:
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
	jz .813
	mov rbx, [_gpos]
	mov rsi, _s200
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.813:
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
	jz .815
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.815:
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
.817:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .818
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gglobal_var_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1915.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1915.1:
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
	jz .819
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.819:
	pop rbx
	inc rbx
	push rbx
	jmp .817
.818:
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
	jz .821
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.821:
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
.823:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .824
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoplevel_constants.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1916.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1916.1:
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
	jz .825
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.825:
	pop rbx
	inc rbx
	push rbx
	jmp .823
.824:
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
	jz .827
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.827:
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
.829:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .830
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1917.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1917.1:
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
	jz .831
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.831:
	pop rbx
	inc rbx
	push rbx
	jmp .829
.830:
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
	jz .833
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.833:
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
.835:
	mov rbx, 1
	test rbx, rbx
	jz .836
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1918.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1918.1:
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
	jz .837
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.837:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .839
	jmp .836
.839:
	pop rbx
	dec rbx
	push rbx
	jmp .835
.836:
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
	jnz .1919.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1919.6:
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
	jnz .1920.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1920.2:
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
	jnz .1921.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1921.7:
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
	jnz .1922.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1922.8:
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
	jnz .1923.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1923.9:
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
	jnz .1924.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1924.3:
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
	jnz .1925
	mov eax, 1
	mov edi, 2
	mov rsi, _s235
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1925:
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
	jnz .1926
	mov eax, 1
	mov edi, 2
	mov rsi, _s240
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1926:
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
	jz .841
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1927.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1927.1:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1928.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1928.1:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s161
	mov rdi, 38
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1929.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1929.10:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.841:
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
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
	jz .843
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s162
	mov rdi, 36
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1930.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1930.11:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.843:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1931.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1931.12:
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
	jz .845
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s163
	mov rdi, 38
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1932.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1932.13:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.845:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1933.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1933.14:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 12
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 4
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	test r8, r8
	jz .847
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	jmp .848
.847:
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
	jz .850
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .851
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s162
	mov rdi, 36
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1934.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1934.15:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.851:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 3
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1935.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1935.16:
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
	test rdi, rdi
	jz .853
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 3
	add rsi, rbx
	mov rbx, _s164
	mov rdi, 51
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1936.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1936.17:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.853:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1937.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1937.18:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 3
	add rdi, rbx
	mov rbx, rdi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1938.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1938.19:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 4
	add r8, rbx
	mov rbx, r8
	mov r9, [_gtoken_stream.len]
	xor r10, r10
	cmp rbx, r9
	setb r10b
	test r10, r10
	jnz .1939.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1939.20:
	mov rbx, 28
	imul r8, rbx
	mov rbx, qword _gtoken_stream
	add r8, rbx
	mov rbx, 12
	add r8, rbx
	mov r8d, [r8]
	mov rbx, 4
	xor r9, r9
	cmp r8, rbx
	setne r9b
	test r9, r9
	jz .855
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s165
	mov rdi, 44
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1940.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1940.21:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.855:
	jmp .848
.850:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 2
	add rsi, rbx
	mov rbx, _s166
	mov rdi, 37
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1941.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1941.22:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.857:
.848:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1942.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1942.23:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
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
	jz .858
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s167
	mov rdi, 50
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1943.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1943.24:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.858:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
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
	jz .860
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s168
	mov rdi, 23
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1944.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1944.25:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.860:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
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
	jz .862
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s169
	mov rdi, 45
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1945.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1945.26:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.862:
	mov rbx, [_gfunctions.len]
	mov rsi, 40
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	mov [_gfunction_context], rbx
	mov rbx, [_gfunctions.len]
	mov [_gfunction_context_idx], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	mov rbx, [_gir_stream.len]
	mov r9, 0
	mov r10, 0
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 24]
	mov r11, r12
	mov r13, 8
	add r11, r13
	mov r12, [r12]
	mov r13, _s170
	mov r14, 4
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .864
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	test rdi, rdi
	jz .866
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s171
	mov rdi, 52
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1946.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1946.27:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.866:
	mov rbx, [_gfunctions.len]
	mov [_gmain_fn_idx], rbx
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .868
.864:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.868:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call functions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
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
	jnz .1947
	mov eax, 1
	mov edi, 2
	mov rsi, _s174
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1947:
	mov rbx, [_gvar_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .1948
	mov eax, 1
	mov edi, 2
	mov rsi, _s175
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1948:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
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
	jz .869
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s177
	mov rdi, 41
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1949.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1949.28:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.869:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1950.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1950.29:
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
	jz .871
	mov rbx, 1
	push rbx
	jmp .873
.871:
	mov rbx, 2
	push rbx
.873:
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
	jnz .1951.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1951.30:
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
	jz .874
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s178
	mov rdi, 38
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1952.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1952.31:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.874:
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
	jz .876
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s179
	mov rdi, 36
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1953.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1953.32:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.876:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1954.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1954.33:
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
	jz .878
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1955.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1955.34:
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
	jz .880
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
.880:
.878:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1956.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1956.35:
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
	jz .882
	mov rbx, [_gpos]
	mov rsi, _s180
	mov rdi, 40
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1957.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1957.36:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.882:
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
	jnz .1958.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1958.37:
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
	jz .884
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1959.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1959.38:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	jmp .886
.884:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1960.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1960.39:
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
.886:
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
	jnz .1961.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1961.40:
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
	jz .887
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
	jz .889
	mov rbx, [_gvar_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.891:
	mov rbx, 1
	test rbx, rbx
	jz .892
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1962.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1962.2:
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
	jz .893
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s202
	mov rdi, 23
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1963.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1963.41:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.893:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .895
	jmp .892
.895:
	pop rbx
	dec rbx
	push rbx
	jmp .891
.892:
	add rsp, 8
.889:
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
	jmp .888
.887:
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
	jz .898
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1964.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1964.42:
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
	jz .899
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s204
	mov rdi, 14
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1965.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1965.43:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.899:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1966.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1966.44:
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
	jz .901
	mov rbx, [_gpos]
	mov rsi, _s205
	mov rdi, 25
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1967.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1967.45:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.901:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1968.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1968.46:
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
	jz .903
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1969.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1969.3:
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
	jz .905
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .907
	mov rbx, [_gpos]
	mov rsi, _s206
	mov rdi, 24
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1970.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1970.47:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .909
.907:
	mov rbx, [_gpos]
	mov rsi, _s207
	mov rdi, 60
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1971.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1971.48:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.909:
	jmp .906
.905:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .911
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .912
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
	jz .914
	mov rbx, [_gpos]
	mov rsi, _s208
	mov rdi, 65
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.914:
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
	jmp .916
.912:
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
.916:
	jmp .906
.911:
	mov rbx, 0
	test rbx, rbx
	jnz .1972
	mov eax, 1
	mov edi, 2
	mov rsi, _s209
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1972:
.917:
.906:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.903:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .918
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
	jz .920
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1973.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1973.2:
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
	jz .922
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .924
	mov rbx, [_gpos]
	mov rsi, _s206
	mov rdi, 24
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1974.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1974.49:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .926
.924:
	mov rbx, [_gpos]
	mov rsi, _s207
	mov rdi, 60
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1975.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1975.50:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.926:
	jmp .923
.922:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .928
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .929
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
	jz .931
	mov rbx, [_gpos]
	mov rsi, _s208
	mov rdi, 65
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.931:
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
	jmp .933
.929:
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
.933:
	jmp .923
.928:
	mov rbx, 0
	test rbx, rbx
	jnz .1976
	mov eax, 1
	mov edi, 2
	mov rsi, _s210
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1976:
.934:
.923:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.920:
.918:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .935
	mov rbx, [_gpos]
	mov rsi, _s211
	mov rdi, 16
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1977.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1977.51:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.935:
	jmp .888
.898:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .938
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1978.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1978.52:
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
	jz .939
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
	jz .941
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
.941:
	mov rbx, [_gsp.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 104]
	mov rsi, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .1979.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1979.2:
	mov rsi, 40
	imul rdi, rsi
	mov rsi, qword _gfunctions
	add rdi, rsi
	mov edi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .943
	mov rbx, [_gpos]
	mov rsi, _s212
	mov rdi, 46
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.943:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1980.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1980.3:
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
	jnz .1981.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1981.4:
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
.939:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .945
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
	jz .947
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1982.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1982.4:
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
	jz .949
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
	jmp .950
.949:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .952
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
	jmp .950
.952:
	mov rbx, 0
	test rbx, rbx
	jnz .1983
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1983:
.953:
.950:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
.947:
.945:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .954
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
	jz .956
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1984.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1984.3:
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
	jz .958
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
	jmp .959
.958:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .961
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
	jmp .959
.961:
	mov rbx, 0
	test rbx, rbx
	jnz .1985
	mov eax, 1
	mov edi, 2
	mov rsi, _s214
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1985:
.962:
.959:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
.956:
.954:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .963
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
	jz .965
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
	jz .967
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
.967:
.965:
.963:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .969
	mov rbx, [_gpos]
	mov rsi, _s215
	mov rdi, 33
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1986.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1986.53:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.969:
	jmp .888
.938:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .972
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .973
	mov rbx, [_gpos]
	mov rsi, _s216
	mov rdi, 45
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1987.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1987.54:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
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
	jz .975
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s218
	mov rdi, 40
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1988.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1988.55:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.975:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1989.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1989.56:
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
	jz .977
	mov rbx, [_gpos]
	mov rsi, _s219
	mov rdi, 39
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1990.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1990.57:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.977:
	jmp .888
.972:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .980
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
	jmp .888
.980:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .982
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .983
	mov rbx, [_gpos]
	mov rsi, _s220
	mov rdi, 26
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1991.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1991.58:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.983:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 168], rbx
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	push rsi
.985:
	mov rbx, 1
	test rbx, rbx
	jz .986
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1992.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1992.2:
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
	jz .987
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
	jmp .986
.987:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .989
	jmp .986
.989:
	pop rbx
	dec rbx
	push rbx
	jmp .985
.986:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .991
	mov rbx, [_gpos]
	mov rsi, _s220
	mov rdi, 26
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1993.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1993.59:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.991:
	jmp .888
.982:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .994
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .995
	mov rbx, [_gpos]
	mov rsi, _s220
	mov rdi, 26
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1994.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1994.60:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.995:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 184], rbx
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	push rsi
.997:
	mov rbx, 1
	test rbx, rbx
	jz .998
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1995.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1995.3:
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
	jz .999
	pop rbx
	mov rsi, rbx
	dec rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1996.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1996.4:
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
	jnz .1997
	mov eax, 1
	mov edi, 2
	mov rsi, _s221
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1997:
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
	jmp .998
.999:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1001
	jmp .998
.1001:
	pop rbx
	dec rbx
	push rbx
	jmp .997
.998:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 184]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1003
	mov rbx, [_gpos]
	mov rsi, _s220
	mov rdi, 26
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .1998.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1998.61:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1003:
	jmp .888
.994:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1006
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1007
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .1999.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1999.2:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2000.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2000.5:
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
	jz .1009
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1011
	mov rbx, [_gpos]
	mov rsi, _s222
	mov rdi, 45
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2001.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2001.62:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1011:
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
	jmp .1010
.1009:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1014
	mov rbx, qword [_rs_p]
	add rbx, 200
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .2002.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2002.3:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2003.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2003.6:
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
	jz .1015
	mov rbx, [_gpos]
	mov rsi, _s223
	mov rdi, 50
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2004.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2004.63:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1015:
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
	jmp .1010
.1014:
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
.1017:
.1010:
	add rsp, 8
	jmp .1018
.1007:
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
.1018:
	jmp .888
.1006:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1020
	mov rbx, qword [_rs_p]
	add rbx, 236
	mov rsi, 0
	mov byte [rbx], sil
.1021:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1022
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2005.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2005.4:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2006.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2006.7:
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
	jz .1024
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2007.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2007.5:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2008.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2008.8:
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
	jz .1026
	pop rbx
	mov rsi, rbx
	mov rdi, [_gpos]
	dec rdi
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1028
	pop rbx
	inc rbx
	mov rsi, _s224
	mov rdi, 16
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2009.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2009.64:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1030
.1028:
	add rsp, 8
.1030:
	jmp .1031
.1026:
	add rsp, 8
.1031:
	mov rbx, 1
	push rbx
	jmp .1032
.1024:
	mov rbx, 0
	push rbx
.1032:
	jmp .1033
.1022:
	mov rbx, 0
	push rbx
.1033:
	pop rbx
	test rbx, rbx
	jz .1034
	mov rbx, qword [_rs_p]
	add rbx, 236
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	jmp .1021
.1034:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1035
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .2010.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2010.6:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2011.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2011.9:
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
	jz .1037
	mov rbx, qword [_rs_p]
	add rbx, 265
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .2012.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s159
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2012.7:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2013.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s160
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2013.10:
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
	jmp .1038
.1037:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1040
	jmp .1038
.1040:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1042
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1043
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1043:
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
	jz .1045
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s225
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1046
.1045:
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
	jz .1048
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s226
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1048:
.1046:
	jmp .1038
.1042:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1050
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
	jnz .2014.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2014.65:
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
	jz .1051
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
	mov r8, qword [_rs_p]
	add r8, 236
	xor r9, r9
	mov r9b, [r8]
	push rsi
	push rdi
	test r9, r9
	jz .1053
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1055
.1053:
	mov rbx, [_gsp.len]
	push rbx
.1055:
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 293]
	mov rsi, 4294967295
	mov r8, [_gvar_context.len]
	push rbx
	push rdi
	push rsi
	push r8
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
	jz .1056
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s227
	mov rdi, 42
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2015.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2015.66:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1056:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2016.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2016.67:
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
	jz .1058
	mov rbx, [_gpos]
	mov rsi, _s228
	mov rdi, 41
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2017.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2017.68:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1058:
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
	jmp .1052
.1051:
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
	jnz .2018.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2018.69:
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
	jz .1061
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
	jmp .1052
.1061:
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1063
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1063:
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
	jz .1065
	mov rbx, [_gpos]
	mov rsi, _s229
	mov rdi, 51
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1065:
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
.1062:
.1052:
	jmp .1038
.1050:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1068
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
	jnz .2019.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2019.70:
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
	jz .1069
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
	jnz .2020.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2020.71:
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
	jz .1071
	mov rbx, 6
	push rbx
	jmp .1072
.1071:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1074
	mov rbx, 5
	push rbx
	jmp .1072
.1074:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .2021
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.2021:
	push rbx
.1075:
.1072:
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
	jz .1076
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1076:
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
	jz .1078
	mov rbx, [_gpos]
	mov rsi, _s231
	mov rdi, 55
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1078:
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
	jnz .2022.72
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2022.72:
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
	jz .1080
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1082
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s227
	mov rdi, 42
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2023.73
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2023.73:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1082:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2024.74
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2024.74:
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
	jz .1084
	mov rbx, [_gpos]
	mov rsi, _s228
	mov rdi, 41
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2025.75
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2025.75:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1084:
.1080:
	jmp .1086
.1069:
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1087
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1087:
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
	jz .1089
	mov rbx, [_gpos]
	mov rsi, _s229
	mov rdi, 51
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1089:
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
.1086:
	jmp .1038
.1068:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1092
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1093
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gsp.len], rbx
.1093:
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
	jz .1095
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s232
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1096
.1095:
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
	jz .1098
	mov rbx, qword [_rs_p]
	add rbx, 237
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s233
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1098:
.1096:
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
	jz .1099
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
.1099:
	jmp .1038
.1092:
	mov rbx, 0
	test rbx, rbx
	jnz .2026
	mov eax, 1
	mov edi, 2
	mov rsi, _s234
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2026:
.1101:
.1038:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 236
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1102
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
.1102:
	jmp .1104
.1035:
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
	jz .1105
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1107
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
	jnz .2027.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2027.4:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s236
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1108
.1107:
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1110
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
	jnz .2028.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2028.5:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s237
	mov rdi, 49
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1110:
.1108:
.1105:
	mov rbx, 0
	mov [_gsp.len], rbx
	mov rbx, 0
	mov [_gvar_context.len], rbx
	mov rbx, 0
	mov [_gfunction_context], rbx
	mov rbx, 18446744073709551615
	mov [_gfunction_context_idx], rbx
.1104:
	jmp .888
.1020:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1112
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
	jz .1113
	mov rbx, [_gpos]
	mov rsi, _s238
	mov rdi, 44
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1114
.1113:
	mov rbx, [_gsp.len]
	mov rsi, [_gfunction_context]
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1116
	mov rbx, [_gpos]
	mov rsi, _s239
	mov rdi, 46
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1116:
.1114:
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
	jmp .888
.1112:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1118
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
	jz .1119
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 301]
	mov rbx, _s241
	mov rdi, 41
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2029.76
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2029.76:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1119:
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
	jnz .2030.77
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2030.77:
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
	jz .1121
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 301]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s242
	mov rdi, 52
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2031.78
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2031.78:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1121:
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
	jnz .2032.79
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2032.79:
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
	jz .1123
	mov rbx, [_gpos]
	mov rsi, _s243
	mov rdi, 49
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2033.80
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2033.80:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1123:
	jmp .888
.1118:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1126
	mov rbx, 1
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2034.81
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2034.81:
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
	jmp .888
.1126:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1128
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
	jmp .888
.1128:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1130
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
	jmp .888
.1130:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1132
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
	jmp .888
.1132:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1134
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
	jmp .888
.1134:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1136
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
	jmp .888
.1136:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1138
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
	jmp .888
.1138:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1140
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
	jmp .888
.1140:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1142
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
	jmp .888
.1142:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1144
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
	jmp .888
.1144:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1146
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
	jmp .888
.1146:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1148
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
	jmp .888
.1148:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1150
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
	jmp .888
.1150:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1152
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
	jmp .888
.1152:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1154
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
	jmp .888
.1154:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1156
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
	jmp .888
.1156:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1158
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
	jmp .888
.1158:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1160
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
	jmp .888
.1160:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1162
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
	jmp .888
.1162:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1164
	mov rbx, 66
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
	jmp .888
.1164:
	mov rbx, [_gpos]
	mov rsi, _s244
	mov rdi, 28
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2035.82
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2035.82:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1165:
.888:
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
	jz .1166
	mov rbx, [_gpos]
	mov rsi, _s196
	mov rdi, 42
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2036.83
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2036.83:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1166:
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
	jz .1168
	mov rbx, [_gpos]
	mov rsi, 1
	add rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2037.84
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2037.84:
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
	jnz .2038.85
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2038.85:
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
	jz .1170
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
.1170:
.1168:
	mov rbx, [_gpos]
	mov rsi, _s197
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
	jz .1172
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s198
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
	jnz .2039.86
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2039.86:
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
	mov rbx, _s41
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
	jmp .1174
.1172:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _s199
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
.1174:
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
	jnz .2040.87
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2040.87:
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
	jz .1175
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1176
.1175:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1178
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2041.88
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2041.88:
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
	jmp .1176
.1178:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1180
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
	jmp .1176
.1180:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1182
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
	jmp .1176
.1182:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1184
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
	jmp .1176
.1184:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1186
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
	jmp .1176
.1186:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1188
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
	jmp .1176
.1188:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1190
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
	jmp .1176
.1190:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1192
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
	jmp .1176
.1192:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1194
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
	jmp .1176
.1194:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1196
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
	jmp .1176
.1196:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1198
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
	jmp .1176
.1198:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1200
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
	jmp .1176
.1200:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1202
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
	jmp .1176
.1202:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1204
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
	jmp .1176
.1204:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1206
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
	jmp .1176
.1206:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1208
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
	jmp .1176
.1208:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1210
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
	jmp .1176
.1210:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1212
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
	jmp .1176
.1212:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1214
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
	jmp .1176
.1214:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1216
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
	jmp .1176
.1216:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1218
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
	jmp .1176
.1218:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1220
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
	jmp .1176
.1220:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1222
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
	jmp .1176
.1222:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1224
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
	jmp .1176
.1224:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1226
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
	jmp .1176
.1226:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1228
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
	jmp .1176
.1228:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1230
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
	jmp .1176
.1230:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1232
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
	jmp .1176
.1232:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1234
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
	jmp .1176
.1234:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1236
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
	jmp .1176
.1236:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1238
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
	jmp .1176
.1238:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1240
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
	jmp .1176
.1240:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1242
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
	jmp .1176
.1242:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1244
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1246
.1244:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2042.89
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2042.89:
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
	jz .1247
	mov rbx, [_gpos]
	mov rsi, _s245
	mov rdi, 62
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2043.90
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2043.90:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1247:
	mov rbx, [_gpos]
	mov rsi, _s246
	mov rdi, 33
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2044.91
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2044.91:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1246:
.1243:
.1176:
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
	jz .1249
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s149
	mov rdi, 47
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2045.92
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2045.92:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1249:
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
	jnz .2046.93
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2046.93:
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
	jz .1251
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s150
	mov rdi, 50
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2047.94
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2047.94:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1251:
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
	jnz .2048.95
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2048.95:
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
	jz .1253
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s152
	mov rdi, 60
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2049.96
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2049.96:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1253:
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
	jz .1255
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _s155
	mov rdi, 61
	mov r8, rsi
	mov r9, 27
	push r8
	push rbx
	push rdi
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2050.97
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2050.97:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1255:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2051.98
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2051.98:
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
	jz .1257
	mov rbx, [_gpos]
	mov rsi, _s156
	mov rdi, 43
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2052.99
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2052.99:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1257:
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
	jnz .2053
	mov eax, 1
	mov edi, 2
	mov rsi, _s158
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2053:
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
.1259:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1260
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
	jz .1261
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2054.100
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2054.100:
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
	jz .1263
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1264
.1263:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1266
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1264
.1266:
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
	jz .1268
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
	jz .1269
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s181
	mov rdi, 33
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2055.101
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2055.101:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1269:
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
	jmp .1264
.1268:
	mov rbx, [_gpos]
	mov rsi, _s183
	mov rdi, 22
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2056.102
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2056.102:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1271:
.1264:
	add rsp, 8
	jmp .1272
.1261:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1273
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2057.103
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2057.103:
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
	jz .1275
	mov rbx, 0
	mov [_gconst_stack.len], rbx
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2058.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2058.1:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2059.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2059.4:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
.1277:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1278
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
	jnz .2060
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 78
	syscall
	mov rdi, 1
	jmp _exit
.2060:
	pop rbx
	inc rbx
	push rbx
	jmp .1277
.1278:
	add rsp, 8
	mov rbx, [_gconst_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1279
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2061.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2061.2:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2062.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2062.5:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s190
	mov rdi, 40
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2063.104
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2063.104:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1279:
	mov rbx, [_gconst_stack.len]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1281
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2064.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2064.3:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2065.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2065.6:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gtoplevel_constants
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s191
	mov rdi, 64
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1281:
	mov rbx, 0
	mov [_gsp.len], rbx
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2066.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2066.4:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2067.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2067.7:
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
	jnz .2068.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2068.5:
	mov rbx, [_gtoplevel_constants.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoplevel_constants.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2069.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2069.8:
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
	jnz .2070
	mov eax, 1
	mov edi, 2
	mov rsi, _s194
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2070:
	jmp .1276
.1275:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1284
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2071.105
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2071.105:
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
	jz .1285
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
	jmp .1287
.1285:
	mov rbx, [_gpos]
	mov rsi, _s195
	mov rdi, 25
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2072.106
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2072.106:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1287:
	jmp .1276
.1284:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1288:
.1276:
	add rsp, 8
	jmp .1289
.1273:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1289:
.1272:
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .1259
.1260:
	mov rbx, [_gvar_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2073
	mov eax, 1
	mov edi, 2
	mov rsi, _s247
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2073:
	mov rbx, [_gsp.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2074
	mov eax, 1
	mov edi, 2
	mov rsi, _s248
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2074:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1290
	mov rbx, [_gtoken_stream.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s249
	mov rdi, 32
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2075.107
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2075.107:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1290:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1292
	mov rbx, [_gtoken_stream.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s250
	mov rdi, 60
	mov r8, rbx
	mov r9, 27
	push r8
	push rsi
	push rdi
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
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
	jnz .2076.108
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2076.108:
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rsi, _s51
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
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1292:
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
	jnz .2077
	mov eax, 1
	mov edi, 2
	mov rsi, _s315
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2077:
	mov rsi, [_gfwrite_buffer.len]
	add rbx, rsi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1294
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
	jnz .2078.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s316
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2078.1:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
.1294:
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
	jz .1296
	mov rbx, _s360
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1296:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1299
	mov rbx, _s361
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1299:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1301
	mov rbx, _s362
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1301:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1303
	mov rbx, _s363
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1303:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1305
	mov rbx, _s364
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1305:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1307
	mov rbx, _s365
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1307:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1309
	mov rbx, _s366
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1297
.1309:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1310:
.1297:
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
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1312
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
	jmp .1311
.1312:
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
	jnz .2079
	mov eax, 1
	mov edi, 2
	mov rsi, _s305
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2079:
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
is_slit_duplicate?:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2080.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2080.6:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.1313:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1314
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2081.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s304
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2081.1:
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword _gslits
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
	jz .1315
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1315:
	pop rbx
	inc rbx
	push rbx
	jmp .1313
.1314:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
dce.recurse_function:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
.1344:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2082.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2082.5:
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
	jz .1317
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_ginlined_functions]
	inc rbx
	mov [_ginlined_functions], rbx
.1317:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.1319:
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
	jz .1320
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2083.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2083.7:
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
	jnz .2084.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2084.8:
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
	jz .1321
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2085.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2085.6:
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
	jz .1323
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rdi
.1325:
	mov rbx, 1
	test rbx, rbx
	jz .1326
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
	jnz .2086.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2086.9:
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
	jnz .2087.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2087.10:
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
	jz .1327
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1329
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.1329:
	jmp .1328
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1332
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1333
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.1333:
	jmp .1328
.1332:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1336
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2088.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2088.11:
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
	jmp .1326
	jmp .1328
.1336:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1338
	jmp .1326
.1338:
.1337:
.1328:
	jmp .1325
.1326:
	add rsp, 8
.1323:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2089.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2089.12:
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
	jz .1340
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2090.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2090.13:
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
	jnz .2091.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2091.7:
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
	jz .1342
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.1342:
.1340:
	jmp .1322
.1321:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1346
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_slit_duplicate?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1347
	add rsp, 8
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
.1347:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2092.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2092.14:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
	jmp .1322
.1346:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1350
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
	jnz .2093.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2093.15:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.1350:
.1322:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1319
.1320:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2094.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2094.16:
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
	jnz .2095
	mov eax, 1
	mov edi, 2
	mov rsi, _s306
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2095:
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
	jz .1351
	mov rbx, _s303
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
	mov rbx, _s24
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
	mov rbx, _s25
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s26
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
.1351:
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
	jz .1353
	mov rbx, _s344
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1353:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1356
	mov rbx, _s345
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1358
	mov rbx, _s346
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1358:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1360
	mov rbx, _s347
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1360:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1362
	mov rbx, _s119
	mov rsi, 2
	push rbx
	push rsi
	jmp .1354
.1362:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1364
	mov rbx, _s348
	mov rsi, 2
	push rbx
	push rsi
	jmp .1354
.1364:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1366
	mov rbx, _s349
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1366:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1368
	mov rbx, _s350
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1368:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1370
	mov rbx, _s351
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1370:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1372
	mov rbx, _s352
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1372:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1374
	mov rbx, _s353
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1374:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1376
	mov rbx, _s354
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1376:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1378
	mov rbx, _s355
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1378:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1380
	mov rbx, _s356
	mov rsi, 3
	push rbx
	push rsi
	jmp .1354
.1380:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2096
	mov eax, 1
	mov edi, 2
	mov rsi, _s357
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2096:
	push rbx
	push rsi
.1381:
.1354:
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
	jz .1382
	mov rbx, _s472
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1382:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1385
	mov rbx, _s473
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1385:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1387
	mov rbx, _s474
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1387:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1389
	mov rbx, _s475
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1389:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1391
	mov rbx, _s476
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1391:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1393
	mov rbx, _s477
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1393:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1395
	mov rbx, _s478
	mov rsi, 4
	push rbx
	push rsi
	jmp .1383
.1395:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1397
	mov rbx, _s479
	mov rsi, 4
	push rbx
	push rsi
	jmp .1383
.1397:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1399
	mov rbx, _s480
	mov rsi, 4
	push rbx
	push rsi
	jmp .1383
.1399:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1401
	mov rbx, _s481
	mov rsi, 4
	push rbx
	push rsi
	jmp .1383
.1401:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1403
	mov rbx, _s482
	mov rsi, 4
	push rbx
	push rsi
	jmp .1383
.1403:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1405
	mov rbx, _s483
	mov rsi, 4
	push rbx
	push rsi
	jmp .1383
.1405:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1407
	mov rbx, _s484
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1407:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1409
	mov rbx, _s485
	mov rsi, 3
	push rbx
	push rsi
	jmp .1383
.1409:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2097
	mov eax, 1
	mov edi, 2
	mov rsi, _s486
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2097:
	push rbx
	push rsi
.1410:
.1383:
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
	jz .1411
	mov rbx, _s456
	mov rsi, 2
	push rbx
	push rsi
	jmp .1412
.1411:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1414
	mov rbx, _s457
	mov rsi, 2
	push rbx
	push rsi
	jmp .1412
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1416
	mov rbx, _s458
	mov rsi, 2
	push rbx
	push rsi
	jmp .1412
.1416:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1418
	mov rbx, _s459
	mov rsi, 2
	push rbx
	push rsi
	jmp .1412
.1418:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1420
	mov rbx, _s460
	mov rsi, 3
	push rbx
	push rsi
	jmp .1412
.1420:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1422
	mov rbx, _s461
	mov rsi, 3
	push rbx
	push rsi
	jmp .1412
.1422:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1424
	mov rbx, _s462
	mov rsi, 4
	push rbx
	push rsi
	jmp .1412
.1424:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1426
	mov rbx, _s463
	mov rsi, 4
	push rbx
	push rsi
	jmp .1412
.1426:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1428
	mov rbx, _s464
	mov rsi, 4
	push rbx
	push rsi
	jmp .1412
.1428:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1430
	mov rbx, _s465
	mov rsi, 4
	push rbx
	push rsi
	jmp .1412
.1430:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1432
	mov rbx, _s466
	mov rsi, 4
	push rbx
	push rsi
	jmp .1412
.1432:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1434
	mov rbx, _s467
	mov rsi, 4
	push rbx
	push rsi
	jmp .1412
.1434:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1436
	mov rbx, _s468
	mov rsi, 2
	push rbx
	push rsi
	jmp .1412
.1436:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1438
	mov rbx, _s469
	mov rsi, 2
	push rbx
	push rsi
	jmp .1412
.1438:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2098
	mov eax, 1
	mov edi, 2
	mov rsi, _s470
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2098:
	push rbx
	push rsi
.1439:
.1412:
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
	jz .1440
	mov rbx, _s422
	mov rsi, 2
	push rbx
	push rsi
	jmp .1441
.1440:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1443
	mov rbx, _s423
	mov rsi, 2
	push rbx
	push rsi
	jmp .1441
.1443:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1445
	mov rbx, _s424
	mov rsi, 3
	push rbx
	push rsi
	jmp .1441
.1445:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1447
	mov rbx, _s425
	mov rsi, 3
	push rbx
	push rsi
	jmp .1441
.1447:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1449
	mov rbx, _s426
	mov rsi, 3
	push rbx
	push rsi
	jmp .1441
.1449:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1451
	mov rbx, _s427
	mov rsi, 3
	push rbx
	push rsi
	jmp .1441
.1451:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1453
	mov rbx, _s428
	mov rsi, 4
	push rbx
	push rsi
	jmp .1441
.1453:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1455
	mov rbx, _s429
	mov rsi, 4
	push rbx
	push rsi
	jmp .1441
.1455:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1457
	mov rbx, _s430
	mov rsi, 4
	push rbx
	push rsi
	jmp .1441
.1457:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1459
	mov rbx, _s431
	mov rsi, 4
	push rbx
	push rsi
	jmp .1441
.1459:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1461
	mov rbx, _s432
	mov rsi, 4
	push rbx
	push rsi
	jmp .1441
.1461:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1463
	mov rbx, _s433
	mov rsi, 4
	push rbx
	push rsi
	jmp .1441
.1463:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1465
	mov rbx, _s434
	mov rsi, 2
	push rbx
	push rsi
	jmp .1441
.1465:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1467
	mov rbx, _s435
	mov rsi, 2
	push rbx
	push rsi
	jmp .1441
.1467:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2099
	mov eax, 1
	mov edi, 2
	mov rsi, _s436
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2099:
	push rbx
	push rsi
.1468:
.1441:
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
	jnz .2100
	mov eax, 1
	mov edi, 2
	mov rsi, _s386
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2100:
	mov rsi, [_grallocator_stack.len]
	mov rdi, 2048
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2101
	mov eax, 1
	mov edi, 2
	mov rsi, _s387
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2101:
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
	jnz .2102
	mov eax, 1
	mov edi, 2
	mov rsi, _s373
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2102:
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
.1469:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1470
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
	jz .1471
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1471:
	pop rbx
	inc rbx
	push rbx
	jmp .1469
.1470:
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
.1473:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1474
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
	jz .1475
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1475:
	pop rbx
	inc rbx
	push rbx
	jmp .1473
.1474:
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
.1479:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1480
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s343
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
	jmp .1479
.1480:
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
.1483:
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
	jz .1481
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1483
	jmp .1484
.1481:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.1484:
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
	jnz .2103.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s409
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2103.1:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	jz .1485
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
	jnz .2104.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2104.1:
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
	jnz .2105.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2105.1:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	mov rbx, 0
	mov byte [rdi], bl
	mov rbx, _s388
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
	mov rbx, _s377
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
	jz .1487
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1487:
.1485:
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
	jz .1489
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	jmp .1491
.1489:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s374
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
.1491:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2106.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2106.2:
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
	jnz .2107.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s409
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2107.2:
	mov rbx, qword _grallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	jz .1492
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1492:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1494
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
	jz .1496
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1496:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2108.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2108.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s388
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
	mov rbx, _s377
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
	jmp .1498
.1494:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2109.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s409
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2109.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .2110
	mov eax, 1
	mov edi, 2
	mov rsi, _s410
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2110:
	mov rbx, _s374
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
.1498:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2111.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2111.3:
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
	jz .1499
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1501
.1499:
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
	jnz .2112.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2112.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s374
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
.1501:
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
	jnz .2113.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2113.5:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
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
	jnz .2114.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2114.6:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
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
	jz .1502
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
.1502:
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
	jz .1504
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
.1504:
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
	mov rbx, _s377
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
.1533:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	pop r8
	mov qword [rbx + 16], r8
.1506:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1507
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
	jz .1508
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2115.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2115.17:
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
	jnz .2116.109
	mov eax, 1
	mov edi, 2
	mov rsi, _s141
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2116.109:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s341
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
	mov rbx, _s342
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
	jnz .2117.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s48
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2117.5:
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
	mov rbx, _s325
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
.1508:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2118.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2118.18:
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
	jnz .2119.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2119.19:
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
	jz .1510
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
	jmp .1511
.1510:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1513
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .2120
	mov eax, 1
	mov edi, 2
	mov rsi, _s358
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2120:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2121.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2121.8:
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
	jz .1514
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1516
.1514:
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
	jz .1517
	mov rbx, _s359
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
.1517:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s49
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
	jz .1519
	mov rbx, _s367
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
.1519:
	mov rbx, _s368
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
	mov rbx, _s369
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
	jz .1521
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
.1521:
	add rsp, 8
.1516:
	jmp .1511
.1513:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1524
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
	jnz .2122.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2122.9:
	mov rbx, 40
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, _s333
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
	mov rbx, _s334
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
	jz .1525
	mov rbx, _s370
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
.1525:
	mov rbx, _s371
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
	jmp .1511
.1524:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1528
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2123.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s151
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2123.10:
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
	jz .1529
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1531
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
	jmp .1534
.1531:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s333
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
	mov rbx, _s334
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
	mov rbx, _s372
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
	mov rbx, _s368
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
	mov rbx, _s369
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
.1534:
.1529:
	jmp .1511
.1528:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1536
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
	mov rbx, _s376
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
	mov rbx, _s377
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
	mov rbx, _s378
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
	mov rbx, _s379
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
	mov rbx, _s380
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
	mov rbx, _s381
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
	mov rbx, _s382
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
	jnz .2124.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s304
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2124.2:
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
	mov rbx, _s339
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
	mov rbx, _s383
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
	mov rbx, _s384
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
	jnz .2125.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2125.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1536:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1538
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
	jnz .2126.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2126.7:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s389
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
	jnz .2127.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s304
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2127.3:
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
	jmp .1511
.1538:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1540
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1511
.1540:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1542
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
	jnz .2128.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2128.8:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s390
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
	jz .1543
	mov rbx, _s391
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
	mov rbx, _s377
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
.1543:
	jmp .1511
.1542:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1546
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
	jnz .2129.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2129.9:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 96], rbx
	mov rsi, _s388
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
	mov rbx, _s392
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
.1547:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 88]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1548
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
	mov rdi, _s393
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
	mov rbx, _s394
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
	mov rbx, _s395
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
	jmp .1547
.1548:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2130.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2130.4:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1546:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1550
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
	jnz .2131.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2131.10:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rsi, _s388
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
	mov rbx, _s392
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
.1551:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 112]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1552
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
	jnz .2132.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2132.11:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s396
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
	mov rbx, _s394
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
	mov rbx, _s397
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
	jmp .1551
.1552:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2133.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2133.5:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1550:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1554
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
	jnz .2134.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2134.12:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s398
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
	jnz .2135.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2135.4:
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
	jmp .1511
.1554:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1556
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2136.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2136.5:
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
	jz .1557
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 128], rsi
	mov rbx, _s399
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
	jnz .2137.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2137.6:
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
	mov rbx, _s395
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
	jmp .1559
.1557:
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
	jnz .2138.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2138.13:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 128], rbx
	mov rsi, _s388
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
	mov rbx, _s400
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
	jnz .2139.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2139.7:
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
.1560:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 136]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1561
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
	mov rbx, _s393
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
	mov rbx, _s394
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
	mov rbx, _s395
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
	jmp .1560
.1561:
	add rsp, 8
.1559:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2140.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2140.6:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1556:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1563
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2141.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2141.8:
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
	jnz .2142.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2142.14:
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
	jz .1564
	mov rbx, _s388
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
	mov rbx, _s401
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
	jnz .2143.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2143.9:
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
	mov rbx, _s397
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
	jnz .2144.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2144.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1566
.1564:
	mov rbx, _s388
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
	mov rbx, _s400
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
	jnz .2145.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2145.10:
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
.1567:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 152]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1568
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
	jnz .2146.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2146.16:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s396
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
	mov rbx, _s394
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
	mov rbx, _s397
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
	jmp .1567
.1568:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2147.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2147.7:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
.1566:
	jmp .1511
.1563:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1570
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
	jnz .2148.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2148.17:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, _s388
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
	mov rbx, _s402
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
	mov rbx, _s388
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
	mov rbx, _s403
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
	mov rbx, _s397
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
	jnz .2149.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2149.18:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1570:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1572
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
	jnz .2150.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2150.19:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, _s388
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
	mov rbx, _s402
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
	mov rbx, _s391
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
	mov rbx, _s404
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
	jnz .2151.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2151.20:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1572:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1574
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
	jnz .2152.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2152.21:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
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
	jnz .2153.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2153.22:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rsi, _s388
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
	mov rbx, _s402
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
	mov rbx, _s388
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
	mov rbx, _s403
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
	mov rbx, _s397
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
	mov rbx, _s391
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
	mov rbx, _s404
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
	mov rbx, _s405
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
	mov rbx, _s403
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
	mov rbx, _s394
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
	mov rbx, _s406
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
	jnz .2154.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2154.23:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2155.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2155.8:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1574:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1576
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
	mov rbx, _s376
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
	mov rbx, _s377
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
	mov rbx, _s407
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
	jnz .2156.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2156.9:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1576:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1578
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s408
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
	jmp .1511
.1578:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1580
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s411
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
	jnz .2157.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2157.24:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1580:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1582
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
	mov rdi, _s412
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
	jnz .2158.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2158.25:
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
	jnz .2159.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2159.10:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1582:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1584
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
	mov rdi, _s276
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
	jnz .2160.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2160.26:
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
	jnz .2161.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2161.11:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1584:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1586
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
	mov rdi, _s413
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
	jnz .2162.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2162.27:
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
	jnz .2163.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2163.12:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1586:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1588
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
	mov rbx, _s414
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
	mov rbx, _s415
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
	jnz .2164.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2164.28:
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
	jnz .2165.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2165.13:
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
	jnz .2166.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2166.14:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1588:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1590
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
	mov rbx, _s414
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
	mov rbx, _s415
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
	jnz .2167.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2167.29:
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
	jnz .2168.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2168.15:
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
	jnz .2169.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2169.16:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1590:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1592
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s416
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
	jmp .1511
.1592:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1594
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s417
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
	jmp .1511
.1594:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1596
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
	jnz .2170.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2170.30:
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
	mov rbx, _s414
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
	mov rbx, _s415
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
	jnz .2171.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2171.17:
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
	jnz .2172.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2172.31:
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
	jnz .2173.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2173.32:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1596:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1598
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
	mov rbx, _s418
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
	mov rbx, _s419
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
	jnz .2174.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2174.33:
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
	jnz .2175.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2175.18:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1598:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1600
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
	mov rbx, _s420
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
	mov rbx, _s419
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
	jnz .2176.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2176.34:
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
	jnz .2177.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2177.19:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1600:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
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
	mov qword [rbx + 40], rsi
	mov rbx, _s376
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
	mov rbx, _s377
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
	mov rbx, _s421
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
	jnz .2178.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2178.35:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1602:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s437
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
	jnz .2179.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2179.36:
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
	jnz .2180.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2180.20:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1604:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s438
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
	jnz .2181.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2181.37:
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
	jnz .2182.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2182.21:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1606:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
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
	mov rbx, _s439
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
	jnz .2183.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2183.38:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1608:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s440
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
	jnz .2184.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2184.39:
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
	jnz .2185.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2185.22:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1610:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
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
	jnz .2186.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2186.40:
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
	jnz .2187.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2187.41:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1612:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1614
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
	jmp .1511
.1614:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1616
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1617
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
	jnz .2188.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2188.42:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s441
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
	mov rbx, _s397
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
	jmp .1619
.1617:
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
.1619:
	jmp .1511
.1616:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1621
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1622
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
	jnz .2189.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2189.43:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s388
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
	mov rbx, _s377
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s441
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
	mov rbx, _s397
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
	jmp .1624
.1622:
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
.1624:
	jmp .1511
.1621:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1626
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
	jnz .2190.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2190.44:
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
	jnz .2191.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2191.45:
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
	jnz .2192.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2192.46:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1626:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1628
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
	jnz .2193.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2193.47:
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
	jnz .2194.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2194.48:
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
	jnz .2195.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2195.49:
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
	jnz .2196.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2196.50:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1628:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1630
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1631
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
	jnz .2197.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2197.23:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1633
.1631:
	mov rbx, _s442
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
.1633:
	jmp .1511
.1630:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1635
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
	jnz .2198.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2198.51:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s421
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
	jnz .2199.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2199.52:
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
	jnz .2200.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2200.24:
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
	jnz .2201.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2201.25:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1635:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1637
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
	jnz .2202.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2202.53:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s445
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
	jnz .2203.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2203.54:
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
	jnz .2204.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2204.26:
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
	jnz .2205.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2205.27:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1637:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1639
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
	jnz .2206.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2206.55:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s446
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
	jnz .2207.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2207.56:
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
	jnz .2208.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2208.28:
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
	jnz .2209.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2209.29:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1639:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1641
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
	jnz .2210.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2210.57:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s447
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
	jnz .2211.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2211.58:
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
	jnz .2212.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2212.30:
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
	jnz .2213.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2213.31:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1641:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1643
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
	jnz .2214.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2214.59:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s448
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
	jnz .2215.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2215.60:
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
	jnz .2216.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2216.32:
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
	jnz .2217.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2217.33:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1643:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1645
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
	jnz .2218.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2218.61:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s449
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
	jnz .2219.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2219.62:
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
	jnz .2220.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2220.34:
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
	jnz .2221.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2221.35:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1645:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1647
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
	jnz .2222.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2222.63:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s450
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
	jnz .2223.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2223.64:
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
	jnz .2224.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2224.36:
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
	jnz .2225.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2225.37:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1647:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1649
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
	jnz .2226.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2226.65:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s451
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
	jnz .2227.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2227.66:
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
	jnz .2228.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2228.38:
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
	jnz .2229.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2229.39:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1649:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1651
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
	jnz .2230.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2230.67:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s452
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
	jnz .2231.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2231.68:
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
	jnz .2232.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2232.40:
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
	jnz .2233.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2233.41:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1651:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1653
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
	jnz .2234.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2234.69:
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
	mov rbx, _s443
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
	mov rbx, _s377
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
	mov rbx, _s444
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
	mov rbx, _s377
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
	mov rbx, _s453
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
	jnz .2235.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2235.70:
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
	jnz .2236.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2236.42:
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
	jnz .2237.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2237.43:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1653:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1655
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
	mov rbx, _s454
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
	mov rbx, _s395
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
	jnz .2238.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2238.44:
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
	jnz .2239.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2239.45:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1655:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1657
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
	mov rbx, _s455
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
	mov rbx, _s395
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
	jnz .2240.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2240.46:
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
	jnz .2241.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2241.47:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1657:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1659
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
	mov rbx, _s471
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
	mov rbx, _s395
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
	jnz .2242.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2242.48:
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
	jnz .2243.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2243.49:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1659:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1661
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
	mov rbx, _s393
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
	mov rbx, _s395
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
	jnz .2244.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2244.50:
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
	jnz .2245.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2245.51:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1661:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1663
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
	jnz .2246.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2246.71:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rsi, _s443
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
	mov rbx, _s377
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
	mov rbx, _s388
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
	mov rbx, _s403
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
	mov rbx, _s397
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
	jnz .2247.72
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2247.72:
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
	jnz .2248.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2248.52:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1663:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1665
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
	jnz .2249.73
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2249.73:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rsi, _s443
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
	mov rbx, _s377
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
	mov rbx, _s388
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
	mov rbx, _s403
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
	mov rbx, _s397
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
	jnz .2250.74
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2250.74:
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
	jnz .2251.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2251.53:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1511
.1665:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1667
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s388
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
	mov rbx, _s403
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
	mov rbx, _s397
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
	jnz .2252.75
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2252.75:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1667:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1669
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, _s388
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
	mov rbx, _s403
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
	mov rbx, _s397
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
	jnz .2253.76
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2253.76:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1669:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1671
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s339
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
	jnz .2254.77
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2254.77:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1511
.1671:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1673
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
	mov rbx, _s339
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
	jnz .2255.78
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2255.78:
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
	jnz .2256.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2256.54:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1673:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1675
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
	mov rbx, _s339
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
	jnz .2257.79
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2257.79:
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
	jnz .2258.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2258.55:
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
	jnz .2259.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2259.56:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1675:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1677
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
	mov rbx, _s339
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
	jnz .2260.80
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2260.80:
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
	jnz .2261.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2261.57:
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
	jnz .2262.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2262.58:
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
	jnz .2263.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2263.59:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1677:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1679
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
	mov rbx, _s339
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
	jnz .2264.81
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2264.81:
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
	jnz .2265.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2265.60:
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
	jnz .2266.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2266.61:
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
	jnz .2267.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2267.62:
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
	jnz .2268.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2268.63:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1679:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1681
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
	mov rbx, _s339
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
	jnz .2269.82
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2269.82:
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
	jnz .2270.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2270.64:
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
	jnz .2271.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2271.65:
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
	jnz .2272.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2272.66:
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
	jnz .2273.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2273.67:
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
	jnz .2274.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2274.68:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1681:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1683
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
	mov rbx, _s339
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
	jnz .2275.83
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2275.83:
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
	jnz .2276.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2276.69:
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
	jnz .2277.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2277.70:
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
	jnz .2278.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2278.71:
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
	jnz .2279.72
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2279.72:
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
	jnz .2280.73
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2280.73:
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
	jnz .2281.74
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2281.74:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1511
.1683:
	mov rbx, 0
	test rbx, rbx
	jnz .2282
	mov eax, 1
	mov edi, 2
	mov rsi, _s487
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2282:
.1684:
.1511:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .1506
.1507:
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
	jz .1685
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1685:
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
	jz .1687
	mov rbx, _s493
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
.1687:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1689
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
	jz .1691
	mov rbx, _s494
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
	jmp .1693
.1691:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1693:
.1689:
	mov rbx, 1
	push rbx
.1694:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1695
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
	jz .1696
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1698
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1700
.1698:
	mov rbx, _s495
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
.1700:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1701
.1696:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1702
	mov rbx, _s496
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
	jmp .1704
.1702:
	mov rbx, _s377
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
.1704:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1701:
	pop rbx
	inc rbx
	push rbx
	jmp .1694
.1695:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1705
	mov rbx, _s494
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.1705:
	mov rbx, _s497
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
	jz .1707
	mov rbx, _s314
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
	jz .1709
	mov rbx, _s317
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
	mov rbx, _s318
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
	mov rbx, _s319
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
	mov rbx, _s320
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
	jmp .1711
.1709:
	mov rbx, _s321
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
	mov rbx, _s322
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
	mov rbx, _s323
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
.1711:
	jmp .1708
.1707:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1713
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1714
	mov rbx, _s324
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
	mov rbx, _s325
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
.1714:
	mov rbx, _s326
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
	mov rbx, _s327
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
	mov rbx, _s328
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
	jmp .1708
.1713:
	mov rbx, 0
	test rbx, rbx
	jnz .2283
	mov eax, 1
	mov edi, 2
	mov rsi, _s329
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2283:
.1716:
.1708:
	mov rbx, _s330
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
	mov rbx, _s331
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
	mov rbx, _s332
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
	mov rbx, _s333
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
	mov rbx, _s334
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
	mov rbx, _s335
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
	mov rbx, _s336
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
	mov rbx, _s337
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
	mov rbx, _s338
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
	mov rbx, _s339
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
	mov rbx, _s340
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
	jz .1717
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1719
	mov rbx, _s488
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
	jmp .1721
.1719:
	mov rbx, _s489
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
.1721:
	jmp .1718
.1717:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1723
	mov rbx, _s490
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
	jmp .1718
.1723:
	mov rbx, 0
	test rbx, rbx
	jnz .2284
	mov eax, 1
	mov edi, 2
	mov rsi, _s491
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2284:
.1724:
.1718:
	mov rbx, 0
	push rbx
.1725:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1726
	pop rbx
	mov rsi, rbx
	mov rdi, _s389
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
	mov rbx, _s492
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
	jnz .2285.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s304
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2285.4:
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
	jmp .1725
.1726:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1727
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1729
	mov rbx, _s498
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
	jmp .1731
.1729:
	mov rbx, _s499
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
.1731:
	jmp .1728
.1727:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1733
	mov rbx, _s500
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
	jmp .1728
.1733:
	mov rbx, 0
	test rbx, rbx
	jnz .2286
	mov eax, 1
	mov edi, 2
	mov rsi, _s501
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2286:
.1734:
.1728:
	mov rbx, 0
	push rbx
.1735:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gglobal_var_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1736
	mov rbx, _s366
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
	jnz .2287.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2287.11:
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
	jz .1737
	mov rbx, _s502
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1738
.1737:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1740
	mov rbx, _s503
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1738
.1740:
	mov rbx, 0
	test rbx, rbx
	jnz .2288
	mov eax, 1
	mov edi, 2
	mov rsi, _s504
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2288:
.1741:
.1738:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gglobal_var_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2289.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s154
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2289.12:
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
	jmp .1735
.1736:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1742
	mov rbx, _s505
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
	mov rbx, _s506
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
	mov rbx, _s507
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
	jmp .1743
.1742:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1745
	mov rbx, _s508
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
	mov rbx, _s509
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
	mov rbx, _s510
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
	jmp .1743
.1745:
	mov rbx, 0
	test rbx, rbx
	jnz .2290
	mov eax, 1
	mov edi, 2
	mov rsi, _s511
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2290:
.1746:
.1743:
	mov rbx, _s512
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
	jnz .2291.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s316
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2291.2:
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
	jz .1747
	mov rbx, 1
	mov [_gbackend_type], rbx
	jmp .1748
.1747:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s22
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
	jz .1750
	mov rbx, 2
	mov [_gbackend_type], rbx
	jmp .1748
.1750:
	mov rbx, _s23
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
	mov rbx, _s24
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
	mov rbx, _s25
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s26
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
.1751:
.1748:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
stas_exec:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	pop r8
	mov r9, qword [_rs_p]
	mov qword [r9 + 0], rdi
	mov qword [r9 + 8], r8
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 8]
	mov r11, qword [r9 + 0]
	push rsi
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call find_abs_path_of_executable
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1752
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s25
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s26
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s525
	mov rsi, 26
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
	mov rbx, _s38
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
.1752:
	pop rbx
	pop rsi
	pop rdi
	pop r8
	mov r9, qword _gverbose_mode
	xor r10, r10
	mov r10b, [r9]
	push rsi
	push rbx
	push r8
	push rdi
	test r10, r10
	jz .1754
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s526
	mov rsi, 1
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [rsp + 8]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call argp_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1754:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call child_execve_and_shut_up
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
execute_backend:
	sub rsp, 328
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
	mov rbx, 0
	mov r11, 0
	mov r12, qword [_rs_p]
	mov qword [r12 + 312], r11
	mov qword [r12 + 320], rbx
	mov r12, qword _gdebug_symbols
	xor r13, r13
	mov r13b, [r12]
	mov r12, [_gbackend_type]
	mov r14, 2
	xor r15, r15
	cmp r12, r14
	sete r15b
	or r13, r15
	test r13, r13
	jz .1756
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, _s520
	mov r8, 2
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
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov r9, qword [rdi + 8]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 312], r9
	mov qword [rdi + 320], r8
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov qword [rdi + 16], rsi
	mov rdi, 1
	mov r10, qword [_rs_p]
	mov qword [r10 + 0], rdi
.1756:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1758
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s21
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
	mov rdi, _s521
	mov r8, 2
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s522
	mov r8, 7
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s21
	mov rsi, 4
	mov rdi, qword [_rs_p]
	add rdi, 40
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1759
.1758:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1761
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s22
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
	mov rdi, _s11
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
	mov rdi, _s535
	mov r8, 3
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s536
	mov r8, 7
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	test rdi, rdi
	jz .1762
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s537
	mov r8, 7
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s13
	mov r8, 2
	mov qword [rbx], rdi
	push rsi
.1762:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, 0
	mov qword [rsi], rbx
	mov rbx, _s22
	mov rsi, 4
	mov rdi, qword [_rs_p]
	add rdi, 40
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
.1761:
.1759:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 320]
	mov rdi, qword [rbx + 312]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1764
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, rbx
	mov rdi, _s538
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
	mov rdi, _s11
	mov r8, 2
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 320]
	mov r9, qword [rdi + 312]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s538
	mov rsi, 2
	mov rdi, qword [_rs_p]
	add rdi, 40
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
.1764:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 328
	ret
main:
	sub rsp, 83
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1766
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
.1766:
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
.1768:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1769
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
	jz .1770
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1772
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
.1772:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
	jmp .1771
.1770:
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
	jz .1775
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1776
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
.1776:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
	jmp .1771
.1775:
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
	jz .1779
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1780
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
.1780:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1782
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
.1782:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1771
.1779:
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
	jz .1785
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1786
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
.1786:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1788
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
.1788:
	mov rbx, qword _gverbose_mode
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1771
.1785:
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
	jz .1791
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1792
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
.1792:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .1771
.1791:
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
	jz .1795
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
	jmp .1771
.1795:
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
	jz .1797
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
	jz .1798
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
.1798:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1771
.1797:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, _s20
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
	jz .1801
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
	jz .1802
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
.1802:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1771
.1801:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1805
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1807
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
.1807:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 59], rsi
	jmp .1806
.1805:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1810
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1811
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
.1811:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 43], rsi
	jmp .1806
.1810:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1814
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
	jmp .1806
.1814:
	mov rbx, 0
	test rbx, rbx
	jnz .2292
	mov eax, 1
	mov edi, 2
	mov rsi, _s29
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.2292:
.1815:
.1806:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 11], rbx
.1804:
.1771:
	pop rbx
	inc rbx
	push rbx
	jmp .1768
.1769:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1816
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1818
	mov rbx, _s30
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
	mov rbx, _s24
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
	mov rbx, _s25
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s26
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	jmp .1819
.1818:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1821
	mov rbx, _s31
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
	mov rbx, _s24
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
	mov rbx, _s25
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s26
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
.1821:
.1819:
.1816:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1822
	mov rbx, _s32
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
	mov rbx, _s24
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
	mov rbx, _s25
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s26
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
.1822:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1824
	mov rbx, _s33
	mov rsi, 5
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 43], rbx
	jmp .1826
.1824:
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
	jz .1827
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.1827:
.1826:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1829
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s37
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
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1829:
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
	mov rbx, _s136
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
	jz .1831
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 83
	ret
.1831:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1833
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s147
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
	mov rbx, _s148
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1833:
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
	mov rbx, _s251
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
	jz .1835
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbx, _s252
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
	mov rbx, _s253
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
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbx, _s254
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
	mov rbx, _s255
	mov rsi, 11
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1835:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1837
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 83
	ret
.1837:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1839
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s302
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1839:
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
	mov rbx, _s307
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
	jz .1841
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbx, _s308
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
	mov rbx, _s309
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
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbx, _s310
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1841:
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1843
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
	mov rdi, _s311
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
	jmp .1845
.1843:
	mov rbx, 1
	mov [_gfwrite_buffer.fd_loc], rbx
.1845:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1846
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s312
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
	mov rbx, _s313
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1846:
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
	mov rbx, _s513
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
	jz .1848
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 83
	ret
.1848:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1850
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s514
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
	jz .1852
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s515
	mov rsi, 14
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .1854
.1852:
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s516
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1854:
.1850:
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
	jz .1855
	mov rbx, _s44
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
.1855:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1857
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s517
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
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1857:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1859
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s518
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
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1859:
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
	mov rbx, _s539
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
	jz .1861
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s540
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
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1861:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1863
	mov rbx, qword _gstring_buffer
	mov rsi, [_gstring_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 75], rbx
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
.1865:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1866
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
	jmp .1865
.1866:
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
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_arg_p]
	mov r8, [rbx]
	add rbx, 8
	lea rbx, [rbx + r8 * 8 + 8]
	mov r8, qword _gverbose_mode
	xor r9, r9
	mov r9b, [r8]
	push rsi
	push rdi
	push rbx
	test r9, r9
	jz .1867
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s24
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
	mov rbx, _s35
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s36
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
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s541
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
	mov rsi, qword [rbx + 75]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call argp_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s38
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1867:
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
	jz .1869
	mov rbx, _s542
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
.1869:
.1863:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 83
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
_s20: db "--dump-tok", 0
_s21: db "fasm", 0
_s22: db "nasm", 0
_s23: db "unknown backend", 0
_s24: db "[1m", 0
_s25: db "[31m", 0
_s26: db "FATAL: ", 0
_s27: db "[39m", 0
_s28: db "[22m", 0
_s29: db 27, "[1m", 27, "[31mstas.stas:255:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s30: db "supply output file", 0
_s31: db "supply backend type", 0
_s32: db "supply stas file", 0
_s33: db "a.out", 0
_s34: db "-", 0
_s35: db "[33m", 0
_s36: db "LOG:  ", 0
_s37: db "scanning file `", 0
_s38: db "`", 10, 0
_s39: db "FATAL: Failed to get current time", 0
_s40: db "FATAL: Failed to open file '", 0
_s41: db "'", 10, 0
_s42: db "FATAL: Failed to stat the file descriptor", 10, 0
_s43: db "FATAL: Could not mmap file '", 0
_s44: db "FATAL: Failed to close file descriptor", 10, 0
_s45: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s46: db 27, "[1m", 27, "[31msrc/formatting.stas:49:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s47: db "unterminated string literal", 0
_s48: db 27, "[1m", 27, "[31msrc/formatting.stas:37:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s49: db ":", 0
_s50: db ": ", 0
_s51: db 10, 0
_s52: db 27, "[1m", 27, "[31mlib/array.stas:130:24: ", 27, "[39m", 27, "[22massertation failed, 'Array64.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s53: db 27, "[1m", 27, "[31mlib/array.stas:93:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64<<: append exceeded bounds in Array64'", 10, 0
_s54: db 27, "[1m", 27, "[31mlib/array.stas:89:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64[]: index out of bounds'", 10, 0
_s55: db " | ", 0
_s56: db "    ", 0
_s57: db "       ", 0
_s58: db "escape character does not exist", 0
_s59: db "unhandled escape character", 0
_s60: db "including file `", 0
_s61: db 27, "[1m", 27, "[31msrc/tokens.stas:407:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s62: db "unterminated character literal", 0
_s63: db "empty character literal", 0
_s64: db "character literals must contain a single character", 0
_s65: db "file to include is not a string", 0
_s66: db 27, "[1m", 27, "[31mlib/conv.stas:59:15: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s67: db "include", 0
_s68: db "{", 0
_s69: db "}", 0
_s70: db "->", 0
_s71: db "fn", 0
_s72: db "_breakpoint", 0
_s73: db "const", 0
_s74: db "assert", 0
_s75: db "argc", 0
_s76: db "argv", 0
_s77: db "ret", 0
_s78: db "if", 0
_s79: db "else", 0
_s80: db "elif", 0
_s81: db "while", 0
_s82: db "break", 0
_s83: db "continue", 0
_s84: db "+", 0
_s85: db "*", 0
_s86: db "/", 0
_s87: db "%", 0
_s88: db "++", 0
_s89: db "--", 0
_s90: db "%%", 0
_s91: db ">>", 0
_s92: db "<<", 0
_s93: db "&", 0
_s94: db "|", 0
_s95: db "~", 0
_s96: db "!", 0
_s97: db "^", 0
_s98: db "swap", 0
_s99: db "dup", 0
_s100: db "over", 0
_s101: db "over2", 0
_s102: db "rot", 0
_s103: db "rot4", 0
_s104: db "drop", 0
_s105: db "=", 0
_s106: db "!=", 0
_s107: db ">", 0
_s108: db "<", 0
_s109: db ">=", 0
_s110: db "<=", 0
_s111: db ">s", 0
_s112: db "<s", 0
_s113: db ">=s", 0
_s114: db "<=s", 0
_s115: db "w8", 0
_s116: db "w16", 0
_s117: db "w32", 0
_s118: db "w64", 0
_s119: db "r8", 0
_s120: db "r16", 0
_s121: db "r32", 0
_s122: db "r64", 0
_s123: db "syscall0", 0
_s124: db "syscall1", 0
_s125: db "syscall2", 0
_s126: db "syscall3", 0
_s127: db "syscall4", 0
_s128: db "syscall5", 0
_s129: db "syscall6", 0
_s130: db "reserve", 0
_s131: db "auto", 0
_s132: db "pop", 0
_s133: db "addr", 0
_s134: db "envp", 0
_s135: db "unexpected EOF when parsing file to include", 0
_s136: db "scanning took ", 0
_s137: db "[34m", 0
_s138: db "TIME: ", 0
_s139: db ".", 0
_s140: db " ms", 10, 0
_s141: db 27, "[1m", 27, "[31msrc/tokens.stas:392:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s142: db "name", 0
_s143: db "string_lit", 0
_s144: db "number_lit", 0
_s145: db 27, "[1m", 27, "[31msrc/tokens.stas:219:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s146: db " -> ", 0
_s147: db "parsing ", 0
_s148: db " tokens", 10, 0
_s149: db "unexpected EOF when parsing constant expression", 0
_s150: db "constant expression name must not be in instrinsic", 0
_s151: db 27, "[1m", 27, "[31msrc/parserdefs.stas:411:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s152: db "duplicate constant expression name as existing function name", 0
_s153: db 27, "[1m", 27, "[31msrc/parserdefs.stas:437:31: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s154: db 27, "[1m", 27, "[31msrc/parserdefs.stas:461:31: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s155: db "constant expression name as duplicate top level variable name", 0
_s156: db "a scope must follow a const expression decl", 0
_s157: db 27, "[1m", 27, "[31msrc/parserdefs.stas:450:50: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s158: db 27, "[1m", 27, "[31msrc/parser.stas:1316:13: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s159: db 27, "[1m", 27, "[31msrc/parserdefs.stas:400:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s160: db 27, "[1m", 27, "[31msrc/parserdefs.stas:379:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s161: db "unclosed scope for constant expression", 0
_s162: db "unexpected EOF when parsing function", 0
_s163: db "function name must not be an intrinsic", 0
_s164: db "function return and argument counts must be numbers", 0
_s165: db "new scope must proceed after function header", 0
_s166: db "unknown token in function declaration", 0
_s167: db "a function name cannot begin with an an underscore", 0
_s168: db "duplicate function name", 0
_s169: db "function name already exists as variable name", 0
_s170: db "main", 0
_s171: db "the main function must accept and return zero values", 0
_s172: db 27, "[1m", 27, "[31msrc/parserdefs.stas:432:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s173: db 27, "[1m", 27, "[31msrc/parserdefs.stas:332:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s174: db 27, "[1m", 27, "[31msrc/parser.stas:317:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s175: db 27, "[1m", 27, "[31msrc/parser.stas:318:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s176: db 27, "[1m", 27, "[31msrc/parser.stas:54:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s177: db "unexpected EOF when parsing variable decl", 0
_s178: db "variable name must not be an intrinsic", 0
_s179: db "variable decl must not be a function", 0
_s180: db "variable decl must specify size in bytes", 0
_s181: db "duplicate top level variable name", 0
_s182: db 27, "[1m", 27, "[31msrc/parserdefs.stas:475:50: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s183: db "unknown toplevel token", 0
_s184: db 27, "[1m", 27, "[31msrc/parserdefs.stas:455:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s185: db 27, "[1m", 27, "[31msrc/parserdefs.stas:318:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s186: db 27, "[1m", 27, "[31msrc/eval.stas:8:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s187: db 27, "[1m", 27, "[31msrc/eval.stas:21:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s188: db 27, "[1m", 27, "[31msrc/eval.stas:15:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s189: db 27, "[1m", 27, "[31msrc/parser.stas:1358:25: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s190: db "constant expression must contain a value", 0
_s191: db "more than one unhandled value on left on the constant expression", 0
_s192: db 27, "[1m", 27, "[31msrc/parser.stas:29:15: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s193: db "backtrace", 0
_s194: db 27, "[1m", 27, "[31msrc/parser.stas:1383:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s195: db "unknown constant variable", 0
_s196: db "no value on stack to consume for assertion", 0
_s197: db 0
_s198: db "assertation failed, '", 0
_s199: db "assertation failed", 10, 0
_s200: db "not enough values to consume for operation", 0
_s201: db 27, "[1m", 27, "[31msrc/parserdefs.stas:355:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s202: db "duplicate variable name", 0
_s203: db 27, "[1m", 27, "[31msrc/parserdefs.stas:369:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s204: db "unexpected EOF", 0
_s205: db "expected name of variable", 0
_s206: db "cannot pop into a buffer", 0
_s207: db "cannot get address of a buffer, buffer is already an address", 0
_s208: db "not enought values on the stack to pop into an automatic variable", 0
_s209: db 27, "[1m", 27, "[31msrc/parser.stas:498:8: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s210: db 27, "[1m", 27, "[31msrc/parser.stas:532:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s211: db "unknown variable", 0
_s212: db "not enough values to consume for function call", 0
_s213: db 27, "[1m", 27, "[31msrc/parser.stas:590:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s214: db 27, "[1m", 27, "[31msrc/parser.stas:610:9: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s215: db "unknown function call or variable", 0
_s216: db "no value on stack to consume for if statement", 0
_s217: db 27, "[1m", 27, "[31msrc/parserdefs.stas:395:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s218: db "unexpected EOF when parsing if statement", 0
_s219: db "a scope must come after an if statement", 0
_s220: db "not inside while loop body", 0
_s221: db 27, "[1m", 27, "[31msrc/parser.stas:718:59: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s222: db "no value on stack to consume for while header", 0
_s223: db "no value on stack to consume for else if statement", 0
_s224: db "unreachable code", 0
_s225: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s226: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s227: db "unexpected EOF when parsing else statement", 0
_s228: db "a scope must come after an else statement", 0
_s229: db "the stack must remain the same with single branches", 0
_s230: db 27, "[1m", 27, "[31msrc/parser.stas:923:12: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s231: db "the stack must remain the same each with else if branch", 0
_s232: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s233: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s234: db 27, "[1m", 27, "[31msrc/parser.stas:983:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s235: db 27, "[1m", 27, "[31msrc/parser.stas:226:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s236: db "unhandled data on the stack", 0
_s237: db "not enough values on the stack on function return", 0
_s238: db "unhandled data on the stack for early return", 0
_s239: db "not enough values on the stack on early return", 0
_s240: db 27, "[1m", 27, "[31msrc/parser.stas:235:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s241: db "unexpected EOF when parsing checked scope", 0
_s242: db "a number must appear after the arrow assert operator", 0
_s243: db "a scope must come after the arrow assert operator", 0
_s244: db "unknown function local token", 0
_s245: db "cannot define constant expression inside a constant expression", 0
_s246: db "unknown constant expression token", 0
_s247: db 27, "[1m", 27, "[31msrc/parser.stas:1406:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s248: db 27, "[1m", 27, "[31msrc/parser.stas:1407:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s249: db "unclosed scopes on parser finish", 0
_s250: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s251: db "parsing took ", 0
_s252: db " functions, ", 0
_s253: db " labels", 10, 0
_s254: db " global variables, ", 0
_s255: db " constants", 10, 0
_s256: db "tok[]	data	inst", 10, 10, 0
_s257: db "	", 0
_s258: db "push_str", 0
_s259: db "push_num", 0
_s260: db "push_local_addr", 0
_s261: db "pop_local_stack_var", 0
_s262: db "push_local_stack_var", 0
_s263: db "push_global_var_name", 0
_s264: db "pop_global_stack_var", 0
_s265: db "push_global_stack_var", 0
_s266: db "push_argc", 0
_s267: db "push_argv", 0
_s268: db "do_cond_jmp", 0
_s269: db "do_jmp", 0
_s270: db "label", 0
_s271: db "fn_prelude", 0
_s272: db "fn_leave", 0
_s273: db "fn_call", 0
_s274: db "trap_breakpoint", 0
_s275: db "plus", 0
_s276: db "sub", 0
_s277: db "mul", 0
_s278: db "div", 0
_s279: db "mod", 0
_s280: db "inc", 0
_s281: db "dec", 0
_s282: db "divmod", 0
_s283: db "shr", 0
_s284: db "shl", 0
_s285: db "not", 0
_s286: db "b_and", 0
_s287: db "b_or", 0
_s288: db "b_not", 0
_s289: db "b_xor", 0
_s290: db "equ", 0
_s291: db "nequ", 0
_s292: db "gt", 0
_s293: db "lt", 0
_s294: db "gte", 0
_s295: db "lte", 0
_s296: db "s_gt", 0
_s297: db "s_lt", 0
_s298: db "s_gte", 0
_s299: db "s_lte", 0
_s300: db "push_envp", 0
_s301: db 27, "[1m", 27, "[31msrc/parserdefs.stas:296:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s302: db "dce pass started", 10, 0
_s303: db "no main function", 0
_s304: db 27, "[1m", 27, "[31msrc/dce.stas:22:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s305: db 27, "[1m", 27, "[31msrc/dce.stas:12:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s306: db 27, "[1m", 27, "[31msrc/dce.stas:135:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s307: db "dce took ", 0
_s308: db " used functions, of which ", 0
_s309: db " are eligible for inline", 10, 0
_s310: db " string literals", 10, 0
_s311: db ".tmp", 0
_s312: db "generating code from ", 0
_s313: db " IR instructions", 10, 0
_s314: db "use64", 0
_s315: db 27, "[1m", 27, "[31msrc/write.stas:17:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s316: db 27, "[1m", 27, "[31msrc/write.stas:10:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s317: db "format ELF64", 0
_s318: db "section '.text' executable", 0
_s319: db "public _start", 0
_s320: db "public _exit", 0
_s321: db "format ELF64 executable", 0
_s322: db "segment readable executable", 0
_s323: db "entry _start", 0
_s324: db "%line 0+0 '", 0
_s325: db "'", 0
_s326: db "[BITS 64]", 0
_s327: db "[global _start]", 0
_s328: db "[section .text]", 0
_s329: db 27, "[1m", 27, "[31msrc/gen.stas:708:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s330: db "_start:", 0
_s331: db "	mov [_arg_p], rsp", 0
_s332: db "	mov qword [_rs_p], _rs_top", 0
_s333: db "	mov rbp, rsp", 0
_s334: db "	mov rsp, [_rs_p]", 0
_s335: db "	call main", 0
_s336: db "	xor rdi, rdi", 0
_s337: db "_exit:", 0
_s338: db "	mov eax, 60", 0
_s339: db "	syscall", 0
_s340: db "	nop", 0
_s341: db "%line ", 0
_s342: db "+0 '", 0
_s343: db "	push ", 0
_s344: db "rbx", 0
_s345: db "rcx", 0
_s346: db "rsi", 0
_s347: db "rdi", 0
_s348: db "r9", 0
_s349: db "r10", 0
_s350: db "r11", 0
_s351: db "r12", 0
_s352: db "r13", 0
_s353: db "r14", 0
_s354: db "r15", 0
_s355: db "rdx", 0
_s356: db "rax", 0
_s357: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s358: db 27, "[1m", 27, "[31msrc/gen.stas:59:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s359: db "public ", 0
_s360: db "_a", 0
_s361: db "_b", 0
_s362: db "_c", 0
_s363: db "_d", 0
_s364: db "_e", 0
_s365: db "_f", 0
_s366: db "_g", 0
_s367: db "	sub rsp, ", 0
_s368: db "	mov [_rs_p], rsp", 0
_s369: db "	mov rsp, rbp", 0
_s370: db "	add rsp, ", 0
_s371: db "	ret", 0
_s372: db "	call ", 0
_s373: db 27, "[1m", 27, "[31msrc/x86.stas:178:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s374: db "	pop ", 0
_s375: db 27, "[1m", 27, "[31msrc/x86.stas:195:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s376: db "	test ", 0
_s377: db ", ", 0
_s378: db "	jnz ", 0
_s379: db "	mov eax, 1", 0
_s380: db "	mov edi, 2", 0
_s381: db "	mov rsi, _s", 0
_s382: db "	mov rdx, ", 0
_s383: db "	mov rdi, 1", 0
_s384: db "	jmp _exit", 0
_s385: db 27, "[1m", 27, "[31msrc/x86.stas:189:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s386: db 27, "[1m", 27, "[31msrc/x86.stas:170:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s387: db 27, "[1m", 27, "[31msrc/x86.stas:171:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s388: db "	mov ", 0
_s389: db "_s", 0
_s390: db "qword [_rs_p]", 0
_s391: db "	add ", 0
_s392: db ", qword [_rs_p]", 0
_s393: db "	mov qword [", 0
_s394: db " + ", 0
_s395: db "], ", 0
_s396: db "qword [", 0
_s397: db "]", 0
_s398: db "qword _g", 0
_s399: db "	mov [_g", 0
_s400: db ", _g", 0
_s401: db ", [_g", 0
_s402: db ", qword [_arg_p]", 0
_s403: db ", [", 0
_s404: db ", 8", 0
_s405: db "	lea ", 0
_s406: db " * 8 + 8]", 0
_s407: db "	jz ", 0
_s408: db "	jmp ", 0
_s409: db 27, "[1m", 27, "[31msrc/x86.stas:201:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s410: db 27, "[1m", 27, "[31msrc/x86.stas:348:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s411: db "	db 0xcc", 0
_s412: db "add", 0
_s413: db "imul", 0
_s414: db "	xor rdx, rdx", 0
_s415: db "	div ", 0
_s416: db "	inc ", 0
_s417: db "	dec ", 0
_s418: db "	shr ", 0
_s419: db ", cl", 0
_s420: db "	shl ", 0
_s421: db "	sete ", 0
_s422: db "bl", 0
_s423: db "cl", 0
_s424: db "sil", 0
_s425: db "dil", 0
_s426: db "r8b", 0
_s427: db "r9b", 0
_s428: db "r10b", 0
_s429: db "r11b", 0
_s430: db "r12b", 0
_s431: db "r13b", 0
_s432: db "r14b", 0
_s433: db "r15b", 0
_s434: db "dl", 0
_s435: db "al", 0
_s436: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s437: db "and", 0
_s438: db "or", 0
_s439: db "	not ", 0
_s440: db "xor", 0
_s441: db "qword [rsp + ", 0
_s442: db "	add rsp, 8", 0
_s443: db "	xor ", 0
_s444: db "	cmp ", 0
_s445: db "	setne ", 0
_s446: db "	seta ", 0
_s447: db "	setb ", 0
_s448: db "	setae ", 0
_s449: db "	setbe ", 0
_s450: db "	setg ", 0
_s451: db "	setl ", 0
_s452: db "	setge ", 0
_s453: db "	setle ", 0
_s454: db "	mov byte [", 0
_s455: db "	mov word [", 0
_s456: db "bx", 0
_s457: db "cx", 0
_s458: db "si", 0
_s459: db "di", 0
_s460: db "r8w", 0
_s461: db "r9w", 0
_s462: db "r10w", 0
_s463: db "r11w", 0
_s464: db "r12w", 0
_s465: db "r13w", 0
_s466: db "r14w", 0
_s467: db "r15w", 0
_s468: db "dx", 0
_s469: db "ax", 0
_s470: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s471: db "	mov dword [", 0
_s472: db "ebx", 0
_s473: db "ecx", 0
_s474: db "esi", 0
_s475: db "edi", 0
_s476: db "r8d", 0
_s477: db "r9d", 0
_s478: db "r10d", 0
_s479: db "r11d", 0
_s480: db "r12d", 0
_s481: db "r13d", 0
_s482: db "r14d", 0
_s483: db "r15d", 0
_s484: db "edx", 0
_s485: db "eax", 0
_s486: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s487: db 27, "[1m", 27, "[31msrc/gen.stas:606:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s488: db "section '.rodata'", 0
_s489: db "segment readable", 0
_s490: db "[section .rodata]", 0
_s491: db 27, "[1m", 27, "[31msrc/gen.stas:734:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s492: db ": db ", 0
_s493: db "0", 10, 0
_s494: db 34, 0
_s495: db ", ", 34, 0
_s496: db 34, ", ", 0
_s497: db ", 0", 10, 0
_s498: db "section '.bss' writable", 0
_s499: db "segment readable writable", 0
_s500: db "[section .bss]", 0
_s501: db 27, "[1m", 27, "[31msrc/gen.stas:758:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s502: db ": rb ", 0
_s503: db ": resb ", 0
_s504: db 27, "[1m", 27, "[31msrc/gen.stas:770:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s505: db "_arg_p: rq 1", 0
_s506: db "_rs_p: rq 1", 0
_s507: db "_rs: rb ", 0
_s508: db "_arg_p: resq 1", 0
_s509: db "_rs_p: resq 1", 0
_s510: db "_rs: resb ", 0
_s511: db 27, "[1m", 27, "[31msrc/gen.stas:786:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s512: db "_rs_top:", 0
_s513: db "gen took ", 0
_s514: db "generated ", 0
_s515: db " KiBs of code", 10, 0
_s516: db " bytes of code", 10, 0
_s517: db "wrote code to `", 0
_s518: db "executing assembler backend `", 0
_s519: db 27, "[1m", 27, "[31mstas.stas:17:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s520: db ".o", 0
_s521: db "-m", 0
_s522: db "1048576", 0
_s523: db "PATH", 0
_s524: db 27, "[1m", 27, "[31msrc/formatting.stas:72:16: ", 27, "[39m", 27, "[22massertation failed, ''PATH' enviroment variable not found'", 10, 0
_s525: db "cannot locate executable `", 0
_s526: db "`", 0
_s527: db "/dev/null", 0
_s528: db "FATAL: Could not open /dev/null", 10, 0
_s529: db "FATAL: Could not open /dev/null as stdout", 10, 0
_s530: db "FATAL: Could not execve child", 0
_s531: db "FATAL: Could not wait for process", 0
_s532: db "FATAL: Child process was terminated by signal ", 0
_s533: db 27, "[1m", 27, "[31mlib/io.stas:433:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s534: db "FATAL: Could not fork child", 0
_s535: db "-O0", 0
_s536: db "-felf64", 0
_s537: db "-Fdwarf", 0
_s538: db "ld", 0
_s539: db "backend took ", 0
_s540: db "created binary `", 0
_s541: db "exceve binary `", 0
_s542: db "FATAL: Could not execve file", 10, 0
segment readable writable
_g_rand_state: rb 8
_gdebug_symbols: rb 1
_gverbose_mode: rb 1
_gbackend_type: rb 8
_gstring_buffer.len: rb 8
_gstring_buffer: rb 262144
_gopened_files.len: rb 8
_gopened_files: rb 3072
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
