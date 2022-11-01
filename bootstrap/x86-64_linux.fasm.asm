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
	xor rax, rax
	cmp rdi, r8
	sete al
	mov rdi, rax
	mov rax, rdi
	push rbx
	test rax, rax
	jz .11
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 48
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
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
	xor rax, rax
	cmp rsi, rdi
	seta al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
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
	mov rbx, rax
	mov rax, rdx
	mov byte [rdi], al
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	inc r8
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], r8
	push rbx
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
	xor rax, rax
	cmp rdi, r8
	sete al
	mov rdi, rax
	mov rax, rdi
	push rbx
	test rax, rax
	jz .15
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 48
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	seta al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
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
	mov rbx, rax
	mov rax, rdx
	mov byte [rdi], al
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 36]
	inc r8
	mov rdi, qword [_rs_p]
	mov qword [rdi + 36], r8
	push rbx
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
eputc:
	sub rsp, 1
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov rax, rsi
	mov byte [rbx], al
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
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setl al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .22
	mov rbx, _slit_37
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
	mov r8, rax
	xor rax, rax
	cmp rsi, rdi
	setl al
	mov rsi, rax
	mov rax, rsi
	push r8
	test rax, rax
	jz .24
	mov rbx, _slit_35
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
	mov rbx, _slit_36
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
	mov r8, rax
	xor rax, rax
	cmp rsi, rdi
	setl al
	mov rsi, rax
	mov rax, rsi
	push r8
	test rax, rax
	jz .26
	mov rbx, _slit_33
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
	mov rbx, _slit_34
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
	xor rax, rax
	cmp rdi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
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
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	setl al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .30
	mov rbx, _slit_38
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
	mov rbx, _slit_39
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
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setl al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .33
	mov rbx, _slit_40
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
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	pop rdi
	mov qword [rsi + 8], rdi
	mov rsi, 57
	mov rax, rsi
	syscall
	mov rsi, 0
	mov r8, rax
	xor rax, rax
	cmp r8, rsi
	sete al
	mov rsi, rax
	mov rax, rsi
	test rax, rax
	jz .35
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 0
	mov rax, rsi
	mov qword [rbx], rax
	mov rbx, 18446744073709551516
	mov rsi, _slit_478
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
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	setl al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .37
	mov rbx, _slit_479
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
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setl al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .39
	mov rbx, _slit_480
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
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov r8, 59
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setl al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .41
	mov rbx, _slit_481
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
.35:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
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
.43:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .44
	pop rbx
	pop rsi
	pop rdi
	mov r8, rsi
	xor rax, rax
	mov al, [r8]
	mov r8, rdi
	mov r9, rax
	xor rax, rax
	mov al, [r8]
	inc rdi
	inc rsi
	mov r8, rax
	xor rax, rax
	cmp r9, r8
	setne al
	mov r8, rax
	mov rax, r8
	push rbx
	push rsi
	push rdi
	test rax, rax
	jz .45
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.45:
	pop rbx
	pop rsi
	pop rdi
	inc rdi
	push rbx
	push rsi
	push rdi
	jmp .43
.44:
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
	xor rax, rax
	cmp rbx, rsi
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .47
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.47:
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
.49:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor rax, rax
	cmp rsi, rdi
	seta al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .50
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	xor rax, rax
	mov al, [r8]
	mov r8, rsi
	mov r9, rax
	mov rax, r9
	mov byte [r8], al
	inc rdi
	inc rsi
	dec rbx
	push rdi
	push rsi
	push rbx
	jmp .49
.50:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memset:
	mov [_rs_p], rsp
	mov rsp, rbp
.51:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor rax, rax
	cmp rsi, rdi
	seta al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .52
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	mov r9, rsi
	mov rax, r9
	mov byte [r8], al
	inc rdi
	dec rbx
	push rdi
	push rsi
	push rbx
	jmp .51
.52:
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
.53:
	pop rbx
	mov rsi, rbx
	xor rax, rax
	mov al, [rsi]
	mov rsi, 0
	mov rdi, rax
	xor rax, rax
	cmp rdi, rsi
	setne al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .54
	pop rbx
	inc rbx
	push rbx
	jmp .53
.54:
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
	xor rax, rax
	cmp rsi, rdi
	setae al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .58
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.58:
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
.60:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .61
	pop rbx
	pop rsi
	mov rdi, 10
	imul rsi, rdi
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	add rdi, r9
	xor rax, rax
	mov al, [rdi]
	mov rdi, 48
	sub rax, rdi
	add rsi, rax
	inc rbx
	push rsi
	push rbx
	jmp .60
.61:
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
	mov rbx, qword _global_string_buffer.len
	mov r8, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 0]
	mov rbx, 8
	mov r10, 1
	add rbx, r10
	add r9, rbx
	add r8, r9
	mov rbx, r8
	mov r9, 268435456
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1479
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1479:
	mov rbx, qword _global_string_buffer
	mov r9, qword _global_string_buffer.len
	mov r10, qword [r9 + 0]
	add rbx, r10
	mov r9, rbx
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 0]
	mov rax, r11
	mov qword [r9], rax
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
	mov rax, rdi
	mov byte [rsi], al
	pop rsi
	mov rdi, qword _global_string_buffer.len
	mov qword [rdi + 0], rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
new_empty_string:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	mov rdi, 1
	add rbx, rdi
	add rsi, rbx
	mov rbx, 268435456
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1480
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1480:
	mov rbx, qword _global_string_buffer
	mov rsi, qword _global_string_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, rbx
	mov rdi, 0
	mov rax, rdi
	mov qword [rsi], rax
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rdi, 0
	mov rax, rdi
	mov byte [rsi], al
	mov rsi, qword _global_string_buffer.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	mov r8, 1
	add rsi, r8
	add rdi, rsi
	mov rsi, qword _global_string_buffer.len
	mov qword [rsi + 0], rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
push_char:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 268435456
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1481
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1481:
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
	mov rax, rbx
	mov byte [r8], al
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov rbx, [rbx]
	inc rbx
	mov rax, rbx
	mov qword [rdi], rax
	mov rbx, qword _global_string_buffer.len
	mov rdi, qword [rbx + 0]
	inc rdi
	mov rbx, qword _global_string_buffer.len
	mov qword [rbx + 0], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
push_nul:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 268435456
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1482
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1482:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_string_buffer.len
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
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .62
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.62:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_string_buffer.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, 268435456
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1483
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1483:
	mov rsi, rbx
	mov rdi, qword _global_string_buffer.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, qword _global_string_buffer.len
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
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	add rdi, r8
	mov rax, rdi
	mov qword [rsi], rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
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
	mov rbx, _slit_51
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
	pop rax
	test rax, rax
	jz .203
	mov rbx, 4
	push rbx
	jmp .204
.203:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_52
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
	pop rax
	test rax, rax
	jz .206
	mov rbx, 5
	push rbx
	jmp .204
.206:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_53
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
	pop rax
	test rax, rax
	jz .208
	mov rbx, 6
	push rbx
	jmp .204
.208:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_54
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
	pop rax
	test rax, rax
	jz .210
	mov rbx, 7
	push rbx
	jmp .204
.210:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_55
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
	pop rax
	test rax, rax
	jz .212
	mov rbx, 8
	push rbx
	jmp .204
.212:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_56
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
	pop rax
	test rax, rax
	jz .214
	mov rbx, 9
	push rbx
	jmp .204
.214:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_57
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
	pop rax
	test rax, rax
	jz .216
	mov rbx, 10
	push rbx
	jmp .204
.216:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_58
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
	pop rax
	test rax, rax
	jz .218
	mov rbx, 11
	push rbx
	jmp .204
.218:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_59
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
	pop rax
	test rax, rax
	jz .220
	mov rbx, 12
	push rbx
	jmp .204
.220:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_60
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
	pop rax
	test rax, rax
	jz .222
	mov rbx, 13
	push rbx
	jmp .204
.222:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_61
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
	pop rax
	test rax, rax
	jz .224
	mov rbx, 15
	push rbx
	jmp .204
.224:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_62
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
	pop rax
	test rax, rax
	jz .226
	mov rbx, 16
	push rbx
	jmp .204
.226:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_63
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
	pop rax
	test rax, rax
	jz .228
	mov rbx, 17
	push rbx
	jmp .204
.228:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_64
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
	pop rax
	test rax, rax
	jz .230
	mov rbx, 18
	push rbx
	jmp .204
.230:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_65
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
	pop rax
	test rax, rax
	jz .232
	mov rbx, 19
	push rbx
	jmp .204
.232:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_66
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
	pop rax
	test rax, rax
	jz .234
	mov rbx, 20
	push rbx
	jmp .204
.234:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_67
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
	pop rax
	test rax, rax
	jz .236
	mov rbx, 21
	push rbx
	jmp .204
.236:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_68
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
	pop rax
	test rax, rax
	jz .238
	mov rbx, 22
	push rbx
	jmp .204
.238:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_69
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
	pop rax
	test rax, rax
	jz .240
	mov rbx, 23
	push rbx
	jmp .204
.240:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_70
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
	pop rax
	test rax, rax
	jz .242
	mov rbx, 24
	push rbx
	jmp .204
.242:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_71
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
	pop rax
	test rax, rax
	jz .244
	mov rbx, 25
	push rbx
	jmp .204
.244:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_72
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
	pop rax
	test rax, rax
	jz .246
	mov rbx, 26
	push rbx
	jmp .204
.246:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_73
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
	pop rax
	test rax, rax
	jz .248
	mov rbx, 27
	push rbx
	jmp .204
.248:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_74
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
	pop rax
	test rax, rax
	jz .250
	mov rbx, 28
	push rbx
	jmp .204
.250:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_75
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
	pop rax
	test rax, rax
	jz .252
	mov rbx, 29
	push rbx
	jmp .204
.252:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_76
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
	pop rax
	test rax, rax
	jz .254
	mov rbx, 30
	push rbx
	jmp .204
.254:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_77
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
	pop rax
	test rax, rax
	jz .256
	mov rbx, 31
	push rbx
	jmp .204
.256:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_78
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
	pop rax
	test rax, rax
	jz .258
	mov rbx, 32
	push rbx
	jmp .204
.258:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_79
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
	pop rax
	test rax, rax
	jz .260
	mov rbx, 33
	push rbx
	jmp .204
.260:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_80
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
	pop rax
	test rax, rax
	jz .262
	mov rbx, 70
	push rbx
	jmp .204
.262:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_81
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
	pop rax
	test rax, rax
	jz .264
	mov rbx, 34
	push rbx
	jmp .204
.264:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_82
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
	pop rax
	test rax, rax
	jz .266
	mov rbx, 35
	push rbx
	jmp .204
.266:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_83
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
	pop rax
	test rax, rax
	jz .268
	mov rbx, 36
	push rbx
	jmp .204
.268:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_84
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
	pop rax
	test rax, rax
	jz .270
	mov rbx, 37
	push rbx
	jmp .204
.270:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_85
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
	pop rax
	test rax, rax
	jz .272
	mov rbx, 38
	push rbx
	jmp .204
.272:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_86
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
	pop rax
	test rax, rax
	jz .274
	mov rbx, 39
	push rbx
	jmp .204
.274:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_87
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
	pop rax
	test rax, rax
	jz .276
	mov rbx, 40
	push rbx
	jmp .204
.276:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_88
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
	pop rax
	test rax, rax
	jz .278
	mov rbx, 41
	push rbx
	jmp .204
.278:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_89
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
	pop rax
	test rax, rax
	jz .280
	mov rbx, 42
	push rbx
	jmp .204
.280:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_90
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
	pop rax
	test rax, rax
	jz .282
	mov rbx, 43
	push rbx
	jmp .204
.282:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_91
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
	pop rax
	test rax, rax
	jz .284
	mov rbx, 44
	push rbx
	jmp .204
.284:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_92
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
	pop rax
	test rax, rax
	jz .286
	mov rbx, 45
	push rbx
	jmp .204
.286:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_93
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
	pop rax
	test rax, rax
	jz .288
	mov rbx, 46
	push rbx
	jmp .204
.288:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_94
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
	pop rax
	test rax, rax
	jz .290
	mov rbx, 47
	push rbx
	jmp .204
.290:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_95
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
	pop rax
	test rax, rax
	jz .292
	mov rbx, 48
	push rbx
	jmp .204
.292:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_96
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
	pop rax
	test rax, rax
	jz .294
	mov rbx, 49
	push rbx
	jmp .204
.294:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_97
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
	pop rax
	test rax, rax
	jz .296
	mov rbx, 50
	push rbx
	jmp .204
.296:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_98
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
	pop rax
	test rax, rax
	jz .298
	mov rbx, 51
	push rbx
	jmp .204
.298:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_99
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
	pop rax
	test rax, rax
	jz .300
	mov rbx, 52
	push rbx
	jmp .204
.300:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_100
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
	pop rax
	test rax, rax
	jz .302
	mov rbx, 53
	push rbx
	jmp .204
.302:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_101
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
	pop rax
	test rax, rax
	jz .304
	mov rbx, 54
	push rbx
	jmp .204
.304:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_102
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
	pop rax
	test rax, rax
	jz .306
	mov rbx, 55
	push rbx
	jmp .204
.306:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_103
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
	pop rax
	test rax, rax
	jz .308
	mov rbx, 56
	push rbx
	jmp .204
.308:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_104
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
	pop rax
	test rax, rax
	jz .310
	mov rbx, 57
	push rbx
	jmp .204
.310:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_105
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
	pop rax
	test rax, rax
	jz .312
	mov rbx, 58
	push rbx
	jmp .204
.312:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_106
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
	pop rax
	test rax, rax
	jz .314
	mov rbx, 59
	push rbx
	jmp .204
.314:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_107
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
	pop rax
	test rax, rax
	jz .316
	mov rbx, 60
	push rbx
	jmp .204
.316:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_108
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
	pop rax
	test rax, rax
	jz .318
	mov rbx, 61
	push rbx
	jmp .204
.318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_109
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
	pop rax
	test rax, rax
	jz .320
	mov rbx, 62
	push rbx
	jmp .204
.320:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_110
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
	pop rax
	test rax, rax
	jz .322
	mov rbx, 63
	push rbx
	jmp .204
.322:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_111
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
	pop rax
	test rax, rax
	jz .324
	mov rbx, 64
	push rbx
	jmp .204
.324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_112
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
	pop rax
	test rax, rax
	jz .326
	mov rbx, 65
	push rbx
	jmp .204
.326:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_113
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
	pop rax
	test rax, rax
	jz .328
	mov rbx, 66
	push rbx
	jmp .204
.328:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_114
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
	pop rax
	test rax, rax
	jz .330
	mov rbx, 67
	push rbx
	jmp .204
.330:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_115
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
	pop rax
	test rax, rax
	jz .332
	mov rbx, 68
	push rbx
	jmp .204
.332:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_116
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
	pop rax
	test rax, rax
	jz .334
	mov rbx, 69
	push rbx
	jmp .204
.334:
	mov rbx, 1
	push rbx
.335:
.204:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
token_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_token_stream.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, 32768
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1484
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_48
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1484:
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
	mov rsi, _slit_120
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
	mov rax, rsi
	mov eax, [rax]
	mov rsi, 1
	add rax, rsi
	mov rsi, 1
	push rbx
	push rsi
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_121
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
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	add rax, rbx
	mov rbx, 1
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_122
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
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
	mov rbx, _slit_42
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
	mov rbx, _slit_43
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
	mov rbx, _slit_44
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
	mov rsi, _slit_45
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
error.Tok:
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
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
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1485
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1485:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
	mov rsi, _slit_45
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
	mov rbx, _slit_167
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
	mov rbx, _slit_168
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
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1486
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1486:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
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
	mov rbx, _slit_169
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
	mov rax, rsi
	mov eax, [rax]
	mov rsi, 1
	add rax, rsi
	mov rsi, qword [_rs_p]
	push rbx
	push rsi
	push rax
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
	mov rbx, _slit_170
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
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	add rax, rbx
	mov rbx, qword [_rs_p]
	push rbx
	push rax
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
	mov rbx, _slit_171
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
	mov rbx, _slit_172
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
	mov rbx, _slit_173
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
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .336
	mov rbx, 1
	push rbx
	jmp .337
.336:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .339
	mov rbx, 1
	push rbx
	jmp .337
.339:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .341
	mov rbx, 1
	push rbx
	jmp .337
.341:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .343
	mov rbx, 1
	push rbx
	jmp .337
.343:
	mov rbx, 0
	push rbx
.344:
.337:
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
	mov rax, r8
	mov byte [rbx], al
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
	mov rax, r11
	mov byte [r10], al
.345:
	mov rbx, 1
	mov rax, rbx
	test rax, rax
	jz .346
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rax, rax
	cmp rsi, rdi
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .347
	jmp .346
.347:
.349:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	push rax
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_whitespace
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rax
	test rax, rax
	jz .350
	mov rbx, 10
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .351
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .353
.351:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.353:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	xor rax, rax
	cmp rdi, r8
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .354
	jmp .350
.354:
	jmp .349
.350:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rax, rax
	cmp rsi, rdi
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .356
	jmp .346
.356:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 67], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 75], rdi
.358:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_whitespace
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .359
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .360
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	mov rsi, 48
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	setae al
	mov rbx, 57
	mov rsi, rax
	xor rax, rax
	cmp rdi, rbx
	setbe al
	and rsi, rax
	mov rbx, 1
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .362
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
.362:
.360:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	mov rsi, 39
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, 34
	mov rsi, rax
	xor rax, rax
	cmp rdi, rbx
	sete al
	or rsi, rax
	mov rax, rsi
	test rax, rax
	jz .364
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 83], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 91], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 99], rdi
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
	mov rax, rdi
	mov byte [rbx], al
.366:
	mov rbx, 1
	mov rax, rbx
	test rax, rax
	jz .367
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
	xor rax, rax
	cmp r8, r9
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .368
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 91]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 99]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_41
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
.368:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 116], rax
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rsi, rax
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .370
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	mov rsi, 39
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .372
	mov rbx, 39
	push rbx
	jmp .373
.372:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .375
	mov rbx, 34
	push rbx
	jmp .373
.375:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .377
	mov rbx, 92
	push rbx
	jmp .373
.377:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .379
	mov rbx, 7
	push rbx
	jmp .373
.379:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .381
	mov rbx, 8
	push rbx
	jmp .373
.381:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .383
	mov rbx, 12
	push rbx
	jmp .373
.383:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .385
	mov rbx, 10
	push rbx
	jmp .373
.385:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .387
	mov rbx, 13
	push rbx
	jmp .373
.387:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .389
	mov rbx, 9
	push rbx
	jmp .373
.389:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .391
	mov rbx, 11
	push rbx
	jmp .373
.391:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_46
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
.392:
.373:
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
	mov rax, rsi
	mov byte [rbx], al
	jmp .366
.370:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 83]
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .393
	jmp .367
.393:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, 92
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .395
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .366
	jmp .396
.395:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, 10
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .398
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	inc rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 49], rdi
.398:
.396:
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
	jmp .366
.367:
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
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .399
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_47
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
.399:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .401
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
	mov rax, rsi
	mov byte [rbx], al
	jmp .403
.401:
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
.403:
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
	mov rax, r8
	mov byte [rbx], al
	jmp .359
	jmp .365
.364:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, 59
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .405
.406:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rbx, 10
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .407
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	xor rax, rax
	cmp rdi, r8
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .408
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 140
	ret
.408:
	jmp .406
.407:
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .359
.405:
.365:
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
	xor rax, rax
	cmp r8, r9
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .410
	jmp .359
.410:
	jmp .358
.359:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .412
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .345
.412:
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
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .414
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_49
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
.414:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .416
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
	jmp .418
.416:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 132]
	mov rdi, qword [rbx + 124]
	mov rbx, _slit_50
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
	pop rax
	test rax, rax
	jz .419
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .345
.419:
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
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .421
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
	jmp .423
.421:
	mov rbx, 0
	push rbx
.423:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.418:
	jmp .345
.346:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .424
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_117
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
.424:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 140
	ret
ir_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_ir_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_ir_stream.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_ir_stream.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, 16384
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1487
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_144
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1487:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_var_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_var_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1488
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_180
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1488:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
scope_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 24
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1489
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_195
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1489:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
functions_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 29
	add rdi, r8
	mov rax, rbx
	mov byte [rdi], al
	pop rbx
	mov rdi, rsi
	mov r8, 28
	add rdi, r8
	mov rax, rbx
	mov byte [rdi], al
	pop rbx
	mov rdi, rsi
	mov r8, 24
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_functions.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1490
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_143
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1490:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
toplevel_constants_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_toplevel_constants
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov qword [rsi], rax
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_toplevel_constants.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1024
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1491
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_130
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1491:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
global_var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov rax, rbx
	mov qword [rdi], rax
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov rax, rbx
	mov dword [rdi], eax
	pop rbx
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_global_var_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_global_var_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor rax, rax
	cmp r8, rdi
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1492
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1492:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1493
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_157
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1493:
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov rax, rsi
	mov qword [rbx], rax
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1494
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_159
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1494:
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
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
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1495
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_158
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1495:
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
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
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1496
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1496:
	mov rdi, 16
	imul rsi, rdi
	mov rdi, qword _global_ir_stream
	add rsi, rdi
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1497
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1497:
	mov rdi, 16
	imul rbx, rdi
	mov rdi, qword _global_ir_stream
	add rbx, rdi
	mov rdi, 4
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rax
	mov rbx, 1
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	mov rdi, 2
	mov r9, rax
	xor rax, rax
	cmp r8, rdi
	sete al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .559
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.559:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 24
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .562
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov rax, rsi
	mov qword [rbx], rax
	jmp .560
.562:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 25
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .564
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov rax, rsi
	mov qword [rbx], rax
	jmp .560
.564:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 31
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .566
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov rax, rsi
	mov qword [rbx], rax
	jmp .560
.566:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 34
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .568
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
	jmp .560
.568:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 39
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .570
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	jmp .560
.570:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 19
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .572
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.572:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 20
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .574
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.574:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 21
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .576
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.576:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 22
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .578
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.578:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 23
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .580
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.580:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 26
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .582
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.582:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 27
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .584
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.584:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 28
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .586
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.586:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 29
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .588
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.588:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 30
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .590
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.590:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 32
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .592
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.592:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 33
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .594
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.594:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 35
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .596
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
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
	jmp .560
.596:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 40
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .598
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	sete al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.598:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 41
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .600
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setne al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.600:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 42
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .602
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	seta al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.602:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 43
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .604
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setb al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.604:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 44
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .606
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setae al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.606:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 45
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .608
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setbe al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.608:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 46
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .610
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setg al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.610:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 47
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .612
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setl al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.612:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 48
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .614
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setge al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.614:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 49
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .616
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rax, rax
	cmp rdi, r8
	setle al
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .560
.616:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 37
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .618
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.618:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 36
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .620
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
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
	jmp .560
.620:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 38
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setae al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .622
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
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
	jmp .560
.622:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.623:
.560:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
sp_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1498
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_147
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1498:
	mov rbx, qword _global_sp
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 4
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov rax, rsi
	mov dword [rbx], eax
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_sp.len
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
.624:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .625
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
	jmp .624
.625:
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
	mov rbx, qword _global_sp.len
	mov r8, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 8]
	xor rax, rax
	cmp r8, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .626
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_177
	mov rdi, 42
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.626:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	sub rsi, rdi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_pos
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
	mov rbx, qword _global_global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .628
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.628:
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
.630:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .631
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_global_var_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1499
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1499:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_global_var_context
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
	pop rax
	test rax, rax
	jz .632
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.632:
	pop rbx
	inc rbx
	push rbx
	jmp .630
.631:
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
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .634
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.634:
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
.636:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .637
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_toplevel_constants.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1500
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1500:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_toplevel_constants
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
	pop rax
	test rax, rax
	jz .638
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.638:
	pop rbx
	inc rbx
	push rbx
	jmp .636
.637:
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
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .640
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.640:
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
.642:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .643
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_functions.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1501
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1501:
	mov rdi, 30
	imul rsi, rdi
	mov rdi, qword _global_functions
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
	pop rax
	test rax, rax
	jz .644
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.644:
	pop rbx
	inc rbx
	push rbx
	jmp .642
.643:
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
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .646
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.646:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	push r8
.648:
	mov rbx, 1
	mov rax, rbx
	test rax, rax
	jz .649
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_var_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1502
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_178
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1502:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_var_context
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
	pop rax
	test rax, rax
	jz .650
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.650:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .652
	jmp .649
.652:
	pop rbx
	dec rbx
	push rbx
	jmp .648
.649:
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
	mov r9, qword _global_token_stream.len
	mov r10, qword [r9 + 0]
	xor rax, rax
	cmp r8, r10
	setb al
	mov r8, rax
	mov rax, r8
	test al, al
	jnz .1503
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1503:
	mov r8, 28
	imul rdi, r8
	mov r8, qword _global_token_stream
	add rdi, r8
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r8, r9
	mov r10, qword _global_toplevel_constants.len
	mov r11, qword [r10 + 0]
	xor rax, rax
	cmp r8, r11
	setb al
	mov r8, rax
	mov rax, r8
	test al, al
	jnz .1504
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1504:
	mov r8, 24
	imul r9, r8
	mov r8, qword _global_toplevel_constants
	add r9, r8
	mov r8, 12
	add r9, r8
	mov rax, r9
	mov eax, [rax]
	mov r8, rax
	mov r9, qword _global_token_stream.len
	mov r10, qword [r9 + 0]
	mov r9, rax
	xor rax, rax
	cmp r8, r10
	setb al
	mov r8, rax
	mov rax, r8
	test al, al
	jnz .1505
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1505:
	mov r8, 28
	imul r9, r8
	mov r8, qword _global_token_stream
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
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1506
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1506:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_token_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rdi, 3
	mov rax, rdi
	mov dword [rsi], eax
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1507
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1507:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _global_toplevel_constants.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rsi, r9
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1508
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1508:
	mov rsi, 24
	imul rdi, rsi
	mov rsi, qword _global_toplevel_constants
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov rdi, [rdi]
	mov rax, rdi
	mov qword [rbx], rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.fn_decl:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .654
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1509
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1509:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1510
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1510:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_134
	mov rsi, 38
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.654:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor rax, rax
	cmp r9, r10
	setae al
	mov r8, rax
	mov rax, r8
	test rax, rax
	jz .656
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_135
	mov rdi, 36
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.656:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1511
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1511:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .658
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_136
	mov rdi, 38
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.658:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1512
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1512:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 3
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, rax
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1513
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1513:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 3
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	or rdi, rax
	mov rax, rdi
	test rax, rax
	jz .660
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_137
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.660:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1514
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1514:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 4
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .662
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_138
	mov rdi, 44
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.662:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1515
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1515:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .664
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_139
	mov rdi, 23
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.664:
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
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	pop rbx
	push rax
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	pop rbx
	or rbx, rax
	mov rax, rbx
	test rax, rax
	jz .666
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_140
	mov rdi, 45
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.666:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1516
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1516:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1517
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1517:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _global_token_stream
	add rdi, rbx
	mov rbx, 20
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rdi
	mov rbx, qword _global_functions.len
	mov r8, qword [rbx + 0]
	mov rbx, 30
	imul r8, rbx
	mov rbx, qword _global_functions
	add r8, rbx
	mov rbx, qword _global_function_context
	mov qword [rbx + 0], r8
	mov r9, qword _global_functions.len
	mov r10, qword [r9 + 0]
	mov r9, qword _global_function_context_idx
	mov qword [r9 + 0], r10
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 16]
	mov r11, qword [_rs_p]
	mov r13, qword [r11 + 24]
	mov r11, qword [_rs_p]
	mov r14, qword [r11 + 8]
	mov r11, qword _global_ir_stream.len
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
	mov rdi, _slit_141
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
	pop rax
	test rax, rax
	jz .668
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	or rdi, rax
	mov rax, rdi
	test rax, rax
	jz .670
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_142
	mov rdi, 52
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.670:
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_main_fn_idx
	mov qword [rbx + 0], rsi
	mov rdi, 1
	mov r8, 1
	push rdi
	push r8
	jmp .672
.668:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.672:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call functions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 14
	mov rdi, qword _global_function_context_idx
	mov r8, qword [rdi + 0]
	push rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1518
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_145
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1518:
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1519
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_146
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1519:
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
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor rax, rax
	cmp r9, r10
	setae al
	mov r8, rax
	mov rax, r8
	test rax, rax
	jz .673
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_148
	mov rdi, 41
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.673:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1520
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1520:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 67
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .675
	mov rbx, 1
	push rbx
	jmp .677
.675:
	mov rbx, 2
	push rbx
.677:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1521
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1521:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 16
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	push rsi
	test rax, rax
	jz .678
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_149
	mov rdi, 38
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.678:
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
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .680
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_150
	mov rdi, 36
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.680:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1522
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1522:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .682
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1523
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1523:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .684
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
.684:
.682:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1524
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1524:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 3
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .686
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_151
	mov rdi, 40
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.686:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1525
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1525:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _global_token_stream
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, 67
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	push rsi
	test rax, rax
	jz .688
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1526
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1526:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	jmp .690
.688:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1527
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1527:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 8
	imul rsi, rbx
	push rsi
.690:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.fn_complex_body_tokens:
	sub rsp, 308
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1528
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1528:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, rbx
	mov rdi, 67
	mov r8, rax
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, 68
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	or rdi, rax
	mov rax, rdi
	push r8
	test rax, rax
	jz .691
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
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	xor rax, rax
	cmp r8, r9
	setne al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .693
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.695:
	mov rbx, 1
	mov rax, rbx
	test rax, rax
	jz .696
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_var_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1529
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_178
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1529:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_var_context
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
	pop rax
	test rax, rax
	jz .697
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_179
	mov rdi, 23
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.697:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .699
	jmp .696
.699:
	pop rbx
	dec rbx
	push rbx
	jmp .695
.696:
	add rsp, 8
.693:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 24], rsi
	pop rdi
	mov r8, qword _global_function_context
	mov r9, qword [r8 + 0]
	mov r8, 24
	add r9, r8
	mov rax, r9
	mov eax, [rax]
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 2
	sub r9, r8
	push rbx
	push rax
	push r9
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	add rsi, rbx
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 24
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	add rax, rdi
	mov rbx, rax
	mov rax, rbx
	mov dword [rsi], eax
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov rax, rbx
	mov byte [rsi], al
	jmp .692
.691:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .702
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rax, rax
	cmp r8, r9
	setae al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .703
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_181
	mov rdi, 31
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.703:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1530
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1530:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .705
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_182
	mov rdi, 23
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.705:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1531
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1531:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .707
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1532
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_178
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1532:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	mov rax, rdi
	mov eax, [rax]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .709
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_183
	mov rdi, 24
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .710
.709:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 2
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .712
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 8
	mov rsi, rax
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 64], rax
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test rax, rax
	jz .713
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_184
	mov rdi, 65
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.713:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	sub rsi, rdi
	mov rbx, qword _global_sp.len
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
	mov rax, r10
	mov eax, [rax]
	or r9, rax
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .710
.712:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1533
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_185
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1533:
.715:
.710:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
.707:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .716
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .718
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1534
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1534:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 72]
	mov rax, rdi
	mov eax, [rax]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .720
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_186
	mov rdi, 24
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .721
.720:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 2
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .723
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 8
	mov rsi, rax
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rax
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test rax, rax
	jz .724
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_187
	mov rdi, 65
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.724:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	sub rsi, rdi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, 7
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 40]
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .721
.723:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1535
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_188
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1535:
.726:
.721:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
.718:
.716:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .727
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_189
	mov rdi, 21
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.727:
	jmp .692
.702:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .730
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1536
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1536:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .731
	mov rbx, 16
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, rdi
	mov r8, qword _global_functions.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1537
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1537:
	mov rbx, 30
	imul rdi, rbx
	mov rbx, qword _global_functions
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .733
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_190
	mov rdi, 46
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.733:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1538
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1538:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	mov rdi, rax
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1539
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1539:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	push rdi
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.731:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .735
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .737
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1540
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_178
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1540:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 112], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 112]
	mov rax, rdi
	mov eax, [rax]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .739
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 112]
	mov rsi, 8
	add rdi, rsi
	mov rax, rdi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .740
.739:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 2
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .742
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 8
	mov rsi, rax
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
	mov rsi, rax
	mov rax, r8
	mov eax, [rax]
	or rdi, rax
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	push r9
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .740
.742:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1541
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_191
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1541:
.743:
.740:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.737:
.735:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .744
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .746
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1542
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1542:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 128]
	mov rax, rdi
	mov eax, [rax]
	mov rbx, 1
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .748
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _global_pos
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
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .749
.748:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 2
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .751
	mov rbx, 8
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _global_pos
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
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 8
	mov rsi, rax
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	push rax
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .749
.751:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1543
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_192
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1543:
.752:
.749:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.746:
.744:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .753
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .755
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .757
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, 1
	mov r8, qword [_rs_p]
	mov qword [r8 + 104], rdi
.757:
.755:
.753:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .759
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_193
	mov rdi, 33
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.759:
	jmp .692
.730:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .762
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .763
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_194
	mov rdi, 45
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.763:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 144], r8
	mov r10, 3
	mov r11, qword _global_sp.len
	mov r12, qword [r11 + 0]
	mov r11, 0
	mov r13, qword _global_pos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 144]
	mov r13, qword _global_label_c
	mov rcx, qword [r13 + 0]
	mov r13, rcx
	inc r13
	mov rdx, qword _global_label_c
	mov qword [rdx + 0], r13
	mov rax, qword _global_var_context.len
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
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rax, rax
	cmp r8, r9
	setae al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .765
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_196
	mov rdi, 40
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.765:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1544
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1544:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 4
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .767
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_197
	mov rdi, 39
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.767:
	jmp .692
.762:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .770
	mov rbx, qword _global_label_c
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	inc rbx
	mov rdi, qword _global_label_c
	mov qword [rdi + 0], rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 152], rsi
	mov r8, 13
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 152]
	mov r9, qword _global_pos
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
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 152]
	mov r8, 0
	mov r11, qword _global_var_context.len
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
	jmp .692
.770:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .772
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .773
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_198
	mov rdi, 26
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.773:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	push rdi
.775:
	mov rbx, 1
	mov rax, rbx
	test rax, rax
	jz .776
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1545
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1545:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_scope_context
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 168], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 168]
	mov rax, r8
	mov eax, [rax]
	mov rdi, 9
	mov r8, rax
	xor rax, rax
	cmp r8, rdi
	sete al
	mov rdi, rax
	mov rax, rdi
	push rbx
	test rax, rax
	jz .777
	mov rbx, 12
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 168]
	mov rsi, 16
	add rdi, rsi
	mov rax, rdi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	jmp .776
.777:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .779
	jmp .776
.779:
	pop rbx
	dec rbx
	push rbx
	jmp .775
.776:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 160]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .781
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_199
	mov rdi, 26
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.781:
	jmp .692
.772:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .784
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .785
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_200
	mov rdi, 26
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.785:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 176], rbx
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	push rdi
.787:
	mov rbx, 1
	mov rax, rbx
	test rax, rax
	jz .788
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1546
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1546:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_scope_context
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, 9
	mov rdi, rax
	xor rax, rax
	cmp rdi, rsi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .789
	pop rbx
	mov rsi, rbx
	dec rsi
	mov rdi, rsi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1547
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1547:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_scope_context
	add rsi, rdi
	mov rdi, rsi
	mov rax, rdi
	mov eax, [rax]
	mov rdi, 8
	mov r8, rax
	xor rax, rax
	cmp r8, rdi
	sete al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1548
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_201
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1548:
	mov rdi, 12
	mov r8, 16
	add rsi, r8
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push rbx
	push r8
	push rdi
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 176], rbx
	jmp .788
.789:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .791
	jmp .788
.791:
	pop rbx
	dec rbx
	push rbx
	jmp .787
.788:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 176]
	mov rax, rsi
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .793
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_202
	mov rdi, 26
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.793:
	jmp .692
.784:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .796
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .797
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1549
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1549:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1550
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1550:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, 8
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .799
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .801
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_203
	mov rdi, 45
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.801:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 184], r8
	mov r10, 9
	mov r11, qword _global_sp.len
	mov r12, qword [r11 + 0]
	mov r11, 0
	mov r13, qword _global_pos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 184]
	mov r13, 0
	mov rcx, qword _global_var_context.len
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
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .800
.799:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .804
	mov rbx, qword [_rs_p]
	add rbx, 192
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor rax, rax
	cmp rdi, rsi
	setne al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1551
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1551:
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rsi, r9
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1552
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1552:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_scope_context
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
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_sp.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor rax, rax
	cmp r8, rdi
	sete al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .805
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_204
	mov rdi, 50
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.805:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 220], r8
	mov r10, 7
	mov r11, qword [_rs_p]
	add r11, 192
	mov r12, 4
	add r11, r12
	mov rax, r11
	mov eax, [rax]
	mov r11, qword [_rs_p]
	add r11, 192
	mov r12, 8
	add r11, r12
	mov r12, rax
	mov rax, r11
	mov eax, [rax]
	mov r11, qword _global_pos
	mov r13, qword [r11 + 0]
	mov r11, qword [_rs_p]
	mov r14, qword [r11 + 220]
	mov r11, qword [_rs_p]
	add r11, 192
	mov r15, 20
	add r11, r15
	mov r15, rax
	mov rax, r11
	mov eax, [rax]
	mov r11, qword _global_var_context.len
	mov rcx, qword [r11 + 0]
	push r10
	push r12
	push r15
	push r13
	push r14
	push rax
	push rcx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 220]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .800
.804:
	mov rbx, 1
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, 0
	mov r11, qword _global_var_context.len
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
.807:
.800:
	add rsp, 8
	jmp .808
.797:
	mov rbx, 1
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, 0
	mov r11, qword _global_var_context.len
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
.808:
	jmp .692
.796:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .810
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .811
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor rax, rax
	cmp rdi, rsi
	setne al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1553
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1553:
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rsi, r9
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1554
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1554:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_scope_context
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
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 24
	add rdi, r8
	mov rax, rdi
	mov eax, [rax]
	mov rdi, qword _global_var_context.len
	mov qword [rdi + 0], rax
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, rax
	mov rax, r8
	mov eax, [rax]
	mov r8, rax
	mov r10, 9
	mov r11, rax
	xor rax, rax
	cmp r8, r10
	sete al
	mov r8, rax
	mov rax, r8
	push r11
	test rax, rax
	jz .813
	mov rbx, qword [_rs_p]
	add rbx, 256
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor rax, rax
	cmp rdi, rsi
	setne al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1555
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1555:
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rsi, r9
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1556
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1556:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_scope_context
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
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 256
	mov r9, 16
	add r8, r9
	mov rax, r8
	mov eax, [rax]
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	push r9
	push rdi
	push rax
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
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .814
.813:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .816
	jmp .814
.816:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .818
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 4
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .819
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, _slit_205
	mov rsi, 84
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .820
.819:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 4
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .822
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, _slit_206
	mov rsi, 84
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.822:
.820:
	jmp .814
.818:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .824
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, rax
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1557
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1557:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 16
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .825
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 284], r8
	mov r10, 5
	mov r11, qword _global_sp.len
	mov r12, qword [r11 + 0]
	mov r11, qword _global_sp.len
	mov r13, qword [r11 + 0]
	mov r11, qword _global_pos
	mov r14, qword [r11 + 0]
	mov r11, qword [_rs_p]
	mov r15, qword [r11 + 284]
	mov r11, 4294967295
	mov rcx, qword _global_var_context.len
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
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rax
	mov rsi, 12
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 284]
	mov rdi, qword _global_pos
	mov r9, qword [rdi + 0]
	push r9
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rax, rax
	cmp r8, r9
	setae al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .827
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_207
	mov rdi, 42
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.827:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1558
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1558:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 4
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .829
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_208
	mov rdi, 41
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.829:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .826
.825:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, rax
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1559
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1559:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 17
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .832
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, 6
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 4
	add r8, r9
	mov rax, r8
	mov eax, [rax]
	mov r8, qword _global_sp.len
	mov r9, qword [r8 + 0]
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	mov r8, qword _global_label_c
	mov r11, qword [r8 + 0]
	mov r8, r11
	inc r8
	mov r12, qword _global_label_c
	mov qword [r12 + 0], r8
	mov r13, qword [_rs_p]
	add r13, 228
	mov r14, 20
	add r13, r14
	mov r14, rax
	mov rax, r13
	mov eax, [rax]
	mov r13, qword _global_var_context.len
	mov r15, qword [r13 + 0]
	push rdi
	push r14
	push r9
	push r10
	push r11
	push rax
	push r15
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rax
	mov rsi, 12
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 20
	add rdi, r8
	mov r8, rax
	mov rax, rdi
	mov eax, [rax]
	mov rdi, qword _global_pos
	mov r9, qword [rdi + 0]
	push r9
	push rsi
	push rax
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
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .826
.832:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, rax
	xor rax, rax
	cmp rbx, rsi
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .834
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_209
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.834:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.833:
.826:
	jmp .814
.824:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .837
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, rax
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1560
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1560:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, 17
	mov r8, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, 16
	mov rsi, rax
	xor rax, rax
	cmp r8, rbx
	sete al
	or rsi, rax
	and rdi, rsi
	mov rax, rdi
	test rax, rax
	jz .838
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, r8
	mov r9, qword _global_token_stream.len
	mov r10, qword [r9 + 0]
	xor rax, rax
	cmp rdi, r10
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1561
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1561:
	mov rdi, 28
	imul r8, rdi
	mov rdi, qword _global_token_stream
	add r8, rdi
	mov rdi, 16
	add r8, rdi
	mov rax, r8
	mov eax, [rax]
	mov rdi, rax
	mov r8, 17
	mov r9, rax
	xor rax, rax
	cmp rdi, r8
	sete al
	mov rdi, rax
	mov rax, rdi
	push r9
	test rax, rax
	jz .840
	mov rbx, 6
	push rbx
	jmp .841
.840:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .843
	mov rbx, 5
	push rbx
	jmp .841
.843:
	mov rbx, 0
	mov rsi, 0
	mov rax, rsi
	test al, al
	jnz .1562
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_210
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.1562:
	push rbx
.844:
.841:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 4
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 8
	add rsi, rdi
	mov rdi, rax
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	mov rsi, qword _global_label_c
	mov r9, qword [rsi + 0]
	mov rsi, r9
	inc rsi
	mov r10, qword _global_label_c
	mov qword [r10 + 0], rsi
	mov r11, qword [_rs_p]
	add r11, 228
	mov r12, 20
	add r11, r12
	mov r12, rax
	mov rax, r11
	mov eax, [rax]
	mov r11, qword _global_var_context.len
	mov r13, qword [r11 + 0]
	push rbx
	push rdi
	push r12
	push r8
	push r9
	push rax
	push r13
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 8
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, rax
	xor rax, rax
	cmp rbx, rsi
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .845
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_211
	mov rdi, 55
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.845:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rax
	mov rsi, 12
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 20
	add rdi, r8
	mov r8, rax
	mov rax, rdi
	mov eax, [rax]
	mov rdi, qword _global_pos
	mov r9, qword [rdi + 0]
	push r9
	push rsi
	push rax
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
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1563
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1563:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 16
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .847
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rax, rax
	cmp r8, r9
	setae al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .849
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_212
	mov rdi, 42
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.849:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1564
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1564:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 4
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .851
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_213
	mov rdi, 41
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.851:
.847:
	jmp .853
.838:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 8
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, rax
	xor rax, rax
	cmp rbx, rsi
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .854
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_214
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.854:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
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
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.853:
	jmp .814
.837:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .857
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 8
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .858
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, _slit_215
	mov rsi, 94
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .859
.858:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 8
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .861
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, _slit_216
	mov rsi, 94
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.861:
.859:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 20
	add rbx, rsi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, 4294967295
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .862
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 20
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rdi
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.862:
	jmp .814
.857:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1565
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_217
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1565:
.864:
.814:
	add rsp, 8
	jmp .865
.811:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 20
	add rsi, rbx
	mov rbx, qword _global_ir_stream.len
	mov rdi, qword [rbx + 0]
	mov rax, rdi
	mov dword [rsi], eax
	mov rbx, 15
	mov rsi, qword _global_function_context_idx
	mov rdi, qword [rsi + 0]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .866
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, qword _global_ir_stream.len
	mov rdi, qword [rsi + 0]
	mov rsi, rax
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1566
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1566:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_218
	mov rsi, 27
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .867
.866:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .869
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, qword _global_ir_stream.len
	mov rdi, qword [rsi + 0]
	mov rsi, rax
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1567
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1567:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_219
	mov rsi, 49
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.869:
.867:
	mov rbx, 0
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, 0
	mov r8, qword _global_var_context.len
	mov qword [r8 + 0], rdi
	mov r9, 0
	mov r10, qword _global_function_context
	mov qword [r10 + 0], r9
	mov r11, 18446744073709551615
	mov r12, qword _global_function_context_idx
	mov qword [r12 + 0], r11
.865:
	jmp .692
.810:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .871
	mov rbx, 15
	mov rsi, qword _global_function_context_idx
	mov rdi, qword [rsi + 0]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .872
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, qword _global_ir_stream.len
	mov rdi, qword [rsi + 0]
	mov rsi, rax
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1568
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1568:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_220
	mov rsi, 27
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .873
.872:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .875
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, qword _global_ir_stream.len
	mov rdi, qword [rsi + 0]
	mov rsi, rax
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1569
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1569:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_221
	mov rsi, 49
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.875:
.873:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .876
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1570
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1570:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1571
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1571:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 3
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .878
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1572
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1572:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1573
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1573:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rax
.878:
.876:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov rax, rbx
	mov byte [rsi], al
	jmp .692
.871:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .881
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 292], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor rax, rax
	cmp r9, r10
	setae al
	mov r8, rax
	mov rax, r8
	test rax, rax
	jz .882
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, _slit_222
	mov rdi, 41
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.882:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1574
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1574:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 16
	add rbx, rdi
	mov rax, rbx
	mov eax, [rax]
	mov rbx, 3
	mov rdi, rax
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	push rsi
	test rax, rax
	jz .884
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_223
	mov rdi, 52
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.884:
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 300], rsi
	mov rbx, 2
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 300]
	mov rdi, qword _global_sp.len
	mov r9, qword [rdi + 0]
	add r8, r9
	mov rdi, 0
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 292]
	mov r9, 0
	mov r11, 0
	mov r12, qword _global_var_context.len
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
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1575
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1575:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 4
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .886
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_224
	mov rdi, 49
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.886:
	jmp .692
.881:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .889
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rsi, r9
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1576
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1576:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 20
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword _global_pos
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
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .692
.889:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .891
	mov rbx, 50
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.891:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .893
	mov rbx, 51
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.893:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .895
	mov rbx, 52
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.895:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .897
	mov rbx, 53
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.897:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .899
	mov rbx, 54
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.899:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .901
	mov rbx, 55
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.901:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .903
	mov rbx, 56
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.903:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .905
	mov rbx, 57
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.905:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .907
	mov rbx, 18
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.907:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .909
	mov rbx, 58
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.909:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .911
	mov rbx, 59
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.911:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .913
	mov rbx, 60
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.913:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .915
	mov rbx, 61
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.915:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .917
	mov rbx, 62
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.917:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .919
	mov rbx, 63
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.919:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .921
	mov rbx, 64
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .692
.921:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .923
	mov rbx, 9
	mov rsi, 0
	mov rdi, qword _global_pos
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
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .692
.923:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .925
	mov rbx, 10
	mov rsi, 0
	mov rdi, qword _global_pos
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
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .692
.925:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_225
	mov rdi, 28
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.926:
.692:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 308
	ret
parse.assert:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .927
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_165
	mov rdi, 42
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.927:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 2
	add r9, r8
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor rax, rax
	cmp r9, r10
	setb al
	mov r8, rax
	mov rax, r8
	test rax, rax
	jz .929
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1577
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1577:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 6
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, rax
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1578
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1578:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 2
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .931
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
.931:
.929:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_166
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
	mov rax, rdi
	test rax, rax
	jz .933
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _slit_174
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
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1579
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1579:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _global_token_stream
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
	mov rbx, _slit_175
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
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	jmp .935
.933:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _slit_176
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
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.935:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.fn_body_tokens:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1580
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1580:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, 10
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .936
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .937
.936:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .939
	mov rbx, 2
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rsi, r9
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1581
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1581:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 20
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword _global_pos
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
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .937
.939:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .941
	mov rbx, 19
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.941:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .943
	mov rbx, 20
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.943:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .945
	mov rbx, 21
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.945:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .947
	mov rbx, 22
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.947:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .949
	mov rbx, 23
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.949:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .951
	mov rbx, 24
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.951:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .953
	mov rbx, 25
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.953:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .955
	mov rbx, 26
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.955:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .957
	mov rbx, 27
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.957:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .959
	mov rbx, 28
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.959:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .961
	mov rbx, 29
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.961:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .963
	mov rbx, 30
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.963:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .965
	mov rbx, 31
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.965:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .967
	mov rbx, 65
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.967:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .969
	mov rbx, 32
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.969:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .971
	mov rbx, 33
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.971:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .973
	mov rbx, 34
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.973:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .975
	mov rbx, 35
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.975:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .977
	mov rbx, 36
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.977:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .979
	mov rbx, 37
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.979:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .981
	mov rbx, 38
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.981:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .983
	mov rbx, 39
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.983:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .985
	mov rbx, 40
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.985:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .987
	mov rbx, 41
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.987:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .989
	mov rbx, 42
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.989:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .991
	mov rbx, 43
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.991:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .993
	mov rbx, 44
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.993:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .995
	mov rbx, 45
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.995:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .997
	mov rbx, 46
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.997:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .999
	mov rbx, 47
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.999:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1001
	mov rbx, 48
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.1001:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1003
	mov rbx, 49
	mov rsi, 0
	mov rdi, qword _global_pos
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
	jmp .937
.1003:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1005
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1007
.1005:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1582
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1582:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 9
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1008
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_226
	mov rdi, 62
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1008:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_227
	mov rdi, 33
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1007:
.1004:
.937:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.const_expression:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor rax, rax
	cmp r9, r10
	setae al
	mov r8, rax
	mov rax, r8
	test rax, rax
	jz .1010
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_119
	mov rdi, 47
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1010:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1583
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1583:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1012
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_123
	mov rdi, 50
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1012:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1584
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1584:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1014
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_125
	mov rdi, 60
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1014:
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
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	pop rbx
	push rax
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	pop rbx
	or rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1016
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_128
	mov rdi, 61
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1016:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1585
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1585:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 4
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1018
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_129
	mov rdi, 43
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1018:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword _global_ir_stream.len
	mov rdi, qword [rbx + 0]
	mov rbx, qword _global_pos
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
	mov rsi, qword _global_is_still_evaluating_constant
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_sp.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor rax, rax
	cmp r8, rdi
	sete al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1586
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_131
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1586:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.parse:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	mov rsi, qword _global_main_fn_idx
	mov qword [rsi + 0], rbx
	mov rdi, 0
	mov r8, qword _global_pos
	mov qword [r8 + 0], rdi
.1020:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1021
	mov rbx, qword _global_is_still_evaluating_constant
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	and rdi, rax
	mov rax, rdi
	test rax, rax
	jz .1022
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1587
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1587:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, 9
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .1024
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1025
.1024:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1027
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1025
.1027:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 67
	xor rax, rax
	cmp rdi, r8
	sete al
	mov rdi, 68
	mov r8, rax
	xor rax, rax
	cmp rsi, rdi
	sete al
	or r8, rax
	mov rax, r8
	push rbx
	test rax, rax
	jz .1029
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
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	pop rbx
	push rax
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rsi
	xor rax, rax
	cmp rsi, rbx
	setne al
	pop rbx
	or rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1030
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_152
	mov rdi, 33
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1030:
	pop rbx
	pop rsi
	mov rdi, 0
	mov r8, qword _global_pos
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
	jmp .1025
.1029:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_154
	mov rdi, 22
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1032:
.1025:
	add rsp, 8
	jmp .1033
.1022:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1034
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1588
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1588:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, 5
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .1036
	mov rbx, 0
	mov rsi, qword _global_const_stack.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor rax, rax
	cmp r8, rdi
	setne al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1589
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1589:
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	mov rdi, r8
	mov r9, qword _global_toplevel_constants.len
	mov r10, qword [r9 + 0]
	xor rax, rax
	cmp rdi, r10
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1590
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1590:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _global_toplevel_constants
	add r8, rdi
	mov rdi, 8
	add r8, rdi
	mov rax, r8
	mov eax, [rax]
	push rax
.1038:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1039
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval_one_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rax
	test al, al
	jnz .1591
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_160
	mov rdx, 78
	syscall
	mov rdi, 1
	jmp _exit
.1591:
	pop rbx
	inc rbx
	push rbx
	jmp .1038
.1039:
	add rsp, 8
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1040
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1592
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1592:
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1593
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1593:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_toplevel_constants
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_161
	mov rsi, 40
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1040:
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1042
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1594
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1594:
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1595
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1595:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_toplevel_constants
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, _slit_162
	mov rsi, 64
	push rax
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1042:
	mov rbx, 0
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor rax, rax
	cmp r8, rdi
	setne al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1596
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1596:
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	mov rdi, r8
	mov r9, qword _global_toplevel_constants.len
	mov r10, qword [r9 + 0]
	xor rax, rax
	cmp rdi, r10
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1597
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1597:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _global_toplevel_constants
	add r8, rdi
	mov rdi, 8
	add r8, rdi
	mov rax, r8
	mov eax, [rax]
	mov rdi, qword _global_ir_stream.len
	mov qword [rdi + 0], rax
	mov r8, qword _global_toplevel_constants.len
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, rax
	xor rax, rax
	cmp r9, r8
	setne al
	mov r8, rax
	mov rax, r8
	test al, al
	jnz .1598
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1598:
	mov r8, qword _global_toplevel_constants.len
	mov r9, qword [r8 + 0]
	mov r8, 1
	sub r9, r8
	mov r8, r9
	mov r11, qword _global_toplevel_constants.len
	mov r12, qword [r11 + 0]
	xor rax, rax
	cmp r8, r12
	setb al
	mov r8, rax
	mov rax, r8
	test al, al
	jnz .1599
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1599:
	mov r8, 24
	imul r9, r8
	mov r8, qword _global_toplevel_constants
	add r9, r8
	mov r8, 16
	add r9, r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rax
	pop rdi
	mov qword [rdi], rax
	mov rdi, 0
	mov r8, qword _global_is_still_evaluating_constant
	mov qword [r8 + 0], rdi
	mov r9, qword _global_const_stack.len
	mov r10, qword [r9 + 0]
	mov r9, 0
	xor rax, rax
	cmp r10, r9
	sete al
	mov r9, rax
	mov rax, r9
	test al, al
	jnz .1600
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_163
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1600:
	jmp .1037
.1036:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1045
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1601
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1601:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1046
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	jmp .1048
.1046:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_164
	mov rdi, 25
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1048:
	jmp .1037
.1045:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1049:
.1037:
	add rsp, 8
	jmp .1050
.1034:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1050:
.1033:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	jmp .1020
.1021:
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1602
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_228
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1602:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1603
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_229
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1603:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1051
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_230
	mov rdi, 32
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1051:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1053
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_231
	mov rdi, 60
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1053:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
fwrite_buffer.assert_len:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1048576
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1604
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_236
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1604:
	mov rsi, qword _global_fwrite_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, 1048576
	xor rax, rax
	cmp rbx, rsi
	setae al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1055
	mov rbx, qword _global_fwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_fwrite_buffer
	mov rdi, qword _global_fwrite_buffer.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	mov rax, rdi
	mov rdx, r8
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1605
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_237
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1605:
	mov rbx, 0
	mov rsi, qword _global_fwrite_buffer.len
	mov qword [rsi + 0], rbx
.1055:
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
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_fwrite_buffer
	add rsi, rbx
	pop rbx
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_fwrite_buffer.len
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
	mov r8, qword _global_fwrite_buffer
	mov r9, qword _global_fwrite_buffer.len
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
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	pop rbx
	add rbx, rsi
	mov rsi, qword _global_fwrite_buffer.len
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
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1057
	mov rbx, _slit_274
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1057:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1060
	mov rbx, _slit_275
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1060:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1062
	mov rbx, _slit_276
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1062:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1064
	mov rbx, _slit_277
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1064:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1066
	mov rbx, _slit_278
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1066:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1068
	mov rbx, _slit_279
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1068:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1070
	mov rbx, _slit_280
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1058
.1070:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1071:
.1058:
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
.1072:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1073
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rax, rax
	mov al, [rsi]
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call write_remap_ch
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1072
.1073:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
slits_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_slits.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1606
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_233
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1606:
	mov rbx, qword _global_slits
	mov rsi, qword _global_slits.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov rax, rsi
	mov dword [rbx], eax
	mov rbx, qword _global_slits.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_slits.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
dce.recurse_function:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1607
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1607:
	mov rsi, 30
	imul rbx, rsi
	mov rsi, qword _global_functions
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 28
	add rdi, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rdi], al
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 20
	add rdi, rsi
	mov rax, rdi
	mov eax, [rax]
	mov rsi, 1
	add rax, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 16
	add rdi, rsi
	mov rsi, rax
	mov rax, rdi
	mov eax, [rax]
	sub rsi, rax
	mov rdi, 12
	xor rax, rax
	cmp rsi, rdi
	setae al
	mov rsi, rax
	mov rax, rsi
	test rax, rax
	jz .1074
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov rax, rbx
	mov byte [rsi], al
.1074:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rax
.1076:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 20
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1077
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1608
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1608:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, rax
	mov rsi, 16
	mov rdi, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	push rdi
	test rax, rax
	jz .1078
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1609
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1609:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1610
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1610:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, 28
	add rsi, rbx
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1080
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1611
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1611:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.1080:
	jmp .1079
.1078:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1
	xor rax, rax
	cmp rdi, r8
	sete al
	mov rdi, 17
	mov r8, rax
	xor rax, rax
	cmp rsi, rdi
	sete al
	or r8, rax
	mov rax, r8
	push rbx
	test rax, rax
	jz .1083
	mov rbx, qword _global_slits.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1612
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1612:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _global_ir_stream
	add rdi, rbx
	mov rbx, 8
	add rdi, rbx
	mov rdi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call slits_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1613
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1613:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov rax, rbx
	mov qword [rsi], rax
.1083:
.1079:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1076
.1077:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1614
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1614:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 15
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1615
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_234
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1615:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
Reg.64.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1086
	mov rbx, _slit_257
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1086:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1089
	mov rbx, _slit_258
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1089:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1091
	mov rbx, _slit_259
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1091:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1093
	mov rbx, _slit_260
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1093:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1095
	mov rbx, _slit_261
	mov rsi, 2
	push rbx
	push rsi
	jmp .1087
.1095:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1097
	mov rbx, _slit_262
	mov rsi, 2
	push rbx
	push rsi
	jmp .1087
.1097:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1099
	mov rbx, _slit_263
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1099:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1101
	mov rbx, _slit_264
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1101:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1103
	mov rbx, _slit_265
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1103:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1105
	mov rbx, _slit_266
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1105:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1107
	mov rbx, _slit_267
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1107:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1109
	mov rbx, _slit_268
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1109:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1111
	mov rbx, _slit_269
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1111:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1113
	mov rbx, _slit_270
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1113:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	mov rax, rdi
	test al, al
	jnz .1616
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_271
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1616:
	push rbx
	push rsi
.1114:
.1087:
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1617
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1617:
	mov rsi, qword _global_rallocator_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 2048
	xor rax, rax
	cmp rdi, rsi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1618
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_315
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1618:
	mov rsi, qword _global_rallocator_stack
	mov rdi, qword _global_rallocator_stack.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
rallocator_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1619
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_299
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1619:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, qword _global_rallocator_stack
	add rsi, rbx
	xor rax, rax
	mov al, [rsi]
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_ffs:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1202:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1203
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rsi, rax
	mov rax, rsi
	test rax, rax
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1204
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1204:
	pop rbx
	inc rbx
	push rbx
	jmp .1202
.1203:
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
.1206:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1207
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, rax
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1208
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1208:
	pop rbx
	inc rbx
	push rbx
	jmp .1206
.1207:
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
.1210:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1211
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack
	add rsi, rdi
	xor rax, rax
	mov al, [rsi]
	mov rsi, _slit_256
	mov rdi, 6
	push rbx
	push rax
	push rsi
	push rdi
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
	jmp .1210
.1211:
	add rsp, 8
	mov rbx, 0
	mov rsi, qword _global_rallocator_stack.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_rallocator_mask
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
	xor rax, rax
	cmp rdi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1212
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1214
.1212:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.1214:
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
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1620
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_294
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1620:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	xor rax, rax
	mov al, [rdi]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1215
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
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1621
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1621:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	mov rbx, 1
	mov rax, rbx
	mov byte [rdi], al
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1622
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1622:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rdi], al
	mov rbx, _slit_297
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
	mov rbx, _slit_298
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
	xor rax, rax
	cmp rdi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1217
	mov rbx, qword _global_rallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rax, rdi
	mov byte [rbx], al
.1217:
.1215:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
r_pop:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1219
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	jmp .1221
.1219:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_327
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
.1221:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor rax, rax
	cmp rdi, r8
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1623
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1623:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov rax, rdi
	mov byte [rsi], al
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
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1624
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_294
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1624:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	xor rax, rax
	mov al, [rdi]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1222
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1222:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1224
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	pop r8
	mov qword [rdi + 8], r8
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 8]
	mov rdi, qword [_rs_p]
	mov r10, qword [rdi + 0]
	xor rax, rax
	cmp r9, r10
	sete al
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	jz .1226
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1226:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1625
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1625:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, _slit_300
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
	mov rbx, _slit_301
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
	jmp .1228
.1224:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1626
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_294
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1626:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1627
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1627:
	mov rbx, _slit_303
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
.1228:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1628
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1628:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 1
	mov rax, rbx
	mov byte [rsi], al
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
r_top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1229
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1231
.1229:
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1629
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1629:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_323
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
.1231:
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1630
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1630:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_387
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
	mov rbx, _slit_388
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1631
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1631:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_319
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
	mov rbx, _slit_320
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
gen_range:
	sub rsp, 152
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
.1232:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1233
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1632
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1632:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rbx, r9
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1633
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1633:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _global_ir_stream
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, rax
	mov rdi, 13
	mov r8, rax
	xor rax, rax
	cmp rbx, rdi
	sete al
	mov rbx, rax
	mov rax, rbx
	push r8
	test rax, rax
	jz .1234
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
	jmp .1235
.1234:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1237
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1634
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_272
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1634:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1635
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1635:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 28
	add rdi, rbx
	xor rax, rax
	mov al, [rdi]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	sete al
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 29
	add rdi, rbx
	mov rbx, rax
	xor rax, rax
	mov al, [rdi]
	mov rdi, rax
	mov rax, rdi
	test rax, rax
	sete al
	or rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1238
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 20
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rax
	jmp .1240
.1238:
	mov rbx, qword _global_is_object_file
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1241
	mov rbx, _slit_273
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
.1241:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_281
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
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 0
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1243
	mov rbx, _slit_282
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
	mov rax, rsi
	mov eax, [rax]
	push rax
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
.1243:
	mov rbx, _slit_283
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
	mov rbx, _slit_284
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
.1240:
	jmp .1235
.1237:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1246
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1636
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1636:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, _slit_285
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
	mov rbx, _slit_286
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
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 0
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1247
	mov rbx, _slit_287
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
	mov rax, rsi
	mov eax, [rax]
	push rax
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
.1247:
	mov rbx, _slit_288
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
	jmp .1235
.1246:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1250
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1637
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1637:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 20
	add rdi, rbx
	mov rax, rdi
	mov eax, [rax]
	mov rbx, 1
	add rax, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 16
	add rdi, rbx
	mov rbx, rax
	mov rax, rdi
	mov eax, [rax]
	sub rbx, rax
	mov rdi, 2
	xor rax, rax
	cmp rbx, rdi
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1251
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 29
	add rsi, rbx
	xor rax, rax
	mov al, [rsi]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1253
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 16
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 1
	add rax, rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 20
	add rsi, rbx
	mov rbx, rax
	mov rax, rsi
	mov eax, [rax]
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1255
.1253:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_289
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
	mov rbx, _slit_290
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
	mov rbx, _slit_291
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
	mov rbx, _slit_292
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
	mov rbx, _slit_293
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
.1255:
.1251:
	jmp .1235
.1250:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1257
	mov rbx, qword _global_label_c
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	inc rbx
	mov rdi, qword _global_label_c
	mov qword [rdi + 0], rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 64], rsi
	mov r8, 13
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_304
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
	mov rbx, _slit_305
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
	mov rbx, _slit_306
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
	mov rbx, _slit_307
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
	mov rbx, _slit_308
	mov rsi, 16
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
	mov rbx, _slit_309
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
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1638
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_310
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1638:
	mov rbx, 8
	imul rsi, rbx
	mov rbx, qword _global_slits
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
	mov rbx, _slit_311
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
	mov rbx, _slit_312
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
	mov rbx, _slit_313
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
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1639
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1639:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1257:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1259
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1640
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1640:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, 1024
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1641
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_310
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1641:
	mov rbx, 8
	imul rsi, rbx
	mov rbx, qword _global_slits
	add rsi, rbx
	mov rsi, [rsi]
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1235
.1259:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1261
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1235
.1261:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1263
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1642
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1642:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_321
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
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1264
	mov rbx, _slit_322
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
	mov rbx, _slit_324
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
.1264:
	jmp .1235
.1263:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1267
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
	xor rax, rax
	cmp rdi, r8
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1643
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1643:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov rax, rdi
	mov byte [rsi], al
	mov rsi, qword [_rs_p]
	mov qword [rsi + 88], rbx
	mov rsi, _slit_325
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
	mov rbx, _slit_326
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
.1268:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 80]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1269
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
	mov rdi, _slit_328
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
	mov rbx, _slit_329
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
	mov rbx, _slit_330
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
	jmp .1268
.1269:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1644
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1644:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1267:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1271
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
	xor rax, rax
	cmp rdi, r8
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1645
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1645:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov rax, rdi
	mov byte [rsi], al
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
	mov rsi, _slit_331
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
	mov rbx, _slit_332
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
.1272:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 104]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1273
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1646
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1646:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_333
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
	mov rbx, _slit_334
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
	mov rbx, _slit_335
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
	jmp .1272
.1273:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1647
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1647:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1271:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1275
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1648
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1648:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_336
	mov rsi, 14
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
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1649
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1649:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
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
	jmp .1235
.1275:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1277
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor rax, rax
	cmp rdi, r8
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1650
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1650:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov rax, rdi
	mov byte [rsi], al
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rsi, _slit_337
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
	mov rbx, _slit_338
	mov rsi, 16
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
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1651
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1651:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
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
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1652
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1652:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 8
	mov rsi, rax
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rax
	mov rbx, 0
	push rbx
.1278:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 128]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1279
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
	mov rbx, _slit_339
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
	mov rbx, _slit_340
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
	mov rbx, _slit_341
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
	jmp .1278
.1279:
	add rsp, 8
	jmp .1235
.1277:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1281
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor rax, rax
	cmp rdi, r8
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1653
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1653:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov rax, rdi
	mov byte [rsi], al
	mov rsi, qword [_rs_p]
	mov qword [rsi + 136], rbx
	mov rsi, _slit_342
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
	mov rbx, _slit_343
	mov rsi, 16
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
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1654
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1654:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
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
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rbx, r8
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1655
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1655:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rax, rsi
	mov eax, [rax]
	mov rbx, 8
	mov rsi, rax
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 144], rax
	mov rbx, 0
	push rbx
.1282:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 144]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1283
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1656
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1656:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_344
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
	mov rbx, _slit_345
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
	mov rbx, _slit_346
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
	jmp .1282
.1283:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1657
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1657:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1281:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1285
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_347
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
	mov rbx, _slit_348
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
	mov rbx, _slit_349
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
	mov rbx, _slit_350
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
	mov rbx, _slit_351
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1658
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1658:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1285:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1287
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_352
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
	mov rbx, _slit_353
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
	mov rbx, _slit_354
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
	mov rbx, _slit_355
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1659
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1659:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1287:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1289
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_356
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
	mov rbx, _slit_357
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
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1660
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1660:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1289:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1291
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_358
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
	jmp .1235
.1291:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1293
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_359
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1661
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1661:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1293:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1295
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
	mov rbx, _slit_360
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
	mov rbx, _slit_361
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1662
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1662:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1663
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1663:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1295:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1297
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
	mov rbx, _slit_362
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
	mov rbx, _slit_363
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1664
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1664:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1665
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1665:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1297:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1299
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
	mov rbx, _slit_364
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
	mov rbx, _slit_365
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1666
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1666:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1667
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1667:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1299:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1301
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
	mov rbx, _slit_366
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
	mov rbx, _slit_367
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1668
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1668:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1669
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1669:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1670
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1670:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1301:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1303
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
	mov rbx, _slit_368
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
	mov rbx, _slit_369
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1671
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1671:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1672
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1672:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1673
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1673:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1303:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1305
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_370
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
	jmp .1235
.1305:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1307
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_371
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
	jmp .1235
.1307:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1309
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1674
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1674:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_372
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
	mov rbx, _slit_373
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
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1675
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1675:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1676
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1676:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1677
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1677:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1309:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1311
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
	mov rbx, _slit_374
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
	mov rbx, _slit_375
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1678
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1678:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 11
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1679
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1679:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1313
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
	mov rbx, _slit_376
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
	mov rbx, _slit_377
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1680
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1680:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 11
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1681
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1681:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1313:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1315
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_378
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
	mov rbx, _slit_379
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1682
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1682:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1315:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1317
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
	mov rbx, _slit_380
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
	mov rbx, _slit_381
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1683
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1683:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1684
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1684:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1317:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1319
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
	mov rbx, _slit_382
	mov rdi, 4
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
	mov rbx, _slit_383
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1685
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1685:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1686
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1686:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1319:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1321
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_384
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1687
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1687:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1321:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1323
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
	mov rbx, _slit_385
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
	mov rbx, _slit_386
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1688
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1688:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1689
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1689:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1323:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1325
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1690
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1690:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1691
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1691:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1325:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1327
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
	jmp .1235
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1329
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1330
	mov rbx, 1
	mov rsi, qword _global_rallocator_stack.len
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1692
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1692:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_389
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
	mov rbx, _slit_390
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
	jmp .1332
.1330:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	sub rsi, rbx
	mov rbx, qword _global_rallocator_stack
	add rsi, rbx
	xor rax, rax
	mov al, [rsi]
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1332:
	jmp .1235
.1329:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1334
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor rax, rax
	cmp rsi, rbx
	setb al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1335
	mov rbx, 2
	mov rsi, qword _global_rallocator_stack.len
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1693
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1693:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_316
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
	mov rbx, _slit_317
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_391
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
	mov rbx, _slit_392
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
	jmp .1337
.1335:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	sub rsi, rbx
	mov rbx, qword _global_rallocator_stack
	add rsi, rbx
	xor rax, rax
	mov al, [rsi]
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1337:
	jmp .1235
.1334:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1339
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1694
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1694:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1695
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1695:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1696
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1696:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1339:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1341
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1697
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1697:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1698
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1698:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1699
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1699:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1700
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1700:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1341:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1343
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	seta al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1344
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	mov r8, rdi
	mov r9, 14
	xor rax, rax
	cmp r8, r9
	setb al
	mov r8, rax
	mov rax, r8
	test al, al
	jnz .1701
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1701:
	mov r8, qword _global_rallocator_mask
	add rdi, r8
	mov r8, 0
	mov rax, r8
	mov byte [rdi], al
	jmp .1346
.1344:
	mov rbx, _slit_393
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
.1346:
	jmp .1235
.1343:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1348
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1702
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1702:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_394
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
	mov rbx, _slit_395
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
	mov rbx, _slit_396
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
	mov rbx, _slit_397
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1703
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1703:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1704
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1704:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1705
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1705:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1348:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1350
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1706
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1706:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_398
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
	mov rbx, _slit_399
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
	mov rbx, _slit_400
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
	mov rbx, _slit_401
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1707
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1707:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1708
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1708:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1709
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1709:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1350:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1352
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1710
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1710:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_402
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
	mov rbx, _slit_403
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
	mov rbx, _slit_404
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
	mov rbx, _slit_405
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1711
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1711:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1712
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1712:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1713
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1713:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1352:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1354
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1714
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1714:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_406
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
	mov rbx, _slit_407
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
	mov rbx, _slit_408
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
	mov rbx, _slit_409
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1715
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1715:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1716
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1716:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1717
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1717:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1354:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1356
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1718
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1718:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_410
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
	mov rbx, _slit_411
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
	mov rbx, _slit_412
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
	mov rbx, _slit_413
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1719
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1719:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1720
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1720:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1721
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1721:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1358
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1722
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1722:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_414
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
	mov rbx, _slit_415
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
	mov rbx, _slit_416
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
	mov rbx, _slit_417
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1723
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1723:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1724
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1724:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1725
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1725:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1358:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1360
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1726
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1726:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_418
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
	mov rbx, _slit_419
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
	mov rbx, _slit_420
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
	mov rbx, _slit_421
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1727
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1727:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1728
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1728:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1729
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1729:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1360:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1362
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1730
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1730:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_422
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
	mov rbx, _slit_423
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
	mov rbx, _slit_424
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
	mov rbx, _slit_425
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1731
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1731:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1732
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1732:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1733
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1733:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1362:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1364
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1734
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1734:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_426
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
	mov rbx, _slit_427
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
	mov rbx, _slit_428
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
	mov rbx, _slit_429
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1735
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1735:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1736
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1736:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1737
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1737:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1364:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1366
	mov rbx, 13
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1738
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1738:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
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
	mov rbx, _slit_430
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
	mov rbx, _slit_431
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
	mov rbx, _slit_432
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
	mov rbx, _slit_433
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1739
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1739:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1740
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1740:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1741
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1741:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1366:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1368
	mov rbx, 13
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
	mov rbx, _slit_434
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
	mov rbx, _slit_435
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
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1742
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1742:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1743
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1743:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1368:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1370
	mov rbx, 13
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
	mov rbx, _slit_436
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
	mov rbx, _slit_437
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
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1744
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1744:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1745
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1745:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1370:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1372
	mov rbx, 13
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
	mov rbx, _slit_438
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
	mov rbx, _slit_439
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
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1746
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1746:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1747
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1747:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1372:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1374
	mov rbx, 13
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
	mov rbx, _slit_440
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
	mov rbx, _slit_441
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
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1748
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1748:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1749
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1749:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1374:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1376
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, 13
	mov rdi, rbx
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1750
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1750:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_442
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
	mov rbx, _slit_443
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
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_444
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1751
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1751:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1752
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1752:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1376:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1378
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, 13
	mov rdi, rbx
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1753
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1753:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, _slit_445
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
	mov rbx, _slit_446
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
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_447
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1754
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1754:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor rax, rax
	cmp rbx, rdi
	setb al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1755
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1755:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov rax, rbx
	mov byte [rsi], al
	jmp .1235
.1378:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1380
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_448
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1756
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1756:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1380:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1382
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_449
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
	mov rbx, _slit_450
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
	mov rbx, _slit_451
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1757
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1757:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1382:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1384
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_452
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1758
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1758:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1384:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1386
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
	mov rbx, _slit_453
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1759
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1759:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1760
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1760:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1386:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1388
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
	mov rbx, _slit_454
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1761
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1761:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1762
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1762:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1763
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1763:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1388:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1390
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
	mov rbx, _slit_455
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1764
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1764:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1765
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1765:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1766
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1766:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1767
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1767:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1390:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1392
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
	mov rbx, _slit_456
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1768
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1768:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1769
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1769:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1770
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1770:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1771
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1771:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1772
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1772:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1392:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1394
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
	mov rbx, _slit_457
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1773
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1773:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1774
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1774:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1775
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1775:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1776
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1776:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1777
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1777:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 3
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1778
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1778:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1394:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor rax, rax
	cmp rsi, rdi
	sete al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1396
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
	mov rbx, _slit_458
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
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1779
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_295
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1779:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1780
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1780:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1781
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1781:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1782
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1782:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1783
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1783:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 3
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1784
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1784:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 4
	mov rsi, rbx
	mov rdi, 14
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	test al, al
	jnz .1785
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_296
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1785:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	jmp .1235
.1396:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1786
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_459
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1786:
.1397:
.1235:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1232
.1233:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 152
	ret
stas.gen:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_235
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
	mov rbx, qword _global_is_object_file
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1398
	mov rbx, _slit_238
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
	mov rbx, _slit_239
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
	mov rbx, _slit_240
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
	mov rbx, _slit_241
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
	jmp .1400
.1398:
	mov rbx, _slit_242
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
	mov rbx, _slit_243
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
	mov rbx, _slit_244
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
.1400:
	mov rbx, _slit_245
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
	mov rbx, _slit_246
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
	mov rbx, _slit_247
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
	mov rbx, _slit_248
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
	mov rbx, _slit_249
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
	mov rbx, _slit_250
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
	mov rbx, _slit_251
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
	mov rbx, _slit_252
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
	mov rbx, _slit_253
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
	mov rbx, _slit_254
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
	mov rbx, _slit_255
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
	mov rsi, qword _global_ir_stream.len
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_is_object_file
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1401
	mov rbx, _slit_460
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
	jmp .1403
.1401:
	mov rbx, _slit_461
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
.1403:
	mov rbx, 0
	push rbx
.1404:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_slits.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1405
	pop rbx
	mov rsi, rbx
	mov rdi, _slit_462
	mov r8, 6
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
	mov rbx, _slit_463
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
	xor rax, rax
	cmp rdi, r8
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1787
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_310
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1787:
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword _global_slits
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rsi
	mov r8, qword [_rs_p]
	mov qword [r8 + 8], rdi
	mov r8, 0
	push rbx
	push r8
.1406:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1407
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rax, rax
	mov al, [rsi]
	push rbx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_464
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1406
.1407:
	add rsp, 8
	mov rbx, _slit_465
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
	jmp .1404
.1405:
	add rsp, 8
	mov rbx, qword _global_is_object_file
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1408
	mov rbx, _slit_466
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
	jmp .1410
.1408:
	mov rbx, _slit_467
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
.1410:
	mov rbx, 0
	push rbx
.1411:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rax, rax
	cmp rsi, r8
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1412
	mov rbx, _slit_468
	mov rsi, 8
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
	mov r8, qword _global_global_var_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1788
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1788:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_global_var_context
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
	mov rbx, _slit_469
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
	mov r8, qword _global_global_var_context.len
	mov r9, qword [r8 + 0]
	xor rax, rax
	cmp rdi, r9
	setb al
	mov rdi, rax
	mov rax, rdi
	test al, al
	jnz .1789
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1789:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_global_var_context
	add rsi, rdi
	mov rdi, 4
	add rsi, rdi
	mov rax, rsi
	mov eax, [rax]
	push rbx
	push rax
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
	jmp .1411
.1412:
	add rsp, 8
	mov rbx, _slit_470
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
	mov rbx, _slit_471
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
	mov rbx, _slit_472
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
	mov rbx, _slit_473
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
	mov rbx, qword _global_fwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_fwrite_buffer
	mov rdi, qword _global_fwrite_buffer.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	mov rax, rdi
	mov rdx, r8
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, rax
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1790
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_237
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1790:
	mov rbx, 0
	mov rsi, qword _global_fwrite_buffer.len
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
usage:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_0
	mov rsi, 40
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_1
	mov rsi, 32
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_2
	mov rsi, 61
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_3
	mov rsi, 73
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_4
	mov rsi, 67
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_5
	mov rsi, 70
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_6
	mov rsi, 66
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_7
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
	mov rdi, _slit_14
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
	pop rax
	test rax, rax
	jz .1413
	mov rbx, 1
	mov rsi, qword _global_backend_type
	mov qword [rsi + 0], rbx
	jmp .1414
.1413:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _slit_15
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
	pop rax
	test rax, rax
	jz .1416
	mov rbx, 2
	mov rsi, qword _global_backend_type
	mov qword [rsi + 0], rbx
	jmp .1414
.1416:
	mov rbx, _slit_16
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
.1417:
.1414:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
execute_fasm:
	sub rsp, 72
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
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov r10, rbx
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 8]
	mov r13, qword [r11 + 0]
	mov rax, r12
	mov qword [r10], rax
	mov r10, 8
	add rbx, r10
	mov r10, rbx
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 24]
	mov r13, qword [r11 + 16]
	mov rax, r12
	mov qword [r10], rax
	mov r10, 8
	add rbx, r10
	mov r10, rbx
	mov r11, _slit_475
	mov r12, 2
	mov rax, r11
	mov qword [r10], rax
	mov r10, 8
	add rbx, r10
	mov r10, rbx
	mov r11, _slit_476
	mov r12, 7
	mov rax, r11
	mov qword [r10], rax
	mov r10, 8
	add rbx, r10
	mov r10, 0
	mov rax, r10
	mov qword [rbx], rax
	mov rbx, _slit_477
	mov r10, 13
	mov r11, qword [_rs_p]
	add r11, 32
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call child_execve_and_shut_up
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
main:
	sub rsp, 81
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 1
	xor rax, rax
	cmp rbx, rsi
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1418
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
.1418:
	mov rbx, qword _global_is_object_file
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, qword [_rs_p]
	mov rsi, 0
	mov rax, rsi
	mov byte [rbx], al
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1], rbx
	mov rsi, 18446744073709551615
	mov rdi, qword _global_fwrite_buffer.fd_loc
	mov qword [rdi + 0], rsi
	mov r8, 1
	mov r9, qword _global_backend_type
	mov qword [r9 + 0], r8
	mov r10, 0
	mov r11, 0
	mov r12, qword [_rs_p]
	mov qword [r12 + 33], r11
	mov qword [r12 + 41], r10
	mov r12, 0
	mov r13, 0
	mov r14, qword [_rs_p]
	mov qword [r14 + 49], r13
	mov qword [r14 + 57], r12
	mov r14, 0
	mov r15, qword [_rs_p]
	mov qword [r15 + 9], r14
	mov r15, qword _global_debug_symbols
	mov rcx, 0
	mov rax, rcx
	mov byte [r15], al
	mov r15, 1
	push r15
.1420:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor rax, rax
	cmp rsi, rdi
	setb al
	mov rsi, rax
	mov rax, rsi
	push rbx
	test rax, rax
	jz .1421
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
	mov qword [rbx + 17], rsi
	pop rdi
	mov qword [rbx + 25], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 25]
	mov r9, qword [rbx + 17]
	mov rbx, _slit_8
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
	pop rax
	test rax, rax
	jz .1422
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1424
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
.1424:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 9], rbx
	jmp .1423
.1422:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_9
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
	pop rax
	test rax, rax
	jz .1427
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1428
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
.1428:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov qword [rsi + 9], rbx
	jmp .1423
.1427:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_10
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
	pop rax
	test rax, rax
	jz .1431
	mov rbx, qword _global_debug_symbols
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1432
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
.1432:
	mov rbx, qword _global_debug_symbols
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
	jmp .1423
.1431:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_11
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
	pop rax
	test rax, rax
	jz .1435
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1436
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
.1436:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .1423
.1435:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_12
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
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_13
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
	mov rax, rsi
	test rax, rax
	jz .1439
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
	jmp .1423
.1439:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1441
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rdi, qword [rbx + 49]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1443
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
.1443:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rdi
	mov qword [rbx + 57], rsi
	jmp .1442
.1441:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 1
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1446
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1447
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
.1447:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 33], rdi
	mov qword [rbx + 41], rsi
	jmp .1442
.1446:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 2
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1450
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse_backend_type
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1442
.1450:
	mov rbx, 0
	mov rax, rbx
	test al, al
	jnz .1791
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_22
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.1791:
.1451:
.1442:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 9], rbx
.1440:
.1423:
	pop rbx
	inc rbx
	push rbx
	jmp .1420
.1421:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1452
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 1
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1454
	mov rbx, _slit_23
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
	jmp .1455
.1454:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 2
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1457
	mov rbx, _slit_24
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
.1457:
.1455:
.1452:
	mov rbx, qword _global_backend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1792
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_25
	mov rdx, 90
	syscall
	mov rdi, 1
	jmp _exit
.1792:
	mov rbx, qword _global_debug_symbols
	xor rax, rax
	mov al, [rbx]
	mov rbx, 0
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test al, al
	jnz .1793
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_26
	mov rdx, 100
	syscall
	mov rdi, 1
	jmp _exit
.1793:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rdi, qword [rbx + 49]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1458
	mov rbx, _slit_27
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
.1458:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1460
	mov rbx, qword _global_debug_symbols
	xor rax, rax
	mov al, [rbx]
	mov rbx, qword _global_backend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	mov rdi, rax
	xor rax, rax
	cmp rsi, rbx
	sete al
	or rdi, rax
	mov rax, rdi
	test rax, rax
	jz .1462
	mov rbx, _slit_28
	mov rsi, 3
	push rbx
	push rsi
	jmp .1464
.1462:
	mov rbx, _slit_29
	mov rsi, 5
	push rbx
	push rsi
.1464:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 33], rsi
	pop rdi
	mov qword [rbx + 41], rdi
	jmp .1465
.1460:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, _slit_30
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
	pop rax
	test rax, rax
	jz .1466
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov rax, rsi
	mov byte [rbx], al
.1466:
.1465:
	mov rbx, qword [_rs_p]
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1468
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, _slit_32
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
	mov qword [rdi + 65], rsi
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
	mov rbx, qword _global_fwrite_buffer.fd_loc
	pop rsi
	mov qword [rbx + 0], rsi
	jmp .1470
.1468:
	mov rbx, 1
	mov rsi, qword _global_fwrite_buffer.fd_loc
	mov qword [rsi + 0], rbx
.1470:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rdi, qword [rbx + 49]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.parse
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_main_fn_idx
	mov rsi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor rax, rax
	cmp rsi, rbx
	sete al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1084
	mov rbx, _slit_232
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
	mov rbx, _slit_17
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
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
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
	mov rbx, _slit_20
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
	mov rbx, _slit_21
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
.1084:
	mov rbx, qword _global_main_fn_idx
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.gen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	xor rax, rax
	mov al, [rbx]
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1471
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 81
	ret
.1471:
	mov rbx, qword _global_fwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setl al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1473
	mov rbx, _slit_474
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
.1473:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 65]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 41]
	mov r9, qword [rdi + 33]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call execute_fasm
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1]
	mov rbx, 0
	xor rax, rax
	cmp rsi, rbx
	setne al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1475
	mov rbx, qword [_rs_p]
	add rbx, 73
	mov rsi, 0
	mov rax, rsi
	mov qword [rbx], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, qword [_arg_p]
	add rbx, 8
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 1]
	mov rdi, 1
	add r8, rdi
	mov rdi, 8
	imul r8, rdi
	add rbx, r8
	mov rdi, qword [_rs_p]
	add rdi, 73
	mov r8, 59
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	mov rsi, rax
	xor rax, rax
	cmp rsi, rbx
	setl al
	mov rbx, rax
	mov rax, rbx
	test rax, rax
	jz .1477
	mov rbx, _slit_482
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
.1477:
.1475:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 81
	ret
segment readable
_slit_0: db 115, 116, 97, 115, 32, 48, 46, 49, 46, 48, 32, 67, 111, 112, 121, 114, 105, 103, 104, 116, 32, 40, 67, 41, 32, 50, 48, 50, 50, 32, 32, 108, 45, 109, 46, 100, 101, 118, 10, 10, 0
_slit_1: db 85, 83, 65, 71, 69, 58, 32, 46, 47, 115, 116, 97, 115, 32, 91, 79, 80, 84, 73, 79, 78, 83, 93, 32, 91, 70, 73, 76, 69, 93, 10, 10, 0
_slit_2: db 9, 45, 111, 32, 60, 111, 117, 116, 112, 117, 116, 62, 32, 32, 32, 32, 32, 32, 32, 83, 112, 101, 99, 105, 102, 121, 32, 39, 45, 111, 32, 45, 39, 32, 116, 111, 32, 100, 117, 109, 112, 32, 97, 115, 115, 101, 109, 98, 108, 121, 32, 116, 111, 32, 115, 116, 100, 111, 117, 116, 10, 0
_slit_3: db 9, 45, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 68, 101, 98, 117, 103, 32, 115, 121, 109, 98, 111, 108, 115, 46, 32, 77, 111, 115, 116, 32, 101, 102, 102, 101, 99, 116, 105, 118, 101, 32, 119, 105, 116, 104, 32, 116, 104, 101, 32, 96, 110, 97, 115, 109, 96, 32, 98, 97, 99, 107, 101, 110, 100, 10, 0
_slit_4: db 9, 45, 98, 32, 60, 98, 97, 99, 107, 101, 110, 100, 62, 32, 32, 32, 32, 32, 32, 65, 115, 115, 101, 109, 98, 108, 101, 114, 115, 32, 96, 110, 97, 115, 109, 96, 32, 111, 114, 32, 96, 102, 97, 115, 109, 96, 32, 97, 115, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 98, 97, 99, 107, 101, 110, 100, 10, 0
_slit_5: db 9, 45, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 69, 120, 101, 99, 117, 116, 101, 32, 102, 105, 108, 101, 32, 97, 102, 116, 101, 114, 32, 99, 111, 109, 112, 105, 108, 105, 110, 103, 46, 32, 65, 114, 103, 117, 109, 101, 110, 116, 115, 32, 97, 102, 116, 101, 114, 32, 116, 104, 105, 115, 10, 0
_slit_6: db 9, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 119, 105, 116, 99, 104, 32, 119, 105, 108, 108, 32, 105, 103, 110, 111, 114, 101, 100, 32, 97, 110, 100, 32, 112, 97, 115, 115, 101, 100, 32, 116, 111, 32, 116, 104, 101, 32, 112, 114, 111, 103, 114, 97, 109, 46, 10, 0
_slit_7: db 9, 45, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 104, 111, 119, 32, 116, 104, 105, 115, 32, 109, 101, 115, 115, 97, 103, 101, 10, 10, 0
_slit_8: db 45, 111, 0
_slit_9: db 45, 98, 0
_slit_10: db 45, 103, 0
_slit_11: db 45, 114, 0
_slit_12: db 45, 45, 104, 101, 108, 112, 0
_slit_13: db 45, 104, 0
_slit_14: db 102, 97, 115, 109, 0
_slit_15: db 110, 97, 115, 109, 0
_slit_16: db 117, 110, 107, 110, 111, 119, 110, 32, 98, 97, 99, 107, 101, 110, 100, 0
_slit_17: db 91, 49, 109, 0
_slit_18: db 91, 51, 49, 109, 0
_slit_19: db 70, 65, 84, 65, 76, 58, 32, 0
_slit_20: db 91, 51, 57, 109, 0
_slit_21: db 91, 50, 50, 109, 0
_slit_22: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 116, 97, 115, 46, 115, 116, 97, 115, 58, 49, 53, 48, 58, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_23: db 115, 117, 112, 112, 108, 121, 32, 111, 117, 116, 112, 117, 116, 32, 102, 105, 108, 101, 0
_slit_24: db 115, 117, 112, 112, 108, 121, 32, 98, 97, 99, 107, 101, 110, 100, 32, 116, 121, 112, 101, 0
_slit_25: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 116, 97, 115, 46, 115, 116, 97, 115, 58, 49, 54, 54, 58, 51, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 110, 97, 115, 109, 32, 98, 97, 99, 107, 101, 110, 100, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 32, 121, 101, 116, 39, 10, 0
_slit_26: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 116, 97, 115, 46, 115, 116, 97, 115, 58, 49, 54, 55, 58, 50, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 111, 98, 106, 101, 99, 116, 32, 102, 105, 108, 101, 32, 43, 32, 108, 105, 110, 101, 32, 110, 117, 109, 98, 101, 114, 115, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 39, 10, 0
_slit_27: db 115, 117, 112, 112, 108, 121, 32, 115, 116, 97, 115, 32, 102, 105, 108, 101, 0
_slit_28: db 97, 46, 111, 0
_slit_29: db 97, 46, 111, 117, 116, 0
_slit_30: db 45, 0
_slit_31: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 115, 116, 114, 105, 110, 103, 98, 117, 102, 102, 101, 114, 46, 115, 116, 97, 115, 58, 56, 58, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 83, 116, 114, 105, 110, 103, 32, 109, 101, 109, 111, 114, 121, 32, 101, 120, 99, 101, 101, 100, 101, 100, 32, 108, 105, 109, 105, 116, 39, 10, 0
_slit_32: db 46, 116, 109, 112, 0
_slit_33: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 111, 112, 101, 110, 32, 102, 105, 108, 101, 32, 39, 0
_slit_34: db 39, 10, 0
_slit_35: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 111, 112, 101, 110, 32, 102, 105, 108, 101, 32, 39, 0
_slit_36: db 39, 10, 0
_slit_37: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 115, 116, 97, 116, 32, 116, 104, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_38: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 109, 109, 97, 112, 32, 102, 105, 108, 101, 32, 39, 0
_slit_39: db 39, 10, 0
_slit_40: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 99, 108, 111, 115, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_41: db 117, 110, 116, 101, 114, 109, 105, 110, 97, 116, 101, 100, 32, 115, 116, 114, 105, 110, 103, 32, 108, 105, 116, 101, 114, 97, 108, 0
_slit_42: db 58, 0
_slit_43: db 58, 0
_slit_44: db 58, 32, 0
_slit_45: db 10, 0
_slit_46: db 101, 115, 99, 97, 112, 101, 32, 99, 104, 97, 114, 97, 99, 116, 101, 114, 32, 100, 111, 101, 115, 32, 110, 111, 116, 32, 101, 120, 105, 115, 116, 0
_slit_47: db 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 101, 115, 99, 97, 112, 101, 32, 99, 104, 97, 114, 97, 99, 116, 101, 114, 0
_slit_48: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 116, 111, 107, 101, 110, 115, 46, 115, 116, 97, 115, 58, 51, 57, 49, 58, 51, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_49: db 102, 105, 108, 101, 32, 116, 111, 32, 105, 110, 99, 108, 117, 100, 101, 32, 105, 115, 32, 110, 111, 116, 32, 97, 32, 115, 116, 114, 105, 110, 103, 0
_slit_50: db 105, 110, 99, 108, 117, 100, 101, 0
_slit_51: db 123, 0
_slit_52: db 125, 0
_slit_53: db 45, 62, 0
_slit_54: db 102, 110, 0
_slit_55: db 95, 98, 114, 101, 97, 107, 112, 111, 105, 110, 116, 0
_slit_56: db 99, 111, 110, 115, 116, 0
_slit_57: db 97, 115, 115, 101, 114, 116, 0
_slit_58: db 97, 114, 103, 99, 0
_slit_59: db 97, 114, 103, 118, 0
_slit_60: db 114, 101, 116, 0
_slit_61: db 105, 102, 0
_slit_62: db 101, 108, 115, 101, 0
_slit_63: db 101, 108, 105, 102, 0
_slit_64: db 119, 104, 105, 108, 101, 0
_slit_65: db 98, 114, 101, 97, 107, 0
_slit_66: db 99, 111, 110, 116, 105, 110, 117, 101, 0
_slit_67: db 43, 0
_slit_68: db 45, 0
_slit_69: db 42, 0
_slit_70: db 47, 0
_slit_71: db 37, 0
_slit_72: db 43, 43, 0
_slit_73: db 45, 45, 0
_slit_74: db 37, 37, 0
_slit_75: db 62, 62, 0
_slit_76: db 60, 60, 0
_slit_77: db 38, 0
_slit_78: db 124, 0
_slit_79: db 126, 0
_slit_80: db 33, 0
_slit_81: db 94, 0
_slit_82: db 115, 119, 97, 112, 0
_slit_83: db 100, 117, 112, 0
_slit_84: db 111, 118, 101, 114, 0
_slit_85: db 111, 118, 101, 114, 50, 0
_slit_86: db 114, 111, 116, 0
_slit_87: db 114, 111, 116, 52, 0
_slit_88: db 100, 114, 111, 112, 0
_slit_89: db 61, 0
_slit_90: db 33, 61, 0
_slit_91: db 62, 0
_slit_92: db 60, 0
_slit_93: db 62, 61, 0
_slit_94: db 60, 61, 0
_slit_95: db 62, 115, 0
_slit_96: db 60, 115, 0
_slit_97: db 62, 61, 115, 0
_slit_98: db 60, 61, 115, 0
_slit_99: db 119, 56, 0
_slit_100: db 119, 49, 54, 0
_slit_101: db 119, 51, 50, 0
_slit_102: db 119, 54, 52, 0
_slit_103: db 114, 56, 0
_slit_104: db 114, 49, 54, 0
_slit_105: db 114, 51, 50, 0
_slit_106: db 114, 54, 52, 0
_slit_107: db 115, 121, 115, 99, 97, 108, 108, 48, 0
_slit_108: db 115, 121, 115, 99, 97, 108, 108, 49, 0
_slit_109: db 115, 121, 115, 99, 97, 108, 108, 50, 0
_slit_110: db 115, 121, 115, 99, 97, 108, 108, 51, 0
_slit_111: db 115, 121, 115, 99, 97, 108, 108, 52, 0
_slit_112: db 115, 121, 115, 99, 97, 108, 108, 53, 0
_slit_113: db 115, 121, 115, 99, 97, 108, 108, 54, 0
_slit_114: db 114, 101, 115, 101, 114, 118, 101, 0
_slit_115: db 97, 117, 116, 111, 0
_slit_116: db 112, 111, 112, 0
_slit_117: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 102, 105, 108, 101, 32, 116, 111, 32, 105, 110, 99, 108, 117, 100, 101, 0
_slit_118: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 116, 111, 107, 101, 110, 115, 46, 115, 116, 97, 115, 58, 51, 55, 55, 58, 50, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_119: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_120: db 58, 0
_slit_121: db 58, 0
_slit_122: db 58, 32, 0
_slit_123: db 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 110, 97, 109, 101, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 105, 110, 32, 105, 110, 115, 116, 114, 105, 110, 115, 105, 99, 0
_slit_124: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 48, 51, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_125: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 110, 97, 109, 101, 32, 97, 115, 32, 101, 120, 105, 115, 116, 105, 110, 103, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 0
_slit_126: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 50, 53, 58, 51, 49, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_127: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 52, 57, 58, 51, 49, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_128: db 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 110, 97, 109, 101, 32, 97, 115, 32, 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 116, 111, 112, 32, 108, 101, 118, 101, 108, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_129: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 102, 111, 108, 108, 111, 119, 32, 97, 32, 99, 111, 110, 115, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 100, 101, 99, 108, 0
_slit_130: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 51, 56, 58, 53, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_131: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 49, 55, 52, 58, 49, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_132: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 57, 50, 58, 50, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_133: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 55, 49, 58, 50, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_134: db 117, 110, 99, 108, 111, 115, 101, 100, 32, 115, 99, 111, 112, 101, 32, 102, 111, 114, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_135: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 102, 117, 110, 99, 116, 105, 111, 110, 0
_slit_136: db 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 97, 110, 32, 105, 110, 116, 114, 105, 110, 115, 105, 99, 0
_slit_137: db 102, 117, 110, 99, 116, 105, 111, 110, 32, 114, 101, 116, 117, 114, 110, 32, 97, 110, 100, 32, 97, 114, 103, 117, 109, 101, 110, 116, 32, 99, 111, 117, 110, 116, 115, 32, 109, 117, 115, 116, 32, 98, 101, 32, 110, 117, 109, 98, 101, 114, 115, 0
_slit_138: db 110, 101, 119, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 112, 114, 111, 99, 101, 101, 100, 32, 97, 102, 116, 101, 114, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 104, 101, 97, 100, 101, 114, 0
_slit_139: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 0
_slit_140: db 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 32, 97, 108, 114, 101, 97, 100, 121, 32, 101, 120, 105, 115, 116, 115, 32, 97, 115, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_141: db 109, 97, 105, 110, 0
_slit_142: db 116, 104, 101, 32, 109, 97, 105, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 109, 117, 115, 116, 32, 97, 99, 99, 101, 112, 116, 32, 97, 110, 100, 32, 114, 101, 116, 117, 114, 110, 32, 122, 101, 114, 111, 32, 118, 97, 108, 117, 101, 115, 0
_slit_143: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 50, 48, 58, 51, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_144: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 50, 52, 58, 51, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_145: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 50, 53, 55, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_146: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 50, 53, 56, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_147: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 50, 57, 58, 49, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_148: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 100, 101, 99, 108, 0
_slit_149: db 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 97, 110, 32, 105, 110, 116, 114, 105, 110, 115, 105, 99, 0
_slit_150: db 118, 97, 114, 105, 97, 98, 108, 101, 32, 100, 101, 99, 108, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 97, 32, 102, 117, 110, 99, 116, 105, 111, 110, 0
_slit_151: db 118, 97, 114, 105, 97, 98, 108, 101, 32, 100, 101, 99, 108, 32, 109, 117, 115, 116, 32, 115, 112, 101, 99, 105, 102, 121, 32, 115, 105, 122, 101, 32, 105, 110, 32, 98, 121, 116, 101, 115, 0
_slit_152: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 116, 111, 112, 32, 108, 101, 118, 101, 108, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_153: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 54, 51, 58, 53, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_154: db 117, 110, 107, 110, 111, 119, 110, 32, 116, 111, 112, 108, 101, 118, 101, 108, 32, 116, 111, 107, 101, 110, 0
_slit_155: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 52, 51, 58, 51, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_156: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 49, 48, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_157: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 101, 118, 97, 108, 46, 115, 116, 97, 115, 58, 56, 58, 51, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_158: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 101, 118, 97, 108, 46, 115, 116, 97, 115, 58, 50, 49, 58, 50, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_159: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 101, 118, 97, 108, 46, 115, 116, 97, 115, 58, 49, 53, 58, 50, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_160: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 49, 54, 58, 50, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_161: db 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 109, 117, 115, 116, 32, 99, 111, 110, 116, 97, 105, 110, 32, 97, 32, 118, 97, 108, 117, 101, 0
_slit_162: db 109, 111, 114, 101, 32, 116, 104, 97, 110, 32, 111, 110, 101, 32, 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 108, 101, 102, 116, 32, 111, 110, 32, 116, 104, 101, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_163: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 52, 49, 58, 50, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_164: db 117, 110, 107, 110, 111, 119, 110, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_165: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 97, 115, 115, 101, 114, 116, 105, 111, 110, 0
_slit_166: db 0
_slit_167: db 91, 49, 109, 0
_slit_168: db 91, 51, 49, 109, 0
_slit_169: db 58, 0
_slit_170: db 58, 0
_slit_171: db 58, 32, 0
_slit_172: db 91, 51, 57, 109, 0
_slit_173: db 91, 50, 50, 109, 0
_slit_174: db 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 0
_slit_175: db 39, 10, 0
_slit_176: db 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_177: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 0
_slit_178: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 52, 55, 58, 50, 52, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_179: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_180: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 54, 49, 58, 51, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_181: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 112, 111, 112, 0
_slit_182: db 101, 120, 112, 101, 99, 116, 101, 100, 32, 110, 97, 109, 101, 32, 97, 102, 116, 101, 114, 32, 112, 111, 112, 0
_slit_183: db 99, 97, 110, 110, 111, 116, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 32, 98, 117, 102, 102, 101, 114, 0
_slit_184: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 116, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 110, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_185: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 52, 50, 50, 58, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_186: db 99, 97, 110, 110, 111, 116, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 32, 98, 117, 102, 102, 101, 114, 0
_slit_187: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 116, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 110, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_188: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 52, 52, 55, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_189: db 117, 110, 107, 110, 111, 119, 110, 32, 97, 117, 116, 111, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_190: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 99, 97, 108, 108, 0
_slit_191: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 53, 48, 48, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_192: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 53, 50, 48, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_193: db 117, 110, 107, 110, 111, 119, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 99, 97, 108, 108, 32, 111, 114, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_194: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_195: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 56, 55, 58, 52, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_196: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_197: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 97, 110, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_198: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_199: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_200: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_201: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 54, 50, 56, 58, 53, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_202: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_203: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 119, 104, 105, 108, 101, 32, 104, 101, 97, 100, 101, 114, 0
_slit_204: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 101, 108, 115, 101, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_205: db 115, 99, 111, 112, 101, 32, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 109, 111, 114, 101, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_206: db 115, 99, 111, 112, 101, 32, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 108, 101, 115, 115, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_207: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_208: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 97, 110, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_209: db 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 109, 117, 115, 116, 32, 114, 101, 109, 97, 105, 110, 32, 116, 104, 101, 32, 115, 97, 109, 101, 32, 119, 105, 116, 104, 32, 115, 105, 110, 103, 108, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 0
_slit_210: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 55, 57, 51, 58, 49, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_211: db 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 109, 117, 115, 116, 32, 114, 101, 109, 97, 105, 110, 32, 116, 104, 101, 32, 115, 97, 109, 101, 32, 101, 97, 99, 104, 32, 119, 105, 116, 104, 32, 101, 108, 115, 101, 32, 105, 102, 32, 98, 114, 97, 110, 99, 104, 0
_slit_212: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_213: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 97, 110, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_214: db 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 109, 117, 115, 116, 32, 114, 101, 109, 97, 105, 110, 32, 116, 104, 101, 32, 115, 97, 109, 101, 32, 119, 105, 116, 104, 32, 115, 105, 110, 103, 108, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 0
_slit_215: db 117, 110, 98, 97, 108, 97, 110, 99, 101, 100, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 98, 111, 116, 104, 32, 105, 102, 32, 97, 110, 100, 32, 101, 108, 115, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 44, 32, 101, 108, 115, 101, 32, 104, 97, 115, 32, 109, 111, 114, 101, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_216: db 117, 110, 98, 97, 108, 97, 110, 99, 101, 100, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 98, 111, 116, 104, 32, 105, 102, 32, 97, 110, 100, 32, 101, 108, 115, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 44, 32, 101, 108, 115, 101, 32, 104, 97, 115, 32, 108, 101, 115, 115, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_217: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 56, 52, 52, 58, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_218: db 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 100, 97, 116, 97, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 0
_slit_219: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 114, 101, 116, 117, 114, 110, 0
_slit_220: db 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 100, 97, 116, 97, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 0
_slit_221: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 114, 101, 116, 117, 114, 110, 0
_slit_222: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 99, 104, 101, 99, 107, 101, 100, 32, 115, 99, 111, 112, 101, 0
_slit_223: db 97, 32, 110, 117, 109, 98, 101, 114, 32, 109, 117, 115, 116, 32, 97, 112, 112, 101, 97, 114, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 97, 114, 114, 111, 119, 32, 97, 115, 115, 101, 114, 116, 32, 111, 112, 101, 114, 97, 116, 111, 114, 0
_slit_224: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 97, 114, 114, 111, 119, 32, 97, 115, 115, 101, 114, 116, 32, 111, 112, 101, 114, 97, 116, 111, 114, 0
_slit_225: db 117, 110, 107, 110, 111, 119, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 108, 111, 99, 97, 108, 32, 116, 111, 107, 101, 110, 0
_slit_226: db 99, 97, 110, 110, 111, 116, 32, 100, 101, 102, 105, 110, 101, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 105, 110, 115, 105, 100, 101, 32, 97, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_227: db 117, 110, 107, 110, 111, 119, 110, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 116, 111, 107, 101, 110, 0
_slit_228: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 54, 52, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_229: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 54, 53, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_230: db 117, 110, 99, 108, 111, 115, 101, 100, 32, 115, 99, 111, 112, 101, 115, 32, 111, 110, 32, 112, 97, 114, 115, 101, 114, 32, 102, 105, 110, 105, 115, 104, 0
_slit_231: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 102, 117, 110, 99, 116, 105, 111, 110, 44, 32, 115, 99, 111, 112, 101, 115, 32, 109, 97, 121, 32, 98, 101, 32, 117, 110, 99, 108, 111, 115, 101, 100, 0
_slit_232: db 110, 111, 32, 109, 97, 105, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 0
_slit_233: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 100, 99, 101, 46, 115, 116, 97, 115, 58, 49, 48, 58, 50, 52, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_234: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 100, 99, 101, 46, 115, 116, 97, 115, 58, 53, 55, 58, 52, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_235: db 117, 115, 101, 54, 52, 0
_slit_236: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 119, 114, 105, 116, 101, 46, 115, 116, 97, 115, 58, 49, 55, 58, 50, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_237: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 119, 114, 105, 116, 101, 46, 115, 116, 97, 115, 58, 49, 48, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_238: db 102, 111, 114, 109, 97, 116, 32, 69, 76, 70, 54, 52, 0
_slit_239: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 116, 101, 120, 116, 39, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 0
_slit_240: db 112, 117, 98, 108, 105, 99, 32, 95, 115, 116, 97, 114, 116, 0
_slit_241: db 112, 117, 98, 108, 105, 99, 32, 95, 101, 120, 105, 116, 0
_slit_242: db 102, 111, 114, 109, 97, 116, 32, 69, 76, 70, 54, 52, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 0
_slit_243: db 115, 101, 103, 109, 101, 110, 116, 32, 114, 101, 97, 100, 97, 98, 108, 101, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 0
_slit_244: db 101, 110, 116, 114, 121, 32, 95, 115, 116, 97, 114, 116, 0
_slit_245: db 95, 115, 116, 97, 114, 116, 58, 0
_slit_246: db 9, 109, 111, 118, 32, 91, 95, 97, 114, 103, 95, 112, 93, 44, 32, 114, 115, 112, 0
_slit_247: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 44, 32, 95, 114, 115, 95, 116, 111, 112, 0
_slit_248: db 9, 109, 111, 118, 32, 114, 98, 112, 44, 32, 114, 115, 112, 0
_slit_249: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_250: db 9, 99, 97, 108, 108, 32, 109, 97, 105, 110, 0
_slit_251: db 9, 120, 111, 114, 32, 114, 100, 105, 44, 32, 114, 100, 105, 0
_slit_252: db 95, 101, 120, 105, 116, 58, 0
_slit_253: db 9, 109, 111, 118, 32, 101, 97, 120, 44, 32, 54, 48, 0
_slit_254: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_255: db 9, 110, 111, 112, 0
_slit_256: db 9, 112, 117, 115, 104, 32, 0
_slit_257: db 114, 98, 120, 0
_slit_258: db 114, 99, 120, 0
_slit_259: db 114, 115, 105, 0
_slit_260: db 114, 100, 105, 0
_slit_261: db 114, 56, 0
_slit_262: db 114, 57, 0
_slit_263: db 114, 49, 48, 0
_slit_264: db 114, 49, 49, 0
_slit_265: db 114, 49, 50, 0
_slit_266: db 114, 49, 51, 0
_slit_267: db 114, 49, 52, 0
_slit_268: db 114, 49, 53, 0
_slit_269: db 114, 100, 120, 0
_slit_270: db 114, 97, 120, 0
_slit_271: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 52, 56, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_272: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 103, 101, 110, 46, 115, 116, 97, 115, 58, 50, 57, 58, 50, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_273: db 112, 117, 98, 108, 105, 99, 32, 0
_slit_274: db 95, 97, 0
_slit_275: db 95, 98, 0
_slit_276: db 95, 99, 0
_slit_277: db 95, 100, 0
_slit_278: db 95, 101, 0
_slit_279: db 95, 102, 0
_slit_280: db 95, 103, 0
_slit_281: db 58, 0
_slit_282: db 9, 115, 117, 98, 32, 114, 115, 112, 44, 32, 0
_slit_283: db 9, 109, 111, 118, 32, 91, 95, 114, 115, 95, 112, 93, 44, 32, 114, 115, 112, 0
_slit_284: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 114, 98, 112, 0
_slit_285: db 9, 109, 111, 118, 32, 114, 98, 112, 44, 32, 114, 115, 112, 0
_slit_286: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_287: db 9, 97, 100, 100, 32, 114, 115, 112, 44, 32, 0
_slit_288: db 9, 114, 101, 116, 0
_slit_289: db 9, 109, 111, 118, 32, 114, 98, 112, 44, 32, 114, 115, 112, 0
_slit_290: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_291: db 9, 99, 97, 108, 108, 32, 0
_slit_292: db 9, 109, 111, 118, 32, 91, 95, 114, 115, 95, 112, 93, 44, 32, 114, 115, 112, 0
_slit_293: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 114, 98, 112, 0
_slit_294: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 50, 48, 49, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_295: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 57, 53, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_296: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 56, 57, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_297: db 9, 109, 111, 118, 32, 0
_slit_298: db 44, 32, 0
_slit_299: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 55, 56, 58, 50, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_300: db 9, 109, 111, 118, 32, 0
_slit_301: db 44, 32, 0
_slit_302: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 51, 51, 52, 58, 49, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_303: db 9, 112, 111, 112, 32, 0
_slit_304: db 9, 116, 101, 115, 116, 32, 97, 108, 44, 32, 97, 108, 0
_slit_305: db 9, 106, 110, 122, 32, 46, 0
_slit_306: db 9, 109, 111, 118, 32, 101, 97, 120, 44, 32, 49, 0
_slit_307: db 9, 109, 111, 118, 32, 101, 100, 105, 44, 32, 50, 0
_slit_308: db 9, 109, 111, 118, 32, 114, 115, 105, 44, 32, 95, 115, 108, 105, 116, 95, 0
_slit_309: db 9, 109, 111, 118, 32, 114, 100, 120, 44, 32, 0
_slit_310: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 100, 99, 101, 46, 115, 116, 97, 115, 58, 49, 55, 58, 49, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_311: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_312: db 9, 109, 111, 118, 32, 114, 100, 105, 44, 32, 49, 0
_slit_313: db 9, 106, 109, 112, 32, 95, 101, 120, 105, 116, 0
_slit_314: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 55, 48, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_315: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 55, 49, 58, 52, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_316: db 9, 109, 111, 118, 32, 0
_slit_317: db 44, 32, 0
_slit_318: db 95, 115, 108, 105, 116, 95, 0
_slit_319: db 9, 109, 111, 118, 32, 0
_slit_320: db 44, 32, 0
_slit_321: db 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_322: db 9, 97, 100, 100, 32, 0
_slit_323: db 9, 112, 111, 112, 32, 0
_slit_324: db 44, 32, 0
_slit_325: db 9, 109, 111, 118, 32, 0
_slit_326: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_327: db 9, 112, 111, 112, 32, 0
_slit_328: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 0
_slit_329: db 32, 43, 32, 0
_slit_330: db 93, 44, 32, 0
_slit_331: db 9, 109, 111, 118, 32, 0
_slit_332: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_333: db 113, 119, 111, 114, 100, 32, 91, 0
_slit_334: db 32, 43, 32, 0
_slit_335: db 93, 0
_slit_336: db 113, 119, 111, 114, 100, 32, 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_337: db 9, 109, 111, 118, 32, 0
_slit_338: db 44, 32, 113, 119, 111, 114, 100, 32, 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_339: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 0
_slit_340: db 32, 43, 32, 0
_slit_341: db 93, 44, 32, 0
_slit_342: db 9, 109, 111, 118, 32, 0
_slit_343: db 44, 32, 113, 119, 111, 114, 100, 32, 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_344: db 113, 119, 111, 114, 100, 32, 91, 0
_slit_345: db 32, 43, 32, 0
_slit_346: db 93, 0
_slit_347: db 9, 109, 111, 118, 32, 0
_slit_348: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 97, 114, 103, 95, 112, 93, 0
_slit_349: db 9, 109, 111, 118, 32, 0
_slit_350: db 44, 32, 91, 0
_slit_351: db 93, 0
_slit_352: db 9, 109, 111, 118, 32, 0
_slit_353: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 97, 114, 103, 95, 112, 93, 0
_slit_354: db 9, 97, 100, 100, 32, 0
_slit_355: db 44, 32, 56, 0
_slit_356: db 9, 116, 101, 115, 116, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_357: db 9, 106, 122, 32, 46, 0
_slit_358: db 9, 106, 109, 112, 32, 46, 0
_slit_359: db 9, 100, 98, 32, 48, 120, 99, 99, 0
_slit_360: db 9, 97, 100, 100, 32, 0
_slit_361: db 44, 32, 0
_slit_362: db 9, 115, 117, 98, 32, 0
_slit_363: db 44, 32, 0
_slit_364: db 9, 105, 109, 117, 108, 32, 0
_slit_365: db 44, 32, 0
_slit_366: db 9, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 0
_slit_367: db 9, 100, 105, 118, 32, 0
_slit_368: db 9, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 0
_slit_369: db 9, 100, 105, 118, 32, 0
_slit_370: db 9, 105, 110, 99, 32, 0
_slit_371: db 9, 100, 101, 99, 32, 0
_slit_372: db 9, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 0
_slit_373: db 9, 100, 105, 118, 32, 0
_slit_374: db 9, 115, 104, 114, 32, 0
_slit_375: db 44, 32, 99, 108, 0
_slit_376: db 9, 115, 104, 108, 32, 0
_slit_377: db 44, 32, 99, 108, 0
_slit_378: db 9, 116, 101, 115, 116, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_379: db 9, 115, 101, 116, 101, 32, 97, 108, 0
_slit_380: db 9, 97, 110, 100, 32, 0
_slit_381: db 44, 32, 0
_slit_382: db 9, 111, 114, 32, 0
_slit_383: db 44, 32, 0
_slit_384: db 9, 110, 111, 116, 32, 0
_slit_385: db 9, 120, 111, 114, 32, 0
_slit_386: db 44, 32, 0
_slit_387: db 9, 109, 111, 118, 32, 0
_slit_388: db 44, 32, 0
_slit_389: db 113, 119, 111, 114, 100, 32, 91, 114, 115, 112, 32, 43, 32, 0
_slit_390: db 93, 0
_slit_391: db 113, 119, 111, 114, 100, 32, 91, 114, 115, 112, 32, 43, 32, 0
_slit_392: db 93, 0
_slit_393: db 9, 97, 100, 100, 32, 114, 115, 112, 44, 32, 56, 0
_slit_394: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_395: db 9, 99, 109, 112, 32, 0
_slit_396: db 44, 32, 0
_slit_397: db 9, 115, 101, 116, 101, 32, 97, 108, 0
_slit_398: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_399: db 9, 99, 109, 112, 32, 0
_slit_400: db 44, 32, 0
_slit_401: db 9, 115, 101, 116, 110, 101, 32, 97, 108, 0
_slit_402: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_403: db 9, 99, 109, 112, 32, 0
_slit_404: db 44, 32, 0
_slit_405: db 9, 115, 101, 116, 97, 32, 97, 108, 0
_slit_406: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_407: db 9, 99, 109, 112, 32, 0
_slit_408: db 44, 32, 0
_slit_409: db 9, 115, 101, 116, 98, 32, 97, 108, 0
_slit_410: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_411: db 9, 99, 109, 112, 32, 0
_slit_412: db 44, 32, 0
_slit_413: db 9, 115, 101, 116, 97, 101, 32, 97, 108, 0
_slit_414: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_415: db 9, 99, 109, 112, 32, 0
_slit_416: db 44, 32, 0
_slit_417: db 9, 115, 101, 116, 98, 101, 32, 97, 108, 0
_slit_418: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_419: db 9, 99, 109, 112, 32, 0
_slit_420: db 44, 32, 0
_slit_421: db 9, 115, 101, 116, 103, 32, 97, 108, 0
_slit_422: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_423: db 9, 99, 109, 112, 32, 0
_slit_424: db 44, 32, 0
_slit_425: db 9, 115, 101, 116, 108, 32, 97, 108, 0
_slit_426: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_427: db 9, 99, 109, 112, 32, 0
_slit_428: db 44, 32, 0
_slit_429: db 9, 115, 101, 116, 103, 101, 32, 97, 108, 0
_slit_430: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_431: db 9, 99, 109, 112, 32, 0
_slit_432: db 44, 32, 0
_slit_433: db 9, 115, 101, 116, 108, 101, 32, 97, 108, 0
_slit_434: db 9, 109, 111, 118, 32, 98, 121, 116, 101, 32, 91, 0
_slit_435: db 93, 44, 32, 97, 108, 0
_slit_436: db 9, 109, 111, 118, 32, 119, 111, 114, 100, 32, 91, 0
_slit_437: db 93, 44, 32, 97, 120, 0
_slit_438: db 9, 109, 111, 118, 32, 100, 119, 111, 114, 100, 32, 91, 0
_slit_439: db 93, 44, 32, 101, 97, 120, 0
_slit_440: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 0
_slit_441: db 93, 44, 32, 114, 97, 120, 0
_slit_442: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_443: db 9, 109, 111, 118, 32, 97, 108, 44, 32, 91, 0
_slit_444: db 93, 0
_slit_445: db 9, 120, 111, 114, 32, 114, 97, 120, 44, 32, 114, 97, 120, 0
_slit_446: db 9, 109, 111, 118, 32, 97, 120, 44, 32, 91, 0
_slit_447: db 93, 0
_slit_448: db 9, 109, 111, 118, 32, 101, 97, 120, 44, 32, 91, 114, 97, 120, 93, 0
_slit_449: db 9, 109, 111, 118, 32, 0
_slit_450: db 44, 32, 91, 0
_slit_451: db 93, 0
_slit_452: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_453: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_454: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_455: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_456: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_457: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_458: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_459: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 103, 101, 110, 46, 115, 116, 97, 115, 58, 53, 52, 50, 58, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_460: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 114, 111, 100, 97, 116, 97, 39, 0
_slit_461: db 115, 101, 103, 109, 101, 110, 116, 32, 114, 101, 97, 100, 97, 98, 108, 101, 0
_slit_462: db 95, 115, 108, 105, 116, 95, 0
_slit_463: db 58, 32, 100, 98, 32, 0
_slit_464: db 44, 32, 0
_slit_465: db 48, 0
_slit_466: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 98, 115, 115, 39, 32, 119, 114, 105, 116, 97, 98, 108, 101, 0
_slit_467: db 115, 101, 103, 109, 101, 110, 116, 32, 114, 101, 97, 100, 97, 98, 108, 101, 32, 119, 114, 105, 116, 97, 98, 108, 101, 0
_slit_468: db 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_469: db 58, 32, 114, 98, 32, 0
_slit_470: db 95, 97, 114, 103, 95, 112, 58, 32, 114, 113, 32, 49, 0
_slit_471: db 95, 114, 115, 95, 112, 58, 32, 114, 113, 32, 49, 0
_slit_472: db 95, 114, 115, 58, 32, 114, 98, 32, 54, 53, 53, 51, 54, 0
_slit_473: db 95, 114, 115, 95, 116, 111, 112, 58, 0
_slit_474: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 99, 108, 111, 115, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_475: db 45, 109, 0
_slit_476: db 49, 48, 52, 56, 53, 55, 54, 0
_slit_477: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 102, 97, 115, 109, 0
_slit_478: db 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
_slit_479: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 10, 0
_slit_480: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 32, 97, 115, 32, 115, 116, 100, 111, 117, 116, 10, 0
_slit_481: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 101, 120, 101, 99, 118, 101, 32, 99, 104, 105, 108, 100, 0
_slit_482: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 101, 120, 101, 99, 118, 101, 32, 102, 105, 108, 101, 10, 0
segment readable writable
_global___curbrk: rb 8
_global_is_object_file: rb 1
_global_debug_symbols: rb 1
_global_backend_type: rb 8
_global_string_buffer.len: rb 8
_global_string_buffer: rb 268435456
_global_token_stream: rb 917504
_global_token_stream.len: rb 8
_global_functions.len: rb 8
_global_functions: rb 15360
_global_global_var_context.len: rb 8
_global_global_var_context: rb 12288
_global_toplevel_constants.len: rb 8
_global_toplevel_constants: rb 24576
_global_ir_stream.len: rb 8
_global_ir_stream: rb 262144
_global_var_context.len: rb 8
_global_var_context: rb 12288
_global_scope_context.len: rb 8
_global_scope_context: rb 14336
_global_const_stack.len: rb 8
_global_const_stack: rb 8192
_global_label_c: rb 8
_global_main_fn_idx: rb 8
_global_pos: rb 8
_global_function_context: rb 8
_global_function_context_idx: rb 8
_global_is_still_evaluating_constant: rb 8
_global_sp.len: rb 8
_global_sp: rb 4096
_global_fwrite_buffer.len: rb 8
_global_fwrite_buffer: rb 1048576
_global_fwrite_buffer.fd_loc: rb 8
_global_slits.len: rb 8
_global_slits: rb 8192
_global_rallocator_mask: rb 14
_global_rallocator_stack.len: rb 8
_global_rallocator_stack: rb 2048
_arg_p: rq 1
_rs_p: rq 1
_rs: rb 65536
_rs_top:
