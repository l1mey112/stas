[BITS 64]
[global _start]
[section .text]
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
fputu:
	sub rsp, 44
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .24
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
.24:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 28], rbx
.26:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .27
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
	mov rsi, qword [rbx + 28]
	mov byte [rsi], dl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rsi
	push rax
	jmp .26
.27:
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
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .28
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
.28:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 44], rbx
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
.30:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .31
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
	mov rsi, qword [rbx + 36]
	mov byte [rsi], dl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rsi
	push rax
	jmp .30
.31:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .32
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	sub rsi, rdi
	push rsi
.34:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .35
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	mov rbx, 32
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rsi
	pop rbx
	dec rbx
	push rbx
	jmp .34
.35:
	add rsp, 8
.32:
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
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .36
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
.36:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 44], rbx
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
.38:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .39
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
	mov rsi, qword [rbx + 36]
	mov byte [rsi], dl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rsi
	push rax
	jmp .38
.39:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .40
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	sub rsi, rdi
	push rsi
.42:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .43
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 36]
	mov rbx, 48
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 44], rsi
	pop rbx
	dec rbx
	push rbx
	jmp .42
.43:
	add rsp, 8
.40:
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
	jz .56
	mov rbx, _s215
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
.56:
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
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 0
	mov rdi, 0
	mov r8, 2
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rax
	test rdi, rdi
	jz .58
	mov rbx, _s213
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
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s214
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
.58:
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
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 577
	mov rdi, 448
	mov r8, 2
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rax
	test rdi, rdi
	jz .60
	mov rbx, _s213
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
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s214
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
.60:
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
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_open_fp_readonly
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_stat_size
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .62
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
	jz .64
	mov rbx, _s216
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
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s214
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
.64:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	jmp .66
.62:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.66:
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
	jz .67
	mov rbx, _s217
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
.67:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
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
.69:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .70
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
	jz .71
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.71:
	pop rbx
	pop rsi
	pop rdi
	inc rdi
	push rbx
	push rsi
	push rdi
	jmp .69
.70:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
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
.76:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .77
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
	jmp .76
.77:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memset:
	mov [_rs_p], rsp
	mov rsp, rbp
.78:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .79
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
	jmp .78
.79:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
salloc.push:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_galloc_buffer.len]
	add rsi, rdi
	mov rdi, 16384
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2786.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2786.1:
	mov rsi, rbx
	pop rdi
	mov r8, qword _galloc_buffer.data
	mov r9, [_galloc_buffer.len]
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
	mov rbx, [_galloc_buffer.len]
	pop rsi
	add rsi, rbx
	mov [_galloc_buffer.len], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
salloc.push_8:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, 16384
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2787.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2787.2:
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	pop rsi
	mov byte [rbx], sil
	mov rbx, [_galloc_buffer.len]
	inc rbx
	mov [_galloc_buffer.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Array64_c_c?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .82
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.82:
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
Array64.top?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .84
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.84:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	dec rbx
	mov rdi, 8
	imul rbx, rdi
	mov rsi, [rsi]
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array64.pop?:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .86
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.86:
	pop rbx
	pop rsi
	mov rdi, 8
	add rsi, rdi
	mov rdi, rsi
	mov rdi, [rdi]
	dec rdi
	mov qword [rsi], rdi
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Array64_a_b?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov r8, [r8]
	xor rdi, rdi
	cmp rsi, r8
	setae dil
	push rbx
	test rdi, rdi
	jz .88
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.88:
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
_fArray64.top?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .94
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.94:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	dec rbx
	mov rdi, 8
	imul rbx, rdi
	mov rsi, [rsi]
	add rbx, rsi
	mov rsi, 1
	push rbx
	push rsi
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
	mov rsi, rbx
	mov rdi, 8
	mov rax, rsi
	xor rdx, rdx
	div rdi
	mov rsi, 0
	xor rdi, rdi
	cmp rdx, rsi
	sete dil
	test rdi, rdi
	jnz .2788
	mov eax, 1
	mov edi, 2
	mov rsi, _s223
	mov rdx, 159
	syscall
	mov rdi, 1
	jmp _exit
.2788:
	mov rsi, 8
	mov rax, rbx
	xor rdx, rdx
	div rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov qword [rsi], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	mov qword [rsi], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array32_c_c?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .104
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.104:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, 4
	imul rbx, rdi
	mov rsi, [rsi]
	add rbx, rsi
	pop rsi
	mov dword [rbx], esi
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
Array32.top?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .106
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.106:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	dec rbx
	mov rdi, 4
	imul rbx, rdi
	mov rsi, [rsi]
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array32.pop?:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .108
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.108:
	pop rbx
	pop rsi
	mov rdi, 8
	add rsi, rdi
	mov rdi, rsi
	mov rdi, [rdi]
	dec rdi
	mov qword [rsi], rdi
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Array32_a_b?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov r8, [r8]
	xor rdi, rdi
	cmp rsi, r8
	setae dil
	push rbx
	test rdi, rdi
	jz .110
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.110:
	mov rbx, 4
	pop rsi
	imul rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rdi, [rdi]
	add rsi, rdi
	mov esi, [rsi]
	mov rbx, 1
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array32.init_with_buffer_sz_bytes:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	mov rax, rsi
	xor rdx, rdx
	div rdi
	mov rsi, 0
	xor rdi, rdi
	cmp rdx, rsi
	sete dil
	test rdi, rdi
	jnz .2789
	mov eax, 1
	mov edi, 2
	mov rsi, _s329
	mov rdx, 159
	syscall
	mov rdi, 1
	jmp _exit
.2789:
	mov rsi, 4
	mov rax, rbx
	xor rdx, rdx
	div rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov qword [rsi], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	mov qword [rsi], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
Array32.search_kv?:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 2
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, 0
	xor rsi, rsi
	cmp rdx, rbx
	sete sil
	test rsi, rsi
	jnz .2790
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 145
	syscall
	mov rdi, 1
	jmp _exit
.2790:
	mov rbx, 0
	push rbx
.122:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov r8, [r8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .123
	pop rbx
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2791.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s351
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2791.1:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	pop rdi
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .124
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2792.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s351
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2792.2:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.124:
	pop rbx
	inc rbx
	push rbx
	jmp .122
.123:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
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
	jz .132
	add rsp, 8
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
.132:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	pop rbx
	pop rsi
	push rbx
	push rsi
.134:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .135
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
	jz .136
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
.136:
	pop rbx
	inc rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .134
.135:
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
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
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
	jz .138
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
.138:
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
string.before_delim_u8:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .140
	add rsp, 8
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
.140:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	pop rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	push rsi
.142:
	mov rbx, 1
	test rbx, rbx
	jz .143
	pop rbx
	dec rbx
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
	jz .144
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	pop rbx
	sub rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.144:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .146
	jmp .143
.146:
	jmp .142
.143:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
string.before_delim_u8.ret_both:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 16]
	mov rsi, qword [rsp + 8]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.before_delim_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .148
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
.148:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	add rbx, rsi
	inc rbx
	mov rsi, qword [rsp + 0]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	dec r8
	sub r8, rsi
	pop rsi
	pop rdi
	push rbx
	push r8
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
	jz .156
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
.156:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	pop rsi
	pop rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, r8
	mov r9, rbx
	xor r10, r10
	cmp rdi, r9
	sete r10b
	push r8
	push rsi
	push rbx
	test r10, r10
	jz .73.1
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
	jmp .75.1
.73.1:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.1:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
string.last_index_of_u8:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .164
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.164:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	push rbx
.166:
	mov rbx, 1
	test rbx, rbx
	jz .167
	pop rbx
	dec rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	xor rsi, rsi
	cmp rdi, r8
	sete sil
	push rbx
	test rsi, rsi
	jz .168
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.168:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .170
	jmp .167
.170:
	jmp .166
.167:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
string.contains_u8:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .172
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.172:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.174:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .175
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
	jz .176
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.176:
	pop rbx
	inc rbx
	push rbx
	jmp .174
.175:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
string.trim_len_delim_u8:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
.178:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .179
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
	jz .180
	pop rbx
	dec rbx
	push rbx
	jmp .182
.180:
	jmp .179
.182:
	jmp .178
.179:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
char.parse_escape?:
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
	jz .183
	mov rbx, 39
	push rbx
	jmp .184
.183:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .186
	mov rbx, 34
	push rbx
	jmp .184
.186:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .188
	mov rbx, 92
	push rbx
	jmp .184
.188:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .190
	mov rbx, 7
	push rbx
	jmp .184
.190:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .192
	mov rbx, 8
	push rbx
	jmp .184
.192:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .194
	mov rbx, 12
	push rbx
	jmp .184
.194:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .196
	mov rbx, 10
	push rbx
	jmp .184
.196:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .198
	mov rbx, 13
	push rbx
	jmp .184
.198:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .200
	mov rbx, 9
	push rbx
	jmp .184
.200:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .202
	mov rbx, 11
	push rbx
	jmp .184
.202:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .204
	mov rbx, 96
	push rbx
	jmp .184
.204:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.205:
.184:
	pop rbx
	pop rsi
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
string.int_literal_overflow:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rbx
	test rbx, rbx
	jz .215
	mov rbx, _s244
	mov rsi, 19
	push rbx
	push rsi
	jmp .217
.215:
	mov rbx, _s245
	mov rsi, 20
	push rbx
	push rsi
.217:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, rsi
	seta dil
	push rbx
	test rdi, rdi
	jz .218
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
	jmp .219
.218:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .221
	mov rbx, qword [rsp + 8]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, 0
	push rbx
.222:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .223
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	xor rsi, rsi
	mov sil, [rdi]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .224
	jmp .223
.224:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	xor rsi, rsi
	mov sil, [rdi]
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .226
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.226:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	pop rbx
	inc rbx
	push rbx
	jmp .222
.223:
	add rsp, 8
.221:
.219:
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
string.to_num?:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.228:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .229
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
	sete r11b
	push rbx
	push rsi
	push r8
	test r11, r11
	jz .230
	add rsp, 8
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
.230:
	mov rbx, 48
	pop rsi
	sub rsi, rbx
	pop rbx
	add rbx, rsi
	pop rsi
	inc rsi
	push rbx
	push rsi
	jmp .228
.229:
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
itoa_unsafe:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .232
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
.232:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 21
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.234:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .235
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
	mov rsi, qword [rbx + 8]
	mov byte [rsi], dl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	push rax
	jmp .234
.235:
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
	jz .239
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.239:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	mov rbx, qword [_arg_p]
	add rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, rbx
	push rsi
	push rbx
	push rdi
.80.1:
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
	jz .81.1
	pop rbx
	inc rbx
	push rbx
	jmp .80.1
.81.1:
	pop rbx
	pop rsi
	sub rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
argp_print:
	mov [_rs_p], rsp
	mov rsp, rbp
.241:
	mov rbx, 1
	test rbx, rbx
	jz .242
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, rdi
	push rbx
	push rsi
	push rdi
	push r8
.80.2:
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
	jz .81.2
	pop rbx
	inc rbx
	push rbx
	jmp .80.2
.81.2:
	pop rbx
	pop rsi
	sub rbx, rsi
	mov rsi, 2
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
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
	jz .243
	jmp .242
	jmp .245
.243:
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.245:
	jmp .241
.242:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
get_lines_into_array:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov qword [r8 + 24], rdi
	push rsi
	push rbx
.246:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .247
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
	jz .248
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .250
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .252
.250:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .253
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
	jnz .2793.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2793.1:
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
	jnz .2794.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2794.2:
	pop rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .255
.253:
	jmp .247
.255:
.252:
	pop rbx
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	push rbx
.248:
	pop rbx
	inc rbx
	push rbx
	jmp .246
.247:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .256
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .258
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
	jnz .2795.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2795.3:
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
	jnz .2796.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2796.4:
.258:
.256:
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
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_arg_p]
	mov rsi, [rbx]
	add rbx, 8
	lea rbx, [rbx + rsi * 8 + 8]
	push rbx
.260:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .261
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, rdi
	push rbx
	push rsi
	push rdi
	push r8
.80.3:
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
	jz .81.3
	pop rbx
	inc rbx
	push rbx
	jmp .80.3
.81.3:
	pop rbx
	pop rsi
	sub rbx, rsi
	mov rsi, qword [rsp + 0]
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r10, qword [r8 + 8]
	push rbx
	push rsi
	push rdi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.starts_with
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .262
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
.262:
	add rsp, 8
	add rsp, 8
	mov rbx, 8
	pop rsi
	add rsi, rbx
	push rsi
	jmp .260
.261:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
join_path_cstr:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
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
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 47
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _galloc_buffer.data
	sub rbx, rdi
	mov rdi, [_galloc_buffer.len]
	sub rdi, rbx
	mov rbx, 0
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
errno?:
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
	jz .266
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.266:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rbx
	test r8, r8
	jz .268
	pop rbx
	not rbx
	inc rbx
	push rbx
.268:
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .270
	mov rbx, _s34
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.270:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .273
	mov rbx, _s35
	mov rsi, 34
	push rbx
	push rsi
	jmp .271
.273:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .275
	mov rbx, _s36
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.275:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .277
	mov rbx, _s37
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.277:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .279
	mov rbx, _s38
	mov rsi, 24
	push rbx
	push rsi
	jmp .271
.279:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .281
	mov rbx, _s39
	mov rsi, 33
	push rbx
	push rsi
	jmp .271
.281:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .283
	mov rbx, _s40
	mov rsi, 30
	push rbx
	push rsi
	jmp .271
.283:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .285
	mov rbx, _s41
	mov rsi, 27
	push rbx
	push rsi
	jmp .271
.285:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .287
	mov rbx, _s42
	mov rsi, 27
	push rbx
	push rsi
	jmp .271
.287:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .289
	mov rbx, _s43
	mov rsi, 27
	push rbx
	push rsi
	jmp .271
.289:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .291
	mov rbx, _s44
	mov rsi, 41
	push rbx
	push rsi
	jmp .271
.291:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .293
	mov rbx, _s45
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.293:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .295
	mov rbx, _s46
	mov rsi, 26
	push rbx
	push rsi
	jmp .271
.295:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .297
	mov rbx, _s47
	mov rsi, 20
	push rbx
	push rsi
	jmp .271
.297:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .299
	mov rbx, _s48
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.299:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .301
	mov rbx, _s49
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.301:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .303
	mov rbx, _s50
	mov rsi, 20
	push rbx
	push rsi
	jmp .271
.303:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .305
	mov rbx, _s51
	mov rsi, 33
	push rbx
	push rsi
	jmp .271
.305:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .307
	mov rbx, _s52
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.307:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .309
	mov rbx, _s53
	mov rsi, 25
	push rbx
	push rsi
	jmp .271
.309:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .311
	mov rbx, _s54
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.311:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .313
	mov rbx, _s55
	mov rsi, 25
	push rbx
	push rsi
	jmp .271
.313:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .315
	mov rbx, _s56
	mov rsi, 38
	push rbx
	push rsi
	jmp .271
.315:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .317
	mov rbx, _s57
	mov rsi, 28
	push rbx
	push rsi
	jmp .271
.317:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .319
	mov rbx, _s58
	mov rsi, 39
	push rbx
	push rsi
	jmp .271
.319:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .321
	mov rbx, _s59
	mov rsi, 24
	push rbx
	push rsi
	jmp .271
.321:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .323
	mov rbx, _s60
	mov rsi, 22
	push rbx
	push rsi
	jmp .271
.323:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .325
	mov rbx, _s61
	mov rsi, 32
	push rbx
	push rsi
	jmp .271
.325:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .327
	mov rbx, _s62
	mov rsi, 21
	push rbx
	push rsi
	jmp .271
.327:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .329
	mov rbx, _s63
	mov rsi, 29
	push rbx
	push rsi
	jmp .271
.329:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .331
	mov rbx, _s64
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.331:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .333
	mov rbx, _s65
	mov rsi, 19
	push rbx
	push rsi
	jmp .271
.333:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .335
	mov rbx, _s66
	mov rsi, 39
	push rbx
	push rsi
	jmp .271
.335:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .337
	mov rbx, _s67
	mov rsi, 38
	push rbx
	push rsi
	jmp .271
.337:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .339
	mov rbx, _s68
	mov rsi, 35
	push rbx
	push rsi
	jmp .271
.339:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .341
	mov rbx, _s69
	mov rsi, 33
	push rbx
	push rsi
	jmp .271
.341:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .343
	mov rbx, _s70
	mov rsi, 27
	push rbx
	push rsi
	jmp .271
.343:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .345
	mov rbx, _s71
	mov rsi, 33
	push rbx
	push rsi
	jmp .271
.345:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .347
	mov rbx, _s72
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.347:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .349
	mov rbx, _s73
	mov rsi, 41
	push rbx
	push rsi
	jmp .271
.349:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .351
	mov rbx, _s74
	mov rsi, 46
	push rbx
	push rsi
	jmp .271
.351:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .353
	mov rbx, _s75
	mov rsi, 35
	push rbx
	push rsi
	jmp .271
.353:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .355
	mov rbx, _s76
	mov rsi, 26
	push rbx
	push rsi
	jmp .271
.355:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .357
	mov rbx, _s77
	mov rsi, 26
	push rbx
	push rsi
	jmp .271
.357:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .359
	mov rbx, _s78
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.359:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .361
	mov rbx, _s79
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.361:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .363
	mov rbx, _s80
	mov rsi, 30
	push rbx
	push rsi
	jmp .271
.363:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .365
	mov rbx, _s81
	mov rsi, 21
	push rbx
	push rsi
	jmp .271
.365:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .367
	mov rbx, _s82
	mov rsi, 49
	push rbx
	push rsi
	jmp .271
.367:
	pop rbx
	mov rsi, rbx
	mov rdi, 84
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .369
	mov rbx, _s83
	mov rsi, 58
	push rbx
	push rsi
	jmp .271
.369:
	pop rbx
	mov rsi, rbx
	mov rdi, 87
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .371
	mov rbx, _s84
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.371:
	pop rbx
	mov rsi, rbx
	mov rdi, 88
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .373
	mov rbx, _s85
	mov rsi, 41
	push rbx
	push rsi
	jmp .271
.373:
	pop rbx
	mov rsi, rbx
	mov rdi, 89
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .375
	mov rbx, _s86
	mov rsi, 43
	push rbx
	push rsi
	jmp .271
.375:
	pop rbx
	mov rsi, rbx
	mov rdi, 90
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .377
	mov rbx, _s87
	mov rsi, 27
	push rbx
	push rsi
	jmp .271
.377:
	pop rbx
	mov rsi, rbx
	mov rdi, 91
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .379
	mov rbx, _s88
	mov rsi, 43
	push rbx
	push rsi
	jmp .271
.379:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .381
	mov rbx, _s89
	mov rsi, 36
	push rbx
	push rsi
	jmp .271
.381:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .383
	mov rbx, _s90
	mov rsi, 40
	push rbx
	push rsi
	jmp .271
.383:
	pop rbx
	mov rsi, rbx
	mov rdi, 94
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .385
	mov rbx, _s91
	mov rsi, 43
	push rbx
	push rsi
	jmp .271
.385:
	pop rbx
	mov rsi, rbx
	mov rdi, 95
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .387
	mov rbx, _s92
	mov rsi, 36
	push rbx
	push rsi
	jmp .271
.387:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .389
	mov rbx, _s93
	mov rsi, 44
	push rbx
	push rsi
	jmp .271
.389:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .391
	mov rbx, _s94
	mov rsi, 55
	push rbx
	push rsi
	jmp .271
.391:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .393
	mov rbx, _s95
	mov rsi, 35
	push rbx
	push rsi
	jmp .271
.393:
	pop rbx
	mov rsi, rbx
	mov rdi, 99
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .395
	mov rbx, _s96
	mov rsi, 47
	push rbx
	push rsi
	jmp .271
.395:
	pop rbx
	mov rsi, rbx
	mov rdi, 100
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .397
	mov rbx, _s97
	mov rsi, 26
	push rbx
	push rsi
	jmp .271
.397:
	pop rbx
	mov rsi, rbx
	mov rdi, 101
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .399
	mov rbx, _s98
	mov rsi, 36
	push rbx
	push rsi
	jmp .271
.399:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .401
	mov rbx, _s99
	mov rsi, 47
	push rbx
	push rsi
	jmp .271
.401:
	pop rbx
	mov rsi, rbx
	mov rdi, 103
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .403
	mov rbx, _s100
	mov rsi, 47
	push rbx
	push rsi
	jmp .271
.403:
	pop rbx
	mov rsi, rbx
	mov rdi, 104
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .405
	mov rbx, _s101
	mov rsi, 37
	push rbx
	push rsi
	jmp .271
.405:
	pop rbx
	mov rsi, rbx
	mov rdi, 105
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .407
	mov rbx, _s102
	mov rsi, 35
	push rbx
	push rsi
	jmp .271
.407:
	pop rbx
	mov rsi, rbx
	mov rdi, 106
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .409
	mov rbx, _s103
	mov rsi, 49
	push rbx
	push rsi
	jmp .271
.409:
	pop rbx
	mov rsi, rbx
	mov rdi, 107
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .411
	mov rbx, _s104
	mov rsi, 46
	push rbx
	push rsi
	jmp .271
.411:
	pop rbx
	mov rsi, rbx
	mov rdi, 108
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .413
	mov rbx, _s105
	mov rsi, 57
	push rbx
	push rsi
	jmp .271
.413:
	pop rbx
	mov rsi, rbx
	mov rdi, 109
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .415
	mov rbx, _s106
	mov rsi, 49
	push rbx
	push rsi
	jmp .271
.415:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .417
	mov rbx, _s107
	mov rsi, 32
	push rbx
	push rsi
	jmp .271
.417:
	pop rbx
	mov rsi, rbx
	mov rdi, 111
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .419
	mov rbx, _s108
	mov rsi, 33
	push rbx
	push rsi
	jmp .271
.419:
	pop rbx
	mov rsi, rbx
	mov rdi, 112
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .421
	mov rbx, _s109
	mov rsi, 24
	push rbx
	push rsi
	jmp .271
.421:
	pop rbx
	mov rsi, rbx
	mov rdi, 113
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .423
	mov rbx, _s110
	mov rsi, 31
	push rbx
	push rsi
	jmp .271
.423:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .425
	mov rbx, _s111
	mov rsi, 40
	push rbx
	push rsi
	jmp .271
.425:
	pop rbx
	mov rsi, rbx
	mov rdi, 115
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .427
	mov rbx, _s112
	mov rsi, 39
	push rbx
	push rsi
	jmp .271
.427:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .429
	mov rbx, _s113
	mov rsi, 26
	push rbx
	push rsi
	jmp .271
.429:
	pop rbx
	mov rsi, rbx
	mov rdi, 122
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .431
	mov rbx, _s114
	mov rsi, 28
	push rbx
	push rsi
	jmp .271
.431:
	pop rbx
	mov rsi, rbx
	mov rdi, 125
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .433
	mov rbx, _s115
	mov rsi, 30
	push rbx
	push rsi
	jmp .271
.433:
	pop rbx
	mov rsi, rbx
	mov rdi, 130
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .435
	mov rbx, _s116
	mov rsi, 23
	push rbx
	push rsi
	jmp .271
.435:
	pop rbx
	mov rsi, rbx
	mov rdi, 131
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .437
	mov rbx, _s117
	mov rsi, 39
	push rbx
	push rsi
	jmp .271
.437:
	pop rbx
	mov rsi, rbx
	mov rdi, 95
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .439
	mov rbx, _s118
	mov rsi, 33
	push rbx
	push rsi
	jmp .271
.439:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .441
	mov rbx, _s119
	mov rsi, 36
	push rbx
	push rsi
	jmp .442
.441:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .444
	mov rbx, _s120
	mov rsi, 35
	push rbx
	push rsi
	jmp .442
.444:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .446
	mov rbx, _s121
	mov rsi, 23
	push rbx
	push rsi
	jmp .442
.446:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .448
	mov rbx, _s122
	mov rsi, 22
	push rbx
	push rsi
	jmp .442
.448:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .450
	mov rbx, _s123
	mov rsi, 33
	push rbx
	push rsi
	jmp .442
.450:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .452
	mov rbx, _s124
	mov rsi, 38
	push rbx
	push rsi
	jmp .442
.452:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .454
	mov rbx, _s125
	mov rsi, 35
	push rbx
	push rsi
	jmp .442
.454:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .456
	mov rbx, _s126
	mov rsi, 23
	push rbx
	push rsi
	jmp .442
.456:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .458
	mov rbx, _s127
	mov rsi, 24
	push rbx
	push rsi
	jmp .442
.458:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .460
	mov rbx, _s128
	mov rsi, 34
	push rbx
	push rsi
	jmp .442
.460:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .462
	mov rbx, _s129
	mov rsi, 22
	push rbx
	push rsi
	jmp .442
.462:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .464
	mov rbx, _s130
	mov rsi, 17
	push rbx
	push rsi
	jmp .442
.464:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .466
	mov rbx, _s131
	mov rsi, 30
	push rbx
	push rsi
	jmp .442
.466:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .468
	mov rbx, _s132
	mov rsi, 22
	push rbx
	push rsi
	jmp .442
.468:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .470
	mov rbx, _s133
	mov rsi, 37
	push rbx
	push rsi
	jmp .442
.470:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .472
	mov rbx, _s134
	mov rsi, 29
	push rbx
	push rsi
	jmp .442
.472:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .474
	mov rbx, _s135
	mov rsi, 28
	push rbx
	push rsi
	jmp .442
.474:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .476
	mov rbx, _s136
	mov rsi, 27
	push rbx
	push rsi
	jmp .442
.476:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .478
	mov rbx, _s137
	mov rsi, 21
	push rbx
	push rsi
	jmp .442
.478:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .480
	mov rbx, _s138
	mov rsi, 32
	push rbx
	push rsi
	jmp .442
.480:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .482
	mov rbx, _s139
	mov rsi, 38
	push rbx
	push rsi
	jmp .442
.482:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .484
	mov rbx, _s140
	mov rsi, 30
	push rbx
	push rsi
	jmp .442
.484:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .486
	mov rbx, _s141
	mov rsi, 22
	push rbx
	push rsi
	jmp .442
.486:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .488
	mov rbx, _s142
	mov rsi, 22
	push rbx
	push rsi
	jmp .442
.488:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .490
	mov rbx, _s143
	mov rsi, 35
	push rbx
	push rsi
	jmp .442
.490:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .492
	mov rbx, _s144
	mov rsi, 28
	push rbx
	push rsi
	jmp .442
.492:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .494
	mov rbx, _s145
	mov rsi, 37
	push rbx
	push rsi
	jmp .442
.494:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .496
	mov rbx, _s146
	mov rsi, 37
	push rbx
	push rsi
	jmp .442
.496:
	pop rbx
	mov rsi, rbx
	mov rdi, 78
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .498
	mov rbx, _s147
	mov rsi, 32
	push rbx
	push rsi
	jmp .442
.498:
	pop rbx
	mov rsi, rbx
	mov rdi, 79
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .500
	mov rbx, _s148
	mov rsi, 48
	push rbx
	push rsi
	jmp .442
.500:
	pop rbx
	mov rsi, rbx
	mov rdi, 80
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .502
	mov rbx, _s149
	mov rsi, 46
	push rbx
	push rsi
	jmp .442
.502:
	pop rbx
	mov rsi, rbx
	mov rdi, 81
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .504
	mov rbx, _s150
	mov rsi, 39
	push rbx
	push rsi
	jmp .442
.504:
	pop rbx
	mov rsi, rbx
	mov rdi, 82
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .506
	mov rbx, _s151
	mov rsi, 57
	push rbx
	push rsi
	jmp .442
.506:
	pop rbx
	mov rsi, rbx
	mov rdi, 83
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .508
	mov rbx, _s152
	mov rsi, 48
	push rbx
	push rsi
	jmp .442
.508:
	pop rbx
	mov rsi, rbx
	mov rdi, 85
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .510
	mov rbx, _s153
	mov rsi, 54
	push rbx
	push rsi
	jmp .442
.510:
	pop rbx
	mov rsi, rbx
	mov rdi, 86
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .512
	mov rbx, _s154
	mov rsi, 29
	push rbx
	push rsi
	jmp .442
.512:
	pop rbx
	mov rsi, rbx
	mov rdi, 117
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .514
	mov rbx, _s155
	mov rsi, 34
	push rbx
	push rsi
	jmp .442
.514:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .516
	mov rbx, _s156
	mov rsi, 37
	push rbx
	push rsi
	jmp .442
.516:
	pop rbx
	mov rsi, rbx
	mov rdi, 119
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .518
	mov rbx, _s157
	mov rsi, 39
	push rbx
	push rsi
	jmp .442
.518:
	pop rbx
	mov rsi, rbx
	mov rdi, 120
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .520
	mov rbx, _s158
	mov rsi, 29
	push rbx
	push rsi
	jmp .442
.520:
	pop rbx
	mov rsi, rbx
	mov rdi, 121
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .522
	mov rbx, _s159
	mov rsi, 28
	push rbx
	push rsi
	jmp .442
.522:
	pop rbx
	mov rsi, rbx
	mov rdi, 123
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .524
	mov rbx, _s160
	mov rsi, 27
	push rbx
	push rsi
	jmp .442
.524:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .526
	mov rbx, _s161
	mov rsi, 31
	push rbx
	push rsi
	jmp .442
.526:
	pop rbx
	mov rsi, rbx
	mov rdi, 126
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .528
	mov rbx, _s162
	mov rsi, 35
	push rbx
	push rsi
	jmp .442
.528:
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .530
	mov rbx, _s163
	mov rsi, 29
	push rbx
	push rsi
	jmp .442
.530:
	pop rbx
	mov rsi, rbx
	mov rdi, 128
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .532
	mov rbx, _s164
	mov rsi, 34
	push rbx
	push rsi
	jmp .442
.532:
	pop rbx
	mov rsi, rbx
	mov rdi, 129
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .534
	mov rbx, _s165
	mov rsi, 42
	push rbx
	push rsi
	jmp .442
.534:
	pop rbx
	mov rsi, rbx
	mov rdi, 132
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .536
	mov rbx, _s166
	mov rsi, 47
	push rbx
	push rsi
	jmp .442
.536:
	pop rbx
	mov rsi, rbx
	mov rdi, 133
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .538
	mov rbx, _s167
	mov rsi, 42
	push rbx
	push rsi
	jmp .442
.538:
	mov rbx, _s168
	mov rsi, 15
	push rbx
	push rsi
.539:
.442:
.440:
.271:
	pop rbx
	pop rsi
	pop rdi
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s31
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
	mov rbx, _s32
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
find_abs_path_of_executable?:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	or r8, rdi
	test r8, r8
	jz .540
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.540:
	mov rbx, _s758
	mov rsi, 4
	push rbx
	push rsi
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
	jnz .2797
	mov eax, 1
	mov edi, 2
	mov rsi, _s759
	mov rdx, 123
	syscall
	mov rdi, 1
	jmp _exit
.2797:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
.542:
	mov rbx, 1
	test rbx, rbx
	jz .543
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 24]
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
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 24]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	or r8, rdi
	test r8, r8
	jz .544
	add rsp, 8
	add rsp, 8
	jmp .543
	jmp .546
.544:
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call join_path_cstr
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
	jz .547
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.547:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, qword _galloc_buffer.data
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, [_galloc_buffer.len]
	xor r8, r8
	cmp rbx, rdi
	setbe r8b
	test r8, r8
	jnz .2798.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2798.1:
	mov [_galloc_buffer.len], rsi
.546:
	add rsp, 8
	add rsp, 8
	jmp .542
.543:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
is_abs_path:
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
	jz .549
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.549:
	add rsp, 8
	pop rbx
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, 47
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
is_exe_name:
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
	jz .551
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.551:
	mov rbx, qword [rsp + 8]
	pop rsi
	pop rdi
	mov r8, 47
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.contains_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .553
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.553:
	pop rbx
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .555
	mov rbx, 1
	push rbx
	jmp .557
.555:
	mov rbx, 0
	push rbx
.557:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
get_executable_path:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4096
	mov rsi, rbx
	mov rdi, [_galloc_buffer.len]
	add rsi, rdi
	mov rdi, 16384
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2799.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2799.3:
	mov rsi, qword _galloc_buffer.data
	mov rdi, [_galloc_buffer.len]
	add rsi, rdi
	mov rdi, [_galloc_buffer.len]
	add rbx, rdi
	mov [_galloc_buffer.len], rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, _s171
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 4096
	mov r8, 89
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2800
	mov eax, 1
	mov edi, 2
	mov rsi, _s172
	mov rdx, 98
	syscall
	mov rdi, 1
	jmp _exit
.2800:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	add rax, rsi
	mov rbx, qword _galloc_buffer.data
	sub rax, rbx
	mov rbx, rax
	mov rsi, [_galloc_buffer.len]
	xor rdi, rdi
	cmp rbx, rsi
	setbe dil
	test rdi, rdi
	jnz .2801.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2801.2:
	mov [_galloc_buffer.len], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _galloc_buffer.data
	sub rbx, rdi
	mov rdi, [_galloc_buffer.len]
	sub rdi, rbx
	mov rbx, 0
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
	mov rbx, 0
	test rbx, rbx
	jnz .2802
	mov eax, 1
	mov edi, 2
	mov rsi, _s174
	mov rdx, 126
	syscall
	mov rdi, 1
	jmp _exit
.2802:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
execute_child?:
	sub rsp, 72
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_exe_name
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .558
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	jmp .560
.558:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call find_abs_path_of_executable?
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .561
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.561:
.560:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, 57
	mov rax, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setge dil
	test rdi, rdi
	jnz .2803
	mov eax, 1
	mov edi, 2
	mov rsi, _s760
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2803:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .563
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	or rsi, rdi
	test rsi, rsi
	jz .565
	mov rbx, 18446744073709551516
	mov rsi, _s761
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
	setg dil
	test rdi, rdi
	jnz .2804
	mov eax, 1
	mov edi, 2
	mov rsi, _s762
	mov rdx, 129
	syscall
	mov rdi, 1
	jmp _exit
.2804:
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	test rsi, rsi
	jz .567
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 1
	mov rdi, 33
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 18446744073709551615
	xor rsi, rsi
	cmp rax, rbx
	setne sil
	test rsi, rsi
	jnz .2805
	mov eax, 1
	mov edi, 2
	mov rsi, _s763
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2805:
.567:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	test rsi, rsi
	jz .569
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 2
	mov rdi, 33
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 18446744073709551615
	xor rsi, rsi
	cmp rax, rbx
	setne sil
	test rsi, rsi
	jnz .2806
	mov eax, 1
	mov edi, 2
	mov rsi, _s764
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2806:
.569:
.565:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push rsi
	test r8, r8
	jz .571
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	jmp .573
.571:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
.573:
	mov rbx, qword [_arg_p]
	mov rsi, [rbx]
	add rbx, 8
	lea rbx, [rbx + rsi * 8 + 8]
	mov rsi, 59
	mov rax, rsi
	mov rdx, rbx
	pop rsi
	pop rdi
	syscall
	mov rbx, rax
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rax
	push rbx
	test r8, r8
	jz .264.1
	pop rbx
	not rbx
	inc rbx
	push rbx
.264.1:
	mov rbx, 2
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .574
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.574:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2807
	mov eax, 1
	mov edi, 2
	mov rsi, _s765
	mov rdx, 129
	syscall
	mov rdi, 1
	jmp _exit
.2807:
	jmp .576
.563:
.577:
	mov rbx, 1
	test rbx, rbx
	jz .578
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	add rsi, 64
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
	mov rbx, 18446744073709551615
	xor rsi, rsi
	cmp rax, rbx
	setne sil
	test rsi, rsi
	jnz .2808
	mov eax, 1
	mov edi, 2
	mov rsi, _s766
	mov rdx, 128
	syscall
	mov rdi, 1
	jmp _exit
.2808:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 127
	and rsi, rbx
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .579
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 65280
	and rsi, rbx
	mov rbx, 8
	mov rcx, rbx
	shr rsi, cl
	mov rbx, rsi
	mov rdi, 0
	xor r8, r8
	cmp rbx, rdi
	setg r8b
	push rsi
	test r8, r8
	jz .581
	mov rbx, 60
	mov rax, rbx
	pop rdi
	syscall
	jmp .583
.581:
	add rsp, 8
.583:
	jmp .578
	jmp .580
.579:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 127
	and rsi, rbx
	mov rbx, 1
	add rsi, rbx
	mov rbx, 1
	mov rcx, rbx
	shr rsi, cl
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setg dil
	test rdi, rdi
	jz .585
	mov rbx, _s767
	mov rsi, 55
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 127
	and rsi, rbx
	mov rbx, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.585:
.580:
	jmp .577
.578:
.576:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, qword _galloc_buffer.data
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, [_galloc_buffer.len]
	xor r8, r8
	cmp rbx, rdi
	setbe r8b
	test r8, r8
	jnz .2809.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2809.3:
	mov [_galloc_buffer.len], rsi
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
normalise_path:
	sub rsp, 80
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 4096
	mov rsi, rbx
	mov rdi, [_galloc_buffer.len]
	add rsi, rdi
	mov rdi, 16384
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2810.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2810.4:
	mov rsi, qword _galloc_buffer.data
	mov rdi, [_galloc_buffer.len]
	add rsi, rdi
	mov rdi, [_galloc_buffer.len]
	add rbx, rdi
	mov [_galloc_buffer.len], rbx
	mov rbx, 4096
	mov rdi, qword [_rs_p]
	add rdi, 16
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_abs_path
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rdi
	mov qword [rbx + 64], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .586
	mov rbx, 47
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
.586:
.588:
	mov rbx, 1
	test rbx, rbx
	jz .589
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rdi, qword [rbx + 72]
	mov rbx, 47
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.before_delim_u8.ret_both
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	pop rsi
	mov qword [rbx + 64], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .590
	add rsp, 8
	add rsp, 8
	jmp .591
.590:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s234
	mov r8, 2
	mov r9, rsi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rbx
	push rsi
	push rdi
	push r8
	test r11, r11
	jz .73.2
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
	jmp .75.2
.73.2:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.2:
	pop rbx
	test rbx, rbx
	jz .593
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	add rsp, 8
	add rsp, 8
	jmp .591
.593:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s231
	mov r8, 1
	mov r9, rsi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rbx
	push rsi
	push rdi
	push r8
	test r11, r11
	jz .73.3
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
	jmp .75.3
.73.3:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.3:
	pop rbx
	test rbx, rbx
	jz .595
	add rsp, 8
	add rsp, 8
	jmp .591
.595:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .597
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	add rsp, 8
	add rsp, 8
	jmp .599
.597:
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2811.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2811.5:
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2812.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2812.6:
.599:
.596:
.591:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rdi, qword [rbx + 72]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	or r8, rdi
	test r8, r8
	jz .600
	jmp .589
.600:
	jmp .588
.589:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	and rdi, rsi
	test rdi, rdi
	jz .602
	mov rbx, 0
	push rbx
.604:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 56]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .605
	mov rbx, _s234
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 56]
	dec r8
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov r8, 8
	add rsi, r8
	mov rsi, [rsi]
	mov r8, 0
	xor r9, r9
	cmp rsi, r8
	sete r9b
	and rdi, r9
	push rbx
	test rdi, rdi
	jz .606
	jmp .605
.606:
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .604
.605:
	add rsp, 8
.602:
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .608
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
.610:
	mov rbx, 1
	test rbx, rbx
	jz .611
	pop rbx
	dec rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	add rdi, 16
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2813.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2813.1:
	pop rbx
	pop rsi
	dec rsi
	mov rdi, rsi
	mov r8, qword [_rs_p]
	add r8, 16
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2814.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2814.2:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
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
	jz .612
	jmp .611
	jmp .614
.612:
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
.614:
	jmp .610
.611:
	add rsp, 8
	jmp .615
.608:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, qword _galloc_buffer.data
	mov rdi, [_galloc_buffer.len]
	add rbx, rdi
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .616
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .618
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
	jmp .620
.618:
	mov rbx, _s231
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
.620:
.616:
.615:
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 40]
	mov rsi, rdi
	mov r8, qword _galloc_buffer.data
	sub rsi, r8
	mov r8, [_galloc_buffer.len]
	sub r8, rsi
	mov rsi, 0
	push rbx
	push rdi
	push r8
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 48], rsi
	inc rbx
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 48]
	add rbx, rdi
	inc rbx
	mov rsi, qword _galloc_buffer.data
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_galloc_buffer.len]
	xor r8, r8
	cmp rsi, rdi
	setbe r8b
	test r8, r8
	jnz .2815.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2815.4:
	mov [_galloc_buffer.len], rbx
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 48]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
is_dir:
	sub rsp, 144
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, 4
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	mov rbx, rax
	mov rsi, 2
	mov rdi, rsi
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	setl r9b
	push rax
	push rbx
	push rsi
	test r9, r9
	jz .10.1
	pop rbx
	not rbx
	inc rbx
	push rbx
.10.1:
	pop rbx
	pop rsi
	mov rdi, rsi
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	setl r9b
	push rbx
	push rsi
	test r9, r9
	jz .10.2
	pop rbx
	not rbx
	inc rbx
	push rbx
.10.2:
	pop rsi
	pop rdi
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .623
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
.623:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2816
	mov eax, 1
	mov edi, 2
	mov rsi, _s236
	mov rdx, 115
	syscall
	mov rdi, 1
	jmp _exit
.2816:
	mov rbx, qword [_rs_p]
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 61440
	and rbx, rsi
	mov rsi, 16384
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
file_dir:
	sub rsp, 8
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
	jz .625
	add rsp, 8
	add rsp, 8
	mov rbx, _s231
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.625:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, 47
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.last_index_of_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .627
	add rsp, 8
	mov rbx, _s231
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.627:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .629
	add rsp, 8
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.629:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
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
	jz .631
	mov rbx, _s195
	mov rsi, 4
	push rbx
	push rsi
	jmp .632
.631:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .634
	mov rbx, _s196
	mov rsi, 4
	push rbx
	push rsi
	jmp .632
.634:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2817
	mov eax, 1
	mov edi, 2
	mov rsi, _s754
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.2817:
	push rbx
	push rsi
.635:
.632:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
OS.from_str?:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s198
	mov r8, 5
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.4
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
	jmp .75.4
.73.4:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.4:
	pop rbx
	test rbx, rbx
	jz .636
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .637
.636:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s199
	mov r8, 7
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.5
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
	jmp .75.5
.73.5:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.5:
	pop rbx
	test rbx, rbx
	jz .639
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	jmp .637
.639:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.640:
.637:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
OS.to_pretty_str:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .641
	mov rbx, _s1
	mov rsi, 5
	push rbx
	push rsi
	jmp .642
.641:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .644
	mov rbx, _s2
	mov rsi, 7
	push rbx
	push rsi
	jmp .642
.644:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2818
	mov eax, 1
	mov edi, 2
	mov rsi, _s3
	mov rdx, 71
	syscall
	mov rdi, 1
	jmp _exit
.2818:
	push rbx
	push rsi
.645:
.642:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
OS.elf_os_abi_from?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .646
	mov rbx, 0
	mov rsi, 1
	push rbx
	push rsi
	jmp .647
.646:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .649
	mov rbx, 9
	mov rsi, 1
	push rbx
	push rsi
	jmp .647
.649:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.650:
.647:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
new_string_view:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, [_gstring_buffer.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 9
	add rdi, rsi
	add rbx, rdi
	mov rsi, rbx
	mov rdi, 8388608
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2819.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2819.1:
	mov rsi, qword _gstring_buffer
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, rsi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov qword [rdi], r9
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 9
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
	mov rsi, 9
	add rbx, rsi
	mov rsi, 8388608
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2820.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2820.2:
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
	mov rdi, 9
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
	mov rsi, 8388608
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2821.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2821.3:
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	mov r8, [r8]
	add rdi, r8
	mov byte [rdi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rbx, [rbx]
	inc rbx
	mov qword [rsi], rbx
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
	mov rsi, 8388608
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2822.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2822.4:
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
	jz .651
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.651:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, 8388608
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2823.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2823.5:
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov [_gstring_buffer.len], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 8
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rdi, [rdi]
	add rsi, rdi
	mov rbx, rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	push rsi
	push rbx
	push r8
	push r9
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
	mov rsi, 8388608
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2824.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2824.6:
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
error.start_bold_error:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
error.end_bold_error:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s31
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
	mov rbx, _s32
	mov rsi, 4
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
notice.start_bold_notice:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbx, _s207
	mov rsi, 4
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
notice.end_bold_notice:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s31
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
	mov rbx, _s32
	mov rsi, 4
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
	jnz .2825
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2825:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
opened_files.does_fp_exist:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.653:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gopened_files.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .654
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gopened_files.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2826.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2826.1:
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
	mov r9, qword [r8 + 0]
	mov r10, qword [r8 + 8]
	mov r8, rsi
	mov r11, r10
	xor r12, r12
	cmp r8, r11
	sete r12b
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	test r12, r12
	jz .73.6
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
	jmp .75.6
.73.6:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.6:
	pop rbx
	test rbx, rbx
	jz .655
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.655:
	pop rbx
	inc rbx
	push rbx
	jmp .653
.654:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
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
	jz .657
	mov rbx, _s318
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.657:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .660
	mov rbx, _s319
	mov rsi, 10
	push rbx
	push rsi
	jmp .658
.660:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .662
	mov rbx, _s320
	mov rsi, 10
	push rbx
	push rsi
	jmp .658
.662:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .664
	mov rbx, _s249
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.664:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .666
	mov rbx, _s250
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.666:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .668
	mov rbx, _s251
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.668:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .670
	mov rbx, _s252
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.670:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .672
	mov rbx, _s253
	mov rsi, 5
	push rbx
	push rsi
	jmp .658
.672:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .674
	mov rbx, _s254
	mov rsi, 6
	push rbx
	push rsi
	jmp .658
.674:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .676
	mov rbx, _s255
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.676:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .678
	mov rbx, _s256
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.678:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .680
	mov rbx, _s257
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.680:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .682
	mov rbx, _s258
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.682:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .684
	mov rbx, _s259
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.684:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .686
	mov rbx, _s260
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.686:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .688
	mov rbx, _s261
	mov rsi, 5
	push rbx
	push rsi
	jmp .658
.688:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .690
	mov rbx, _s262
	mov rsi, 5
	push rbx
	push rsi
	jmp .658
.690:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .692
	mov rbx, _s263
	mov rsi, 8
	push rbx
	push rsi
	jmp .658
.692:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .694
	mov rbx, _s264
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.694:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .696
	mov rbx, _s206
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.696:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .698
	mov rbx, _s265
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.698:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .700
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.700:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .702
	mov rbx, _s266
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.702:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .704
	mov rbx, _s267
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.704:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .706
	mov rbx, _s268
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.706:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .708
	mov rbx, _s269
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.708:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .710
	mov rbx, _s270
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.710:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .712
	mov rbx, _s271
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.712:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .714
	mov rbx, _s272
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.714:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .716
	mov rbx, _s273
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.716:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .718
	mov rbx, _s274
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.718:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .720
	mov rbx, _s275
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.720:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .722
	mov rbx, _s276
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.722:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .724
	mov rbx, _s277
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.724:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .726
	mov rbx, _s278
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.726:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .728
	mov rbx, _s279
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.728:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .730
	mov rbx, _s280
	mov rsi, 5
	push rbx
	push rsi
	jmp .658
.730:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .732
	mov rbx, _s281
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.732:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .734
	mov rbx, _s282
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.734:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .736
	mov rbx, _s283
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.736:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .738
	mov rbx, _s284
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.738:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .740
	mov rbx, _s285
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.740:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .742
	mov rbx, _s286
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.742:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .744
	mov rbx, _s287
	mov rsi, 1
	push rbx
	push rsi
	jmp .658
.744:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .746
	mov rbx, _s288
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.746:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .748
	mov rbx, _s289
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.748:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .750
	mov rbx, _s290
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.750:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .752
	mov rbx, _s291
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.752:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .754
	mov rbx, _s292
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.754:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .756
	mov rbx, _s293
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.756:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .758
	mov rbx, _s294
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.758:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .760
	mov rbx, _s295
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.760:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .762
	mov rbx, _s296
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.762:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .764
	mov rbx, _s297
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.764:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .766
	mov rbx, _s298
	mov rsi, 2
	push rbx
	push rsi
	jmp .658
.766:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .768
	mov rbx, _s299
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.768:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .770
	mov rbx, _s300
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.770:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .772
	mov rbx, _s301
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.772:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .774
	mov rbx, _s302
	mov rsi, 7
	push rbx
	push rsi
	jmp .658
.774:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .776
	mov rbx, _s303
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.776:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .778
	mov rbx, _s304
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.778:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .780
	mov rbx, _s305
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.780:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .782
	mov rbx, _s306
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.782:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .784
	mov rbx, _s307
	mov rsi, 6
	push rbx
	push rsi
	jmp .658
.784:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .786
	mov rbx, _s308
	mov rsi, 7
	push rbx
	push rsi
	jmp .658
.786:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .788
	mov rbx, _s309
	mov rsi, 3
	push rbx
	push rsi
	jmp .658
.788:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .790
	mov rbx, _s310
	mov rsi, 8
	push rbx
	push rsi
	jmp .658
.790:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .792
	mov rbx, _s311
	mov rsi, 4
	push rbx
	push rsi
	jmp .658
.792:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2827
	mov eax, 1
	mov edi, 2
	mov rsi, _s321
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2827:
	push rbx
	push rsi
.793:
.658:
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
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s249
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.7
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
	jmp .75.7
.73.7:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.7:
	pop rbx
	test rbx, rbx
	jz .794
	mov rbx, 4
	push rbx
	jmp .795
.794:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s250
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.8
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
	jmp .75.8
.73.8:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.8:
	pop rbx
	test rbx, rbx
	jz .797
	mov rbx, 5
	push rbx
	jmp .795
.797:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s251
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.9
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
	jmp .75.9
.73.9:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.9:
	pop rbx
	test rbx, rbx
	jz .799
	mov rbx, 6
	push rbx
	jmp .795
.799:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s252
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.10
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
	jmp .75.10
.73.10:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.10:
	pop rbx
	test rbx, rbx
	jz .801
	mov rbx, 7
	push rbx
	jmp .795
.801:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s253
	mov r8, 5
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.11
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
	jmp .75.11
.73.11:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.11:
	pop rbx
	test rbx, rbx
	jz .803
	mov rbx, 9
	push rbx
	jmp .795
.803:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s254
	mov r8, 6
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.12
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
	jmp .75.12
.73.12:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.12:
	pop rbx
	test rbx, rbx
	jz .805
	mov rbx, 10
	push rbx
	jmp .795
.805:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s255
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.13
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
	jmp .75.13
.73.13:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.13:
	pop rbx
	test rbx, rbx
	jz .807
	mov rbx, 11
	push rbx
	jmp .795
.807:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s256
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.14
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
	jmp .75.14
.73.14:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.14:
	pop rbx
	test rbx, rbx
	jz .809
	mov rbx, 12
	push rbx
	jmp .795
.809:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s257
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.15
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
	jmp .75.15
.73.15:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.15:
	pop rbx
	test rbx, rbx
	jz .811
	mov rbx, 13
	push rbx
	jmp .795
.811:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s258
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.16
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
	jmp .75.16
.73.16:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.16:
	pop rbx
	test rbx, rbx
	jz .813
	mov rbx, 15
	push rbx
	jmp .795
.813:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s259
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.17
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
	jmp .75.17
.73.17:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.17:
	pop rbx
	test rbx, rbx
	jz .815
	mov rbx, 16
	push rbx
	jmp .795
.815:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s260
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.18
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
	jmp .75.18
.73.18:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.18:
	pop rbx
	test rbx, rbx
	jz .817
	mov rbx, 17
	push rbx
	jmp .795
.817:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s261
	mov r8, 5
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.19
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
	jmp .75.19
.73.19:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.19:
	pop rbx
	test rbx, rbx
	jz .819
	mov rbx, 18
	push rbx
	jmp .795
.819:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s262
	mov r8, 5
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.20
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
	jmp .75.20
.73.20:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.20:
	pop rbx
	test rbx, rbx
	jz .821
	mov rbx, 19
	push rbx
	jmp .795
.821:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s263
	mov r8, 8
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.21
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
	jmp .75.21
.73.21:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.21:
	pop rbx
	test rbx, rbx
	jz .823
	mov rbx, 20
	push rbx
	jmp .795
.823:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s264
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.22
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
	jmp .75.22
.73.22:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.22:
	pop rbx
	test rbx, rbx
	jz .825
	mov rbx, 21
	push rbx
	jmp .795
.825:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s206
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.23
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
	jmp .75.23
.73.23:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.23:
	pop rbx
	test rbx, rbx
	jz .827
	mov rbx, 22
	push rbx
	jmp .795
.827:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s265
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.24
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
	jmp .75.24
.73.24:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.24:
	pop rbx
	test rbx, rbx
	jz .829
	mov rbx, 23
	push rbx
	jmp .795
.829:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s232
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.25
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
	jmp .75.25
.73.25:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.25:
	pop rbx
	test rbx, rbx
	jz .831
	mov rbx, 24
	push rbx
	jmp .795
.831:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s266
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.26
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
	jmp .75.26
.73.26:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.26:
	pop rbx
	test rbx, rbx
	jz .833
	mov rbx, 25
	push rbx
	jmp .795
.833:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s267
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.27
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
	jmp .75.27
.73.27:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.27:
	pop rbx
	test rbx, rbx
	jz .835
	mov rbx, 26
	push rbx
	jmp .795
.835:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s268
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.28
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
	jmp .75.28
.73.28:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.28:
	pop rbx
	test rbx, rbx
	jz .837
	mov rbx, 27
	push rbx
	jmp .795
.837:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s269
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.29
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
	jmp .75.29
.73.29:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.29:
	pop rbx
	test rbx, rbx
	jz .839
	mov rbx, 28
	push rbx
	jmp .795
.839:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s270
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.30
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
	jmp .75.30
.73.30:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.30:
	pop rbx
	test rbx, rbx
	jz .841
	mov rbx, 29
	push rbx
	jmp .795
.841:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s271
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.31
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
	jmp .75.31
.73.31:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.31:
	pop rbx
	test rbx, rbx
	jz .843
	mov rbx, 30
	push rbx
	jmp .795
.843:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s272
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.32
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
	jmp .75.32
.73.32:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.32:
	pop rbx
	test rbx, rbx
	jz .845
	mov rbx, 31
	push rbx
	jmp .795
.845:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s273
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.33
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
	jmp .75.33
.73.33:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.33:
	pop rbx
	test rbx, rbx
	jz .847
	mov rbx, 32
	push rbx
	jmp .795
.847:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s274
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.34
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
	jmp .75.34
.73.34:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.34:
	pop rbx
	test rbx, rbx
	jz .849
	mov rbx, 33
	push rbx
	jmp .795
.849:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s275
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.35
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
	jmp .75.35
.73.35:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.35:
	pop rbx
	test rbx, rbx
	jz .851
	mov rbx, 70
	push rbx
	jmp .795
.851:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s276
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.36
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
	jmp .75.36
.73.36:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.36:
	pop rbx
	test rbx, rbx
	jz .853
	mov rbx, 34
	push rbx
	jmp .795
.853:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s277
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.37
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
	jmp .75.37
.73.37:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.37:
	pop rbx
	test rbx, rbx
	jz .855
	mov rbx, 35
	push rbx
	jmp .795
.855:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s278
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.38
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
	jmp .75.38
.73.38:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.38:
	pop rbx
	test rbx, rbx
	jz .857
	mov rbx, 36
	push rbx
	jmp .795
.857:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s279
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.39
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
	jmp .75.39
.73.39:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.39:
	pop rbx
	test rbx, rbx
	jz .859
	mov rbx, 37
	push rbx
	jmp .795
.859:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s280
	mov r8, 5
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.40
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
	jmp .75.40
.73.40:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.40:
	pop rbx
	test rbx, rbx
	jz .861
	mov rbx, 38
	push rbx
	jmp .795
.861:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s281
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.41
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
	jmp .75.41
.73.41:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.41:
	pop rbx
	test rbx, rbx
	jz .863
	mov rbx, 39
	push rbx
	jmp .795
.863:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s282
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.42
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
	jmp .75.42
.73.42:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.42:
	pop rbx
	test rbx, rbx
	jz .865
	mov rbx, 40
	push rbx
	jmp .795
.865:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s283
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.43
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
	jmp .75.43
.73.43:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.43:
	pop rbx
	test rbx, rbx
	jz .867
	mov rbx, 41
	push rbx
	jmp .795
.867:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s284
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.44
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
	jmp .75.44
.73.44:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.44:
	pop rbx
	test rbx, rbx
	jz .869
	mov rbx, 42
	push rbx
	jmp .795
.869:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s285
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.45
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
	jmp .75.45
.73.45:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.45:
	pop rbx
	test rbx, rbx
	jz .871
	mov rbx, 43
	push rbx
	jmp .795
.871:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s286
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.46
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
	jmp .75.46
.73.46:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.46:
	pop rbx
	test rbx, rbx
	jz .873
	mov rbx, 44
	push rbx
	jmp .795
.873:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s287
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.47
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
	jmp .75.47
.73.47:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.47:
	pop rbx
	test rbx, rbx
	jz .875
	mov rbx, 45
	push rbx
	jmp .795
.875:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s288
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.48
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
	jmp .75.48
.73.48:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.48:
	pop rbx
	test rbx, rbx
	jz .877
	mov rbx, 46
	push rbx
	jmp .795
.877:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s289
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.49
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
	jmp .75.49
.73.49:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.49:
	pop rbx
	test rbx, rbx
	jz .879
	mov rbx, 47
	push rbx
	jmp .795
.879:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s290
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.50
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
	jmp .75.50
.73.50:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.50:
	pop rbx
	test rbx, rbx
	jz .881
	mov rbx, 48
	push rbx
	jmp .795
.881:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s291
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.51
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
	jmp .75.51
.73.51:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.51:
	pop rbx
	test rbx, rbx
	jz .883
	mov rbx, 49
	push rbx
	jmp .795
.883:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s292
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.52
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
	jmp .75.52
.73.52:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.52:
	pop rbx
	test rbx, rbx
	jz .885
	mov rbx, 50
	push rbx
	jmp .795
.885:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s293
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.53
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
	jmp .75.53
.73.53:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.53:
	pop rbx
	test rbx, rbx
	jz .887
	mov rbx, 51
	push rbx
	jmp .795
.887:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s294
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.54
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
	jmp .75.54
.73.54:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.54:
	pop rbx
	test rbx, rbx
	jz .889
	mov rbx, 52
	push rbx
	jmp .795
.889:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s295
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.55
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
	jmp .75.55
.73.55:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.55:
	pop rbx
	test rbx, rbx
	jz .891
	mov rbx, 53
	push rbx
	jmp .795
.891:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s296
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.56
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
	jmp .75.56
.73.56:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.56:
	pop rbx
	test rbx, rbx
	jz .893
	mov rbx, 54
	push rbx
	jmp .795
.893:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s297
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.57
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
	jmp .75.57
.73.57:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.57:
	pop rbx
	test rbx, rbx
	jz .895
	mov rbx, 55
	push rbx
	jmp .795
.895:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s298
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.58
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
	jmp .75.58
.73.58:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.58:
	pop rbx
	test rbx, rbx
	jz .897
	mov rbx, 56
	push rbx
	jmp .795
.897:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s299
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.59
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
	jmp .75.59
.73.59:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.59:
	pop rbx
	test rbx, rbx
	jz .899
	mov rbx, 57
	push rbx
	jmp .795
.899:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s300
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.60
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
	jmp .75.60
.73.60:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.60:
	pop rbx
	test rbx, rbx
	jz .901
	mov rbx, 58
	push rbx
	jmp .795
.901:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s301
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.61
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
	jmp .75.61
.73.61:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.61:
	pop rbx
	test rbx, rbx
	jz .903
	mov rbx, 59
	push rbx
	jmp .795
.903:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s302
	mov r8, 7
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.62
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
	jmp .75.62
.73.62:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.62:
	pop rbx
	test rbx, rbx
	jz .905
	mov rbx, 67
	push rbx
	jmp .795
.905:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s303
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.63
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
	jmp .75.63
.73.63:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.63:
	pop rbx
	test rbx, rbx
	jz .907
	mov rbx, 68
	push rbx
	jmp .795
.907:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s304
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.64
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
	jmp .75.64
.73.64:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.64:
	pop rbx
	test rbx, rbx
	jz .909
	mov rbx, 69
	push rbx
	jmp .795
.909:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s305
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.65
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
	jmp .75.65
.73.65:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.65:
	pop rbx
	test rbx, rbx
	jz .911
	mov rbx, 71
	push rbx
	jmp .795
.911:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s306
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.66
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
	jmp .75.66
.73.66:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.66:
	pop rbx
	test rbx, rbx
	jz .913
	mov rbx, 72
	push rbx
	jmp .795
.913:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s307
	mov r8, 6
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.67
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
	jmp .75.67
.73.67:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.67:
	pop rbx
	test rbx, rbx
	jz .915
	mov rbx, 73
	push rbx
	jmp .795
.915:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s308
	mov r8, 7
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.68
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
	jmp .75.68
.73.68:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.68:
	pop rbx
	test rbx, rbx
	jz .917
	mov rbx, 74
	push rbx
	jmp .795
.917:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s309
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.69
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
	jmp .75.69
.73.69:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.69:
	pop rbx
	test rbx, rbx
	jz .919
	mov rbx, 75
	push rbx
	jmp .795
.919:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s310
	mov r8, 8
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.70
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
	jmp .75.70
.73.70:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.70:
	pop rbx
	test rbx, rbx
	jz .921
	mov rbx, 76
	push rbx
	jmp .795
.921:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s311
	mov r8, 4
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.71
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
	jmp .75.71
.73.71:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.71:
	pop rbx
	test rbx, rbx
	jz .923
	mov rbx, 77
	push rbx
	jmp .795
.923:
	mov rbx, 1
	push rbx
.924:
.795:
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
	mov rsi, 65536
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2828
	mov eax, 1
	mov edi, 2
	mov rsi, _s239
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2828:
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
	jnz .2829.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2829.2:
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
	mov rsi, _s221
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
	mov rbx, _s221
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
	mov rbx, _s222
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
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	mov rsi, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.925:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .926
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 9
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .927
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	sub rsi, rdi
	dec rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.927:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .925
.926:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	sub rdi, r8
	mov rbx, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 10
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .929
	mov rbx, 1
	mov rsi, _s178
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
.929:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
Token.eprint_file_lok:
	sub rsp, 73
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, 16
	mov rdi, qword [_rs_p]
	add rdi, 48
	push rbx
	push rsi
	push rdi
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
	jnz .2830.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2830.3:
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
	jnz .2831.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2831.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	add rsi, rdi
	pop rbx
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .931
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
	jnz .2832.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2832.4:
	pop rbx
	dec rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	sub rbx, rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword [_rs_p]
	add rbx, 72
	mov rsi, 1
	mov byte [rbx], sil
	jmp .933
.931:
	mov rbx, qword [_rs_p]
	add rbx, 72
	mov rsi, 0
	mov byte [rbx], sil
.933:
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
	jnz .2833.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2833.5:
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
	jnz .2834.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2834.6:
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
	mov rbx, _s226
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
	mov rbx, _s228
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
.934:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .935
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
	jmp .934
.935:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.936:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .937
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
	jmp .936
.937:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 72
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .938
	mov rbx, 62
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.938:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, _s178
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
	add rsp, 73
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
	jnz .2835.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2835.1:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	mov rbx, 8
	add r8, rbx
	mov r8d, [r8]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 0]
	mov rbx, 24
	add r9, rbx
	mov r9d, [r9]
	push rsi
	push rdi
	push r8
	push r9
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
.940:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .941
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2836.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2836.2:
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
	jz .942
	mov rbx, _s322
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
	jmp .943
.942:
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
	jz .945
	mov rbx, _s322
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
	jmp .943
.945:
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
	jz .947
	mov rbx, _s322
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
	jmp .943
.947:
	add rsp, 8
.948:
.943:
	mov rbx, 1
	mov rsi, _s178
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
	jmp .940
.941:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
find_file_to_include:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov r8, qword [rbx + 24]
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_abs_path
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	pop rsi
	and rsi, rbx
	test rsi, rsi
	jz .949
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov r9, qword [rbx + 24]
	push rsi
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call join_path_cstr
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .951
.949:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 24]
	push rsi
	push rdi
.951:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call normalise_path
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rsi, 4
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
	jz .952
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
	jmp .954
.952:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_abs_path
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .955
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
.955:
.954:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
find_file_to_include_stasdir:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call get_executable_path
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call file_dir
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s233
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call join_path_cstr
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	pop r8
	push rsi
	push rbx
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call join_path_cstr
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rsi, 4
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
	jz .957
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.957:
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
error.Loc.len:
	sub rsp, 48
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	pop rsi
	mov qword [rbx + 32], rsi
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	mov r8, qword [rbx + 40]
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gopened_files.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2837.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2837.4:
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
	mov rbx, _s221
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
	mov rbx, _s221
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
	mov rbx, _s222
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
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s178
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	mov r8, qword [rbx + 40]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 16]
	push rsi
	push rdi
	push r8
	push r9
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
	add rsp, 48
	ret
error_noexit.Tok:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	push r8
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2838.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2838.3:
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.end_bold_error
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
	mov rbx, 1
	mov rsi, _s178
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
notice.Tok:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	push r8
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2839.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2839.4:
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.end_bold_notice
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
	mov rbx, 1
	mov rsi, _s178
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
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 21]
	mov r8, 27
	push rsi
	push rbx
	push rdi
	push r9
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s28
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
	mov rbx, _s29
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
	jnz .2840.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2840.5:
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
	jnz .2841.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2841.5:
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
	mov rbx, _s221
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
	call itoa_unsafe
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
	mov rbx, _s221
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
	call itoa_unsafe
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
	mov rbx, _s222
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
	mov rbx, _s31
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
	mov rbx, _s32
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
trace.Tok.to_string_view:
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
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 21]
	mov r8, 27
	push rsi
	push rbx
	push rdi
	push r9
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _s28
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
	mov rbx, _s605
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
	jnz .2842.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2842.6:
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
	jnz .2843.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2843.6:
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
	mov rbx, _s221
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
	call itoa_unsafe
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
	mov rbx, _s221
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
	call itoa_unsafe
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
	mov rbx, _s222
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
	mov rbx, _s31
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
	mov rbx, _s32
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
log.start_bold_time:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s28
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
	mov rbx, _s314
	mov rsi, 4
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
log.end_bold_time:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s31
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
	mov rbx, _s32
	mov rsi, 4
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
log.time.start:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .962
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
	jz .964
	mov rbx, _s211
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
.964:
.962:
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
	jz .966
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.start_bold_time
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s315
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
	jz .968
	mov rbx, _s211
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
.968:
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
	mov rbx, _s231
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
	mov rbx, _s316
	mov rsi, 4
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
	call log.end_bold_time
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .970
.966:
	add rsp, 8
	add rsp, 8
.970:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.scan_file:
	sub rsp, 165
	mov [_rs_p], rsp
	mov rsp, rbp
.1027:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call opened_files.does_fp_exist
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .971
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
	ret
.971:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call open_and_mmap_fp
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, [_gopened_files.len]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
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
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 49], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 0
	mov byte [rbx], sil
.973:
	mov rbx, 1
	test rbx, rbx
	jz .974
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
	jz .975
	jmp .974
.975:
.977:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 13
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
	jz .206.1
	mov rbx, 1
	push rbx
	jmp .207.1
.206.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .209.1
	mov rbx, 1
	push rbx
	jmp .207.1
.209.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .211.1
	mov rbx, 1
	push rbx
	jmp .207.1
.211.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .213.1
	mov rbx, 1
	push rbx
	jmp .207.1
.213.1:
	mov rbx, 0
	push rbx
.214.1:
.207.1:
	pop rbx
	pop rsi
	test rbx, rbx
	jz .978
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .979
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .981
.979:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.981:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .982
	jmp .978
.982:
	jmp .977
.978:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .984
	jmp .974
.984:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 68], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 76], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 84], rsi
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
	mov rsi, rbx
	mov rdi, 34
	xor r9, r9
	cmp rsi, rdi
	sete r9b
	mov rsi, qword [_rs_p]
	add rsi, 65
	xor rdi, rdi
	mov dil, [rsi]
	push r9
	push r8
	push rbx
	test rdi, rdi
	jz .986
	mov rbx, 60
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .988
	mov rbx, 1
	push rbx
	jmp .990
.988:
	mov rbx, 0
	push rbx
.990:
	jmp .991
.986:
	add rsp, 8
	mov rbx, 0
	push rbx
.991:
	pop rbx
	pop rsi
	or rsi, rbx
	pop rbx
	or rbx, rsi
	test rbx, rbx
	jz .992
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .994
	add rsp, 8
	mov rbx, 62
	mov rsi, qword [_rs_p]
	mov qword [rsi + 92], rbx
	jmp .996
.994:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 92], rsi
.996:
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
	mov rsi, 0
	mov byte [rbx], sil
.997:
	mov rbx, 1
	test rbx, rbx
	jz .998
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .999
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s220
	mov r9, 27
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.999:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 109], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 10
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1001
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .1003
.1001:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1003:
	mov rbx, qword [_rs_p]
	add rbx, 108
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1004
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
	call char.parse_escape?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1006
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s229
	mov r9, 31
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1006:
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
	jmp .997
.1004:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 92]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1008
	jmp .998
.1008:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1010
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 1
	mov byte [rbx], sil
	jmp .997
.1010:
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 10
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1012
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1012:
	jmp .997
.998:
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
	jz .1014
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s230
	mov r9, 26
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1014:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1016
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 100]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 92]
	mov rdi, 62
	xor r9, r9
	cmp r8, rdi
	sete r9b
	push rbx
	push rsi
	test r9, r9
	jz .1018
	mov rbp, rsp
	mov rsp, [_rs_p]
	call find_file_to_include_stasdir
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1020
.1018:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call file_dir
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call find_file_to_include
	mov [_rs_p], rsp
	mov rsp, rbp
.1020:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1021
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r10, qword [rbx + 76]
	sub r9, r10
	mov rbx, _s235
	mov r10, 32
	push rsi
	push rdi
	push r8
	push r9
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1021:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 125], rsi
	pop rsi
	mov qword [rbx + 117], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 117]
	mov rdi, qword [rbx + 125]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_dir
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1023
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r10, qword [rbx + 76]
	sub r9, r10
	mov rbx, _s237
	mov r10, 40
	push rsi
	push rdi
	push r8
	push r9
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1023:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1025
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s238
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
	mov rsi, qword [rbx + 117]
	mov rdi, qword [rbx + 125]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1025:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 117]
	mov rdi, qword [rbx + 125]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1028
.1016:
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
.1028:
	jmp .973
	jmp .993
.992:
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
	jz .1030
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 141], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1031:
	mov rbx, 1
	test rbx, rbx
	jz .1032
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .1033
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s240
	mov r9, 30
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1033:
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
	jz .1035
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .1036
.1035:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1038
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
	jz .1039
	jmp .1032
.1039:
	jmp .1036
.1038:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1041:
.1036:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 141], rsi
	jmp .1031
.1032:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 68]
	inc rdi
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 133], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1042
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s241
	mov r9, 23
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1043
.1042:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 133]
	mov rbx, 92
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	and rdi, r8
	test rdi, rdi
	jz .1045
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s230
	mov r9, 26
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1043
.1045:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1047
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 133]
	mov rbx, 92
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	and rdi, r8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	seta r8b
	or rdi, r8
	test rdi, rdi
	jz .1048
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s242
	mov r9, 50
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1048:
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
	call char.parse_escape?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1050
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s229
	mov r9, 31
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1050:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 133], rsi
.1047:
.1043:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 3
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 133]
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
	jmp .973
	jmp .993
.1030:
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
	jz .1053
.1054:
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
	jz .1055
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .1056
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
	ret
.1056:
	jmp .1054
.1055:
	jmp .973
.1053:
.993:
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
	jz .1058
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
	jz .1060
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
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 68], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 76], rsi
.1060:
.1058:
.1062:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .206.2
	mov rbx, 1
	push rbx
	jmp .207.2
.206.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .209.2
	mov rbx, 1
	push rbx
	jmp .207.2
.209.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .211.2
	mov rbx, 1
	push rbx
	jmp .207.2
.211.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .213.2
	mov rbx, 1
	push rbx
	jmp .207.2
.213.2:
	mov rbx, 0
	push rbx
.214.2:
.207.2:
	pop rbx
	pop rsi
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1063
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1064
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
	jz .1066
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1068
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 68]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 68], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 76]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 76], rsi
.1068:
.1066:
.1064:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .1070
	jmp .1063
.1070:
	jmp .1062
.1063:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1072
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .973
.1072:
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
	mov qword [rbx + 157], rdi
	mov qword [rbx + 149], rsi
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1074
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s243
	mov r9, 31
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1074:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1076
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 3
	mov r9, qword [_rs_p]
	add r9, 67
	xor r10, r10
	mov r10b, [r9]
	mov r9, qword [_rs_p]
	mov r11, qword [r9 + 149]
	mov r12, qword [r9 + 157]
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	push r11
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.int_literal_overflow
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1078
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	add rbx, 149
	mov r9, 8
	add rbx, r9
	mov rbx, [rbx]
	mov r9, _s246
	mov r10, 16
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1078:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 149]
	mov rdi, qword [rbx + 157]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.to_num?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2844.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s247
	mov rdx, 87
	syscall
	mov rdi, 1
	jmp _exit
.2844.1:
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1080
	pop rbx
	not rbx
	inc rbx
	push rbx
.1080:
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
	jmp .1082
.1076:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 149]
	mov rdi, qword [rbx + 157]
	mov rbx, _s248
	mov r8, 7
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.72
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
	jmp .75.72
.73.72:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.72:
	pop rbx
	test rbx, rbx
	jz .1083
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .973
.1083:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 149]
	mov r10, qword [rbx + 157]
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
	jz .1085
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 149]
	mov rdi, qword [rbx + 157]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1087
.1085:
	mov rbx, 0
	push rbx
.1087:
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
.1082:
	jmp .973
.974:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1088
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s312
	mov r9, 43
	mov r10, 1
	push rsi
	push rdi
	push r8
	push r10
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc.len
	mov [_rs_p], rsp
	mov rsp, rbp
.1088:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
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
	jz .1090
	mov rbx, _s495
	mov rsi, 8
	push rbx
	push rsi
	jmp .1091
.1090:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1093
	mov rbx, _s496
	mov rsi, 8
	push rbx
	push rsi
	jmp .1091
.1093:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1095
	mov rbx, _s497
	mov rsi, 15
	push rbx
	push rsi
	jmp .1091
.1095:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1097
	mov rbx, _s498
	mov rsi, 19
	push rbx
	push rsi
	jmp .1091
.1097:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1099
	mov rbx, _s499
	mov rsi, 20
	push rbx
	push rsi
	jmp .1091
.1099:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1101
	mov rbx, _s500
	mov rsi, 20
	push rbx
	push rsi
	jmp .1091
.1101:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1103
	mov rbx, _s501
	mov rsi, 20
	push rbx
	push rsi
	jmp .1091
.1103:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1105
	mov rbx, _s502
	mov rsi, 21
	push rbx
	push rsi
	jmp .1091
.1105:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1107
	mov rbx, _s503
	mov rsi, 9
	push rbx
	push rsi
	jmp .1091
.1107:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1109
	mov rbx, _s504
	mov rsi, 9
	push rbx
	push rsi
	jmp .1091
.1109:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1111
	mov rbx, _s505
	mov rsi, 11
	push rbx
	push rsi
	jmp .1091
.1111:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1113
	mov rbx, _s506
	mov rsi, 6
	push rbx
	push rsi
	jmp .1091
.1113:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1115
	mov rbx, _s507
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1115:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1117
	mov rbx, _s508
	mov rsi, 10
	push rbx
	push rsi
	jmp .1091
.1117:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1119
	mov rbx, _s509
	mov rsi, 8
	push rbx
	push rsi
	jmp .1091
.1119:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1121
	mov rbx, _s510
	mov rsi, 7
	push rbx
	push rsi
	jmp .1091
.1121:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1123
	mov rbx, _s254
	mov rsi, 6
	push rbx
	push rsi
	jmp .1091
.1123:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1125
	mov rbx, _s511
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1125:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1127
	mov rbx, _s512
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1127:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1129
	mov rbx, _s513
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1129:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1131
	mov rbx, _s514
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1131:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1133
	mov rbx, _s515
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1133:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1135
	mov rbx, _s516
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1135:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1137
	mov rbx, _s517
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1137:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1139
	mov rbx, _s518
	mov rsi, 6
	push rbx
	push rsi
	jmp .1091
.1139:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1141
	mov rbx, _s519
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1141:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1143
	mov rbx, _s520
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1143:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1145
	mov rbx, _s521
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1145:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1147
	mov rbx, _s522
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1147:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1149
	mov rbx, _s523
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1149:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1151
	mov rbx, _s524
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1151:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1153
	mov rbx, _s525
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1153:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1155
	mov rbx, _s277
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1155:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1157
	mov rbx, _s278
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1157:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1159
	mov rbx, _s279
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1159:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1161
	mov rbx, _s280
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1161:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1163
	mov rbx, _s281
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1163:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1165
	mov rbx, _s282
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1165:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1167
	mov rbx, _s283
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1167:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1169
	mov rbx, _s526
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1169:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1171
	mov rbx, _s527
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1171:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1173
	mov rbx, _s528
	mov rsi, 2
	push rbx
	push rsi
	jmp .1091
.1173:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1175
	mov rbx, _s529
	mov rsi, 2
	push rbx
	push rsi
	jmp .1091
.1175:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1177
	mov rbx, _s530
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1177:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1179
	mov rbx, _s531
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1179:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1181
	mov rbx, _s532
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1181:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1183
	mov rbx, _s533
	mov rsi, 4
	push rbx
	push rsi
	jmp .1091
.1183:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1185
	mov rbx, _s534
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1185:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1187
	mov rbx, _s535
	mov rsi, 5
	push rbx
	push rsi
	jmp .1091
.1187:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1189
	mov rbx, _s294
	mov rsi, 2
	push rbx
	push rsi
	jmp .1091
.1189:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1191
	mov rbx, _s295
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1191:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1193
	mov rbx, _s296
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1193:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1195
	mov rbx, _s297
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1195:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1197
	mov rbx, _s298
	mov rsi, 2
	push rbx
	push rsi
	jmp .1091
.1197:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1199
	mov rbx, _s299
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1199:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1201
	mov rbx, _s300
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1201:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1203
	mov rbx, _s301
	mov rsi, 3
	push rbx
	push rsi
	jmp .1091
.1203:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1205
	mov rbx, _s536
	mov rsi, 9
	push rbx
	push rsi
	jmp .1091
.1205:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1207
	mov rbx, _s537
	mov rsi, 9
	push rbx
	push rsi
	jmp .1091
.1207:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1209
	mov rbx, _s538
	mov rsi, 9
	push rbx
	push rsi
	jmp .1091
.1209:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2845
	mov eax, 1
	mov edi, 2
	mov rsi, _s539
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.2845:
	push rbx
	push rsi
.1210:
.1091:
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
	mov rsi, 32768
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2846
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2846:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s493
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
.1211:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1212
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2847.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2847.1:
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
	mov rbx, _s494
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
	mov rbx, _s494
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
	mov rsi, _s178
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
	jmp .1211
.1212:
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
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2848
	mov eax, 1
	mov edi, 2
	mov rsi, _s384
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2848:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
var_context.Constant_c_c:
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
	mov r8, 4
	add rdi, r8
	mov qword [rdi], rsi
	mov rsi, 3
	mov dword [rbx], esi
	mov rbx, [_gvar_context.len]
	inc rbx
	mov [_gvar_context.len], rbx
	mov rbx, [_gvar_context.len]
	mov rsi, 1024
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2849
	mov eax, 1
	mov edi, 2
	mov rsi, _s324
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2849:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
scope_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 32
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
	jnz .2850
	mov eax, 1
	mov edi, 2
	mov rsi, _s398
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2850:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
scope_context.comptime_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gscope_context.len]
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 28
	add rdi, r8
	mov byte [rdi], bl
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, [_gscope_context.len]
	inc rbx
	mov [_gscope_context.len], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 512
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2851
	mov eax, 1
	mov edi, 2
	mov rsi, _s412
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2851:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
functions_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunctions.len]
	mov rsi, 48
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	pop rsi
	mov rdi, rbx
	mov r8, 40
	add rdi, r8
	mov qword [rdi], rsi
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
	mov rsi, 48
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
	mov rsi, 2048
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2852
	mov eax, 1
	mov edi, 2
	mov rsi, _s396
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2852:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
FnAttribute.from_str?:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s414
	mov r8, 8
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.73
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
	jmp .75.73
.73.73:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.73:
	pop rbx
	test rbx, rbx
	jz .1213
	mov rbx, 1
	push rbx
	jmp .1214
.1213:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s415
	mov r8, 6
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.74
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
	jmp .75.74
.73.74:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.74:
	pop rbx
	test rbx, rbx
	jz .1216
	mov rbx, 2
	push rbx
	jmp .1214
.1216:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s416
	mov r8, 8
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.75
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
	jmp .75.75
.73.75:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.75:
	pop rbx
	test rbx, rbx
	jz .1218
	mov rbx, 4
	push rbx
	jmp .1214
.1218:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s417
	mov r8, 6
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.76
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
	jmp .75.76
.73.76:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.76:
	pop rbx
	test rbx, rbx
	jz .1220
	mov rbx, 8
	push rbx
	jmp .1214
.1220:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1221:
.1214:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
FnAttribute.is_conflict:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 2
	mov r8, rsi
	and rdi, rsi
	xor rsi, rsi
	cmp r8, rdi
	sete sil
	and rbx, rsi
	test rbx, rbx
	jz .1222
	mov rbx, 1
	push rbx
	jmp .1224
.1222:
	mov rbx, 0
	push rbx
.1224:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.lookahead?:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	push rbx
	test r8, r8
	jz .1225
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1225:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2853.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2853.7:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.next_eof?:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	push rbx
	test r8, r8
	jz .1229
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1229:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2854.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2854.8:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 1
	mov rdi, [_gpos]
	inc rdi
	mov [_gpos], rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.iter_eof?:
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
	jz .1231
	mov rbx, 0
	push rbx
	jmp .1233
.1231:
	mov rbx, 1
	push rbx
.1233:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.expect?:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	push rbx
	test r8, r8
	jz .1234
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1234:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2855.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2855.9:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.inspect_current_name?:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2856.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2856.10:
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
	jz .1236
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2857.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2857.11:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, 1
	push rsi
	push rbx
	push rdi
	jmp .1238
.1236:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	push rbx
	push rsi
	push rdi
.1238:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
error_st.Tok:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1239
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.1241:
	mov rbx, 1
	test rbx, rbx
	jz .1242
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2858.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s351
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2858.3:
	mov rbx, _s352
	mov rsi, 9
	push rbx
	push rsi
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
	jz .1243
	jmp .1242
.1243:
	pop rbx
	dec rbx
	push rbx
	jmp .1241
.1242:
	add rsp, 8
.1239:
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
sp_push_p:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, 0
	push rbx
.1245:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1246
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2859.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2859.1:
	pop rbx
	inc rbx
	push rbx
	jmp .1245
.1246:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
sp_has:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	pop rdi
	xor rbx, rbx
	cmp rdi, rsi
	seta bl
	test rbx, rbx
	jz .1247
	mov rbx, [_gpos]
	mov rsi, _s353
	mov rdi, 42
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1247:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
sp_has_p:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	pop rdi
	xor rbx, rbx
	cmp rdi, rsi
	seta bl
	test rbx, rbx
	jz .1249
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s353
	mov rdi, 42
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	push rsi
	push rbx
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1249:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
sp_assert_p:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 24]
	sub rbx, r8
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
cfunctions_c_c:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gcfunctions.len]
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gcfunctions
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 24
	add rsi, rbx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 20
	add rsi, rbx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	pop rbx
	mov qword [rsi], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 16
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 8
	add rdi, rbx
	mov rdi, [rdi]
	mov dword [rsi], edi
	mov rbx, 0
	push rbx
.1251:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1252
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1253
	add rsp, 8
	jmp .1252
.1253:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, 8
	add rdi, rsi
	add rbx, rdi
	pop rsi
	mov byte [rbx], sil
	pop rbx
	inc rbx
	push rbx
	jmp .1251
.1252:
	add rsp, 8
	mov rbx, [_gcfunctions.len]
	inc rbx
	mov [_gcfunctions.len], rbx
	mov rbx, [_gcfunctions.len]
	mov rsi, 256
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2860
	mov eax, 1
	mov edi, 2
	mov rsi, _s409
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2860:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
eval.basic_inst:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2861.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2861.2:
	mov rdi, 16
	imul rsi, rdi
	mov rdi, qword _gir_stream
	add rsi, rdi
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	mov rsi, 1
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2862.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2862.3:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1255
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2863.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2863.7:
	jmp .1256
.1255:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 1
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1258
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call _fArray64.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2864.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 118
	syscall
	mov rdi, 1
	jmp _exit
.2864.1:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .1256
.1258:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 1
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1260
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call _fArray64.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2865.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 118
	syscall
	mov rdi, 1
	jmp _exit
.2865.2:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov qword [rbx], rsi
	jmp .1256
.1260:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 1
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1262
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call _fArray64.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2866.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 118
	syscall
	mov rdi, 1
	jmp _exit
.2866.3:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov qword [rbx], rsi
	jmp .1256
.1262:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 1
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1264
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2867.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s376
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2867.1:
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
	jnz .2868.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2868.8:
	jmp .1256
.1264:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 1
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1266
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	jmp .1256
.1266:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1268
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2869.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2869.1:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2870.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2870.2:
	pop rbx
	pop rsi
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2871.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2871.9:
	jmp .1256
.1268:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1270
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2872.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2872.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2873.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2873.4:
	pop rbx
	pop rsi
	sub rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2874.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2874.10:
	jmp .1256
.1270:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1272
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2875.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2875.5:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2876.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2876.6:
	pop rbx
	pop rsi
	imul rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2877.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2877.11:
	jmp .1256
.1272:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1274
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2878.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2878.7:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2879.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2879.8:
	pop rbx
	pop rsi
	mov rax, rbx
	xor rdx, rdx
	div rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rax
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2880.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2880.12:
	jmp .1256
.1274:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1276
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2881.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2881.9:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2882.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2882.10:
	pop rbx
	pop rsi
	mov rax, rbx
	xor rdx, rdx
	div rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2883.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2883.13:
	jmp .1256
.1276:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1278
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2884.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2884.11:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2885.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2885.12:
	pop rbx
	pop rsi
	mov rax, rbx
	xor rdx, rdx
	div rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdx
	push rax
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2886.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2886.14:
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
	jnz .2887.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2887.15:
	jmp .1256
.1278:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1280
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2888.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2888.13:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2889.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2889.14:
	pop rbx
	pop rsi
	mov rcx, rsi
	shr rbx, cl
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2890.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2890.16:
	jmp .1256
.1280:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1282
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2891.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2891.15:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2892.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2892.16:
	pop rbx
	pop rsi
	mov rcx, rsi
	shl rbx, cl
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2893.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2893.17:
	jmp .1256
.1282:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1284
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2894.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2894.17:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2895.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2895.18:
	pop rbx
	pop rsi
	and rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2896.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2896.18:
	jmp .1256
.1284:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1286
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2897.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2897.19:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2898.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2898.20:
	pop rbx
	pop rsi
	or rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2899.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2899.19:
	jmp .1256
.1286:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1288
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2900.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2900.21:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2901.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2901.22:
	pop rbx
	pop rsi
	xor rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2902.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2902.20:
	jmp .1256
.1288:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1290
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2903.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2903.23:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2904.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2904.24:
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2905.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2905.21:
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
	jnz .2906.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2906.22:
	jmp .1256
.1290:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1292
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 2
	sub rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2907.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2907.7:
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
	jnz .2908.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2908.23:
	jmp .1256
.1292:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1294
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2909.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2909.25:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2910.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2910.26:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2911.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2911.24:
	jmp .1256
.1294:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1296
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2912.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2912.27:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2913.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2913.28:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2914.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2914.25:
	jmp .1256
.1296:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1298
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2915.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2915.29:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2916.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2916.30:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2917.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2917.26:
	jmp .1256
.1298:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1300
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2918.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2918.31:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2919.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2919.32:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2920.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2920.27:
	jmp .1256
.1300:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1302
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2921.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2921.33:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2922.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2922.34:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2923.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2923.28:
	jmp .1256
.1302:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1304
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2924.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2924.35:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2925.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2925.36:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setbe dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2926.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2926.29:
	jmp .1256
.1304:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1306
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2927.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2927.37:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2928.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2928.38:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setg dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2929.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2929.30:
	jmp .1256
.1306:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1308
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2930.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2930.39:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2931.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2931.40:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2932.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2932.31:
	jmp .1256
.1308:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1310
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2933.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2933.41:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2934.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2934.42:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setge dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2935.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2935.32:
	jmp .1256
.1310:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 2
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1312
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2936.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2936.43:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2937.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2937.44:
	pop rbx
	pop rsi
	xor rdi, rdi
	cmp rbx, rsi
	setle dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2938.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2938.33:
	jmp .1256
.1312:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 3
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1314
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2939.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2939.45:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2940.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2940.46:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2941.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2941.47:
	pop rbx
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rsi
	push rbx
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2942.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2942.34:
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
	jnz .2943.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2943.35:
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
	jnz .2944.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2944.36:
	jmp .1256
.1314:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 3
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1316
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 3
	sub rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2945.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2945.8:
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
	jnz .2946.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2946.37:
	jmp .1256
.1316:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 4
	xor r9, r9
	cmp rdi, rsi
	setae r9b
	and r8, r9
	push rbx
	test r8, r8
	jz .1318
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2947.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2947.48:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2948.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2948.49:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2949.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2949.50:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2950.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2950.51:
	pop rbx
	pop rsi
	pop rdi
	pop r8
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 0]
	push rdi
	push rsi
	push rbx
	push r8
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2951.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2951.38:
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
	jnz .2952.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2952.39:
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
	jnz .2953.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2953.40:
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
	jnz .2954.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2954.41:
	jmp .1256
.1318:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1319:
.1256:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
eval.all_in_range:
	sub rsp, 1112
	mov [_rs_p], rsp
	mov rsp, rbp
.1333:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, [_geval.recurse_depth]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1320
	mov rbx, _s370
	mov rsi, 57
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
.1320:
	mov rbx, qword [_rs_p]
	add rbx, 24
	mov rsi, 1024
	mov rdi, qword [_rs_p]
	add rdi, 1048
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1080], rbx
.1322:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1323
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2955.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2955.4:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1088], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2956.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2956.5:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1096], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 13
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1324
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	add rbx, 1048
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2957.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2957.2:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, qword [_rs_p]
	add rbx, 1048
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2958.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2958.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 1080]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1326
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1080], rbx
.1326:
	jmp .1328
.1324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1080]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1329
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1331
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2959.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2959.1:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1104], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1104]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	inc rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 1104]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 0]
	inc r9
	push rsi
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval.all_in_range
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1332
.1331:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 11
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1335
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2960.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.2960.52:
	mov rbx, 0
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1336
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	add rbx, 1048
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.search_kv?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1338
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1340
.1338:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2961
	mov eax, 1
	mov edi, 2
	mov rsi, _s373
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2961:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1340:
.1336:
	jmp .1332
.1335:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 12
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1342
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	add rbx, 1048
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.search_kv?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1343
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1345
.1343:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2962
	mov eax, 1
	mov edi, 2
	mov rsi, _s374
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2962:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1345:
	jmp .1332
.1342:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval.basic_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2963
	mov eax, 1
	mov edi, 2
	mov rsi, _s377
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.2963:
.1346:
.1332:
.1329:
.1328:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1072], rsi
	jmp .1322
.1323:
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2964
	mov eax, 1
	mov edi, 2
	mov rsi, _s378
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2964:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 1112
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
	jnz .2965
	mov eax, 1
	mov edi, 2
	mov rsi, _s553
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2965:
	mov rsi, [_gfwrite_buffer.len]
	add rbx, rsi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1347
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
	jnz .2966.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2966.1:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
.1347:
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
	call itoa_unsafe
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
	jz .1349
	mov rbx, _s595
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1349:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1352
	mov rbx, _s596
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1352:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1354
	mov rbx, _s597
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1354:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1356
	mov rbx, _s598
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1358
	mov rbx, _s599
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1358:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1360
	mov rbx, _s600
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1360:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1362
	mov rbx, _s601
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1350
.1362:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1363:
.1350:
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
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 0
	push rbx
.1364:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1365
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
	jmp .1364
.1365:
	add rsp, 8
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
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1366
	mov rbx, _s461
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1366:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1369
	mov rbx, _s462
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1369:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1371
	mov rbx, _s463
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1371:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1373
	mov rbx, _s464
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1373:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1375
	mov rbx, _s298
	mov rsi, 2
	push rbx
	push rsi
	jmp .1367
.1375:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1377
	mov rbx, _s465
	mov rsi, 2
	push rbx
	push rsi
	jmp .1367
.1377:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1379
	mov rbx, _s466
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1379:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1381
	mov rbx, _s467
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1381:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1383
	mov rbx, _s468
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1383:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1385
	mov rbx, _s469
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1385:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1387
	mov rbx, _s470
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1387:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1389
	mov rbx, _s471
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1389:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1391
	mov rbx, _s472
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1391:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1393
	mov rbx, _s473
	mov rsi, 3
	push rbx
	push rsi
	jmp .1367
.1393:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2967
	mov eax, 1
	mov edi, 2
	mov rsi, _s585
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2967:
	push rbx
	push rsi
.1394:
.1367:
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
	jz .1395
	mov rbx, _s702
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1395:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1398
	mov rbx, _s703
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1398:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1400
	mov rbx, _s704
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1400:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1402
	mov rbx, _s705
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1402:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1404
	mov rbx, _s706
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1404:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1406
	mov rbx, _s707
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1406:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1408
	mov rbx, _s708
	mov rsi, 4
	push rbx
	push rsi
	jmp .1396
.1408:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1410
	mov rbx, _s709
	mov rsi, 4
	push rbx
	push rsi
	jmp .1396
.1410:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1412
	mov rbx, _s710
	mov rsi, 4
	push rbx
	push rsi
	jmp .1396
.1412:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1414
	mov rbx, _s711
	mov rsi, 4
	push rbx
	push rsi
	jmp .1396
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1416
	mov rbx, _s712
	mov rsi, 4
	push rbx
	push rsi
	jmp .1396
.1416:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1418
	mov rbx, _s713
	mov rsi, 4
	push rbx
	push rsi
	jmp .1396
.1418:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1420
	mov rbx, _s714
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1420:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1422
	mov rbx, _s715
	mov rsi, 3
	push rbx
	push rsi
	jmp .1396
.1422:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2968
	mov eax, 1
	mov edi, 2
	mov rsi, _s716
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2968:
	push rbx
	push rsi
.1423:
.1396:
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
	jz .1424
	mov rbx, _s686
	mov rsi, 2
	push rbx
	push rsi
	jmp .1425
.1424:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1427
	mov rbx, _s687
	mov rsi, 2
	push rbx
	push rsi
	jmp .1425
.1427:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1429
	mov rbx, _s688
	mov rsi, 2
	push rbx
	push rsi
	jmp .1425
.1429:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1431
	mov rbx, _s689
	mov rsi, 2
	push rbx
	push rsi
	jmp .1425
.1431:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1433
	mov rbx, _s690
	mov rsi, 3
	push rbx
	push rsi
	jmp .1425
.1433:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1435
	mov rbx, _s691
	mov rsi, 3
	push rbx
	push rsi
	jmp .1425
.1435:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1437
	mov rbx, _s692
	mov rsi, 4
	push rbx
	push rsi
	jmp .1425
.1437:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1439
	mov rbx, _s693
	mov rsi, 4
	push rbx
	push rsi
	jmp .1425
.1439:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1441
	mov rbx, _s694
	mov rsi, 4
	push rbx
	push rsi
	jmp .1425
.1441:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1443
	mov rbx, _s695
	mov rsi, 4
	push rbx
	push rsi
	jmp .1425
.1443:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1445
	mov rbx, _s696
	mov rsi, 4
	push rbx
	push rsi
	jmp .1425
.1445:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1447
	mov rbx, _s697
	mov rsi, 4
	push rbx
	push rsi
	jmp .1425
.1447:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1449
	mov rbx, _s698
	mov rsi, 2
	push rbx
	push rsi
	jmp .1425
.1449:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1451
	mov rbx, _s699
	mov rsi, 2
	push rbx
	push rsi
	jmp .1425
.1451:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2969
	mov eax, 1
	mov edi, 2
	mov rsi, _s700
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2969:
	push rbx
	push rsi
.1452:
.1425:
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
	jz .1453
	mov rbx, _s652
	mov rsi, 2
	push rbx
	push rsi
	jmp .1454
.1453:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1456
	mov rbx, _s653
	mov rsi, 2
	push rbx
	push rsi
	jmp .1454
.1456:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1458
	mov rbx, _s654
	mov rsi, 3
	push rbx
	push rsi
	jmp .1454
.1458:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1460
	mov rbx, _s655
	mov rsi, 3
	push rbx
	push rsi
	jmp .1454
.1460:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1462
	mov rbx, _s656
	mov rsi, 3
	push rbx
	push rsi
	jmp .1454
.1462:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1464
	mov rbx, _s657
	mov rsi, 3
	push rbx
	push rsi
	jmp .1454
.1464:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1466
	mov rbx, _s658
	mov rsi, 4
	push rbx
	push rsi
	jmp .1454
.1466:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1468
	mov rbx, _s659
	mov rsi, 4
	push rbx
	push rsi
	jmp .1454
.1468:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1470
	mov rbx, _s660
	mov rsi, 4
	push rbx
	push rsi
	jmp .1454
.1470:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1472
	mov rbx, _s661
	mov rsi, 4
	push rbx
	push rsi
	jmp .1454
.1472:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1474
	mov rbx, _s662
	mov rsi, 4
	push rbx
	push rsi
	jmp .1454
.1474:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1476
	mov rbx, _s663
	mov rsi, 4
	push rbx
	push rsi
	jmp .1454
.1476:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1478
	mov rbx, _s664
	mov rsi, 2
	push rbx
	push rsi
	jmp .1454
.1478:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1480
	mov rbx, _s665
	mov rsi, 2
	push rbx
	push rsi
	jmp .1454
.1480:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2970
	mov eax, 1
	mov edi, 2
	mov rsi, _s666
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2970:
	push rbx
	push rsi
.1481:
.1454:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.64.from_str?:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s461
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.77
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
	jmp .75.77
.73.77:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.77:
	pop rbx
	test rbx, rbx
	jz .1482
	mov rbx, 0
	push rbx
	jmp .1483
.1482:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s462
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.78
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
	jmp .75.78
.73.78:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.78:
	pop rbx
	test rbx, rbx
	jz .1485
	mov rbx, 11
	push rbx
	jmp .1483
.1485:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s463
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.79
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
	jmp .75.79
.73.79:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.79:
	pop rbx
	test rbx, rbx
	jz .1487
	mov rbx, 1
	push rbx
	jmp .1483
.1487:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s464
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.80
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
	jmp .75.80
.73.80:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.80:
	pop rbx
	test rbx, rbx
	jz .1489
	mov rbx, 2
	push rbx
	jmp .1483
.1489:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s298
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.81
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
	jmp .75.81
.73.81:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.81:
	pop rbx
	test rbx, rbx
	jz .1491
	mov rbx, 3
	push rbx
	jmp .1483
.1491:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s465
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.82
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
	jmp .75.82
.73.82:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.82:
	pop rbx
	test rbx, rbx
	jz .1493
	mov rbx, 4
	push rbx
	jmp .1483
.1493:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s466
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.83
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
	jmp .75.83
.73.83:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.83:
	pop rbx
	test rbx, rbx
	jz .1495
	mov rbx, 5
	push rbx
	jmp .1483
.1495:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s467
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.84
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
	jmp .75.84
.73.84:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.84:
	pop rbx
	test rbx, rbx
	jz .1497
	mov rbx, 6
	push rbx
	jmp .1483
.1497:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s468
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.85
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
	jmp .75.85
.73.85:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.85:
	pop rbx
	test rbx, rbx
	jz .1499
	mov rbx, 7
	push rbx
	jmp .1483
.1499:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s469
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.86
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
	jmp .75.86
.73.86:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.86:
	pop rbx
	test rbx, rbx
	jz .1501
	mov rbx, 8
	push rbx
	jmp .1483
.1501:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s470
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.87
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
	jmp .75.87
.73.87:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.87:
	pop rbx
	test rbx, rbx
	jz .1503
	mov rbx, 9
	push rbx
	jmp .1483
.1503:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s471
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.88
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
	jmp .75.88
.73.88:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.88:
	pop rbx
	test rbx, rbx
	jz .1505
	mov rbx, 10
	push rbx
	jmp .1483
.1505:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s472
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.89
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
	jmp .75.89
.73.89:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.89:
	pop rbx
	test rbx, rbx
	jz .1507
	mov rbx, 12
	push rbx
	jmp .1483
.1507:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s473
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.90
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
	jmp .75.90
.73.90:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.90:
	pop rbx
	test rbx, rbx
	jz .1509
	mov rbx, 13
	push rbx
	jmp .1483
.1509:
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1510:
.1483:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
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
	jnz .2971
	mov eax, 1
	mov edi, 2
	mov rsi, _s586
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2971:
	mov rsi, [_grallocator_stack.len]
	mov rdi, 2048
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2972
	mov eax, 1
	mov edi, 2
	mov rsi, _s587
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2972:
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
	jnz .2973
	mov eax, 1
	mov edi, 2
	mov rsi, _s614
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2973:
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
.1518:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1519
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
	jz .1520
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1520:
	pop rbx
	inc rbx
	push rbx
	jmp .1518
.1519:
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
.1522:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1523
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
	jz .1524
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1524:
	pop rbx
	inc rbx
	push rbx
	jmp .1522
.1523:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
r_stack_deep_flush:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1526:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1527
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, rdi
	mov r8, rsi
	mov r9, 14
	xor r10, r10
	cmp r8, r9
	setb r10b
	test r10, r10
	jnz .2974.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2974.1:
	mov r8, qword _grallocator_mask
	add rsi, r8
	mov r8, 0
	mov byte [rsi], r8b
	mov rsi, _s584
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
	jmp .1526
.1527:
	add rsp, 8
	mov rbx, 0
	mov [_grallocator_stack.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_flush:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1528:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1529
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s584
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
	jmp .1528
.1529:
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
	mov [_rs_p], rsp
	mov rsp, rbp
.1532:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_ffs
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1530
	add rsp, 8
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2975
	mov eax, 1
	mov edi, 2
	mov rsi, _s582
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2975:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_stack_deep_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1532
.1530:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_release:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2976.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s642
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2976.1:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1533
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2977.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2977.1:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2978.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2978.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s589
	mov rsi, 5
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
	mov rsi, qword [rbx + 16]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1535
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1535:
.1533:
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
	jz .1537
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	jmp .1539
.1537:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s615
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
.1539:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2979.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2979.2:
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
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2980.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s642
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2980.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1540
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1540:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1542
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
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1544
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1544:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2981.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2981.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s589
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
	jmp .1546
.1542:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2982.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s642
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2982.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .2983
	mov eax, 1
	mov edi, 2
	mov rsi, _s643
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2983:
	mov rbx, _s615
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
.1546:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2984.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2984.3:
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
	jz .1547
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1549
.1547:
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
	jnz .2985.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2985.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s615
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
.1549:
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
	jnz .2986.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2986.5:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
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
	mov rbx, _s590
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
	jnz .2987.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2987.6:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
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
	mov rbx, _s590
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
r_prepare_push_const_word:
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
	jnz .2988.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2988.7:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
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
	mov rbx, _s590
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
	ret
_einline_asms_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_ginline_asms.len]
	mov rsi, 48
	imul rbx, rsi
	mov rsi, qword _ginline_asms
	add rbx, rsi
	pop rsi
	mov rdi, 48
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_ginline_asms.len]
	inc rbx
	mov [_ginline_asms.len], rbx
	mov rbx, [_ginline_asms.len]
	mov rsi, 256
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2989
	mov eax, 1
	mov edi, 2
	mov rsi, _s482
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2989:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
reg_exists_in_arr:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rdi
	mov rdi, rsi
	add rbx, rdi
	push rbx
	push rsi
.1550:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1551
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
	jz .1552
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1552:
	pop rbx
	inc rbx
	push rbx
	jmp .1550
.1551:
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.inline_asm:
	sub rsp, 64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 0
	mov rdi, 48
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
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1554
	mov rbx, [_gpos]
	mov rsi, _s460
	mov rdi, 37
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1554:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1556
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2990.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2990.12:
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
	setne dil
	test rdi, rdi
	jz .1558
.1560:
	mov rbx, 1
	test rbx, rbx
	jz .1561
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2991.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2991.13:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1562
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2992.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2992.14:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.from_str?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1564
	mov rbx, [_gpos]
	mov rsi, _s474
	mov rdi, 29
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1564:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	add rdi, 16
	mov r8, qword [_rs_p]
	add r8, 16
	mov r9, 32
	add r8, r9
	mov r8d, [r8]
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call reg_exists_in_arr
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1566
	mov rbx, [_gpos]
	mov rsi, _s475
	mov rdi, 47
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1566:
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov rdi, 32
	add rsi, rdi
	mov esi, [rsi]
	add rbx, rsi
	pop rsi
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 32
	add rbx, rsi
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .1568
.1562:
	mov rbx, [_gpos]
	mov rsi, _s476
	mov rdi, 49
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1568:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1569
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, 6
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	or r8, rdi
	test r8, r8
	jz .1571
	jmp .1561
.1571:
	jmp .1573
.1569:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s477
	mov rdi, 41
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1573:
	jmp .1560
.1561:
.1558:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2993.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2993.15:
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
	test rdi, rdi
	jz .1574
.1576:
	mov rbx, 1
	test rbx, rbx
	jz .1577
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1578
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, 6
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	or r8, rdi
	test r8, r8
	jz .1580
	jmp .1577
.1580:
	jmp .1582
.1578:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s477
	mov rdi, 41
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1582:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2994.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2994.16:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1583
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2995.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2995.17:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.from_str?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1585
	mov rbx, [_gpos]
	mov rsi, _s474
	mov rdi, 29
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1585:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	add rdi, 16
	mov r8, 16
	add rdi, r8
	mov r8, qword [_rs_p]
	add r8, 16
	mov r9, 36
	add r8, r9
	mov r8d, [r8]
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call reg_exists_in_arr
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1587
	mov rbx, [_gpos]
	mov rsi, _s478
	mov rdi, 45
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1587:
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 16
	add rbx, rsi
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov rdi, 36
	add rsi, rdi
	mov esi, [rsi]
	add rbx, rsi
	pop rsi
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 36
	add rbx, rsi
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .1589
.1583:
	mov rbx, [_gpos]
	mov rsi, _s476
	mov rdi, 49
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1589:
	jmp .1576
.1577:
.1574:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2996.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2996.18:
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
	jz .1590
	mov rbx, [_gpos]
	mov rsi, _s479
	mov rdi, 48
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1590:
.1556:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gpos]
	inc rsi
	mov rdi, 40
	add rbx, rdi
	mov dword [rbx], esi
.1592:
	mov rbx, 1
	test rbx, rbx
	jz .1593
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1594
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1596
	jmp .1593
.1596:
	jmp .1598
.1594:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s480
	mov rdi, 48
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1598:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2997.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2997.19:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1599
	mov rbx, [_gpos]
	mov rsi, _s481
	mov rdi, 24
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1599:
	jmp .1592
.1593:
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gpos]
	mov rdi, 44
	add rbx, rdi
	mov dword [rbx], esi
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 32
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov rdi, 36
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 8]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 68
	mov rdi, [_ginline_asms.len]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call _einline_asms_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 64
	ret
name_get_function_idx:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunctions.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1601
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1601:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1603:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1604
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2998.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2998.2:
	mov rdi, 48
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
	mov r9, qword [r8 + 0]
	mov r10, qword [r8 + 8]
	mov r8, rsi
	mov r11, r10
	xor r12, r12
	cmp r8, r11
	sete r12b
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	test r12, r12
	jz .73.91
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
	jmp .75.91
.73.91:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.91:
	pop rbx
	test rbx, rbx
	jz .1605
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1605:
	pop rbx
	inc rbx
	push rbx
	jmp .1603
.1604:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
name_get_cextern_function_idx:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gcfunctions.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1607
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1607:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1609:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1610
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2999.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2999.1:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gcfunctions
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r10, qword [r8 + 8]
	mov r8, rsi
	mov r11, r10
	xor r12, r12
	cmp r8, r11
	sete r12b
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	test r12, r12
	jz .73.92
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
	jmp .75.92
.73.92:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.92:
	pop rbx
	test rbx, rbx
	jz .1611
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1611:
	pop rbx
	inc rbx
	push rbx
	jmp .1609
.1610:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
search_variable_name:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gvar_context.len]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setbe sil
	test rsi, rsi
	jz .1613
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1613:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, [_gvar_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1615:
	mov rbx, 1
	test rbx, rbx
	jz .1616
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3000.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3000.1:
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
	mov r10, qword [r8 + 16]
	mov r8, rsi
	mov r11, r10
	xor r12, r12
	cmp r8, r11
	sete r12b
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	test r12, r12
	jz .73.93
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
	jmp .75.93
.73.93:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.93:
	pop rbx
	test rbx, rbx
	jz .1617
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1617:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .1619
	jmp .1616
.1619:
	pop rbx
	dec rbx
	push rbx
	jmp .1615
.1616:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
is_in_function:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1628:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1629
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3001.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3001.1:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1630
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1630:
	pop rbx
	inc rbx
	push rbx
	jmp .1628
.1629:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.push_early_ret:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 32
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
	jnz .3002
	mov eax, 1
	mov edi, 2
	mov rsi, _s454
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3002:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.push_early_ret_with_pos:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 32
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
	jnz .3003
	mov eax, 1
	mov edi, 2
	mov rsi, _s431
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3003:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.search_scoped_var:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1632
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3004.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3004.1:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3005.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3005.2:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1634
.1632:
	mov rbx, 0
	push rbx
.1634:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.duplicate_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3006.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3006.20:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov qword [rdi + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.search_scoped_var
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1635
	mov rbx, [_gpos]
	mov rsi, _s337
	mov rdi, 36
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3007.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3007.2:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gvar_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s338
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1637
.1635:
	add rsp, 8
.1637:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call name_get_function_idx
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1638
	mov rbx, [_gpos]
	mov rsi, _s340
	mov rdi, 36
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3008.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3008.3:
	mov rsi, 48
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3009.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3009.6:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s342
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1640
.1638:
	add rsp, 8
.1640:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call name_get_cextern_function_idx
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1641
	mov rbx, [_gpos]
	mov rsi, _s344
	mov rdi, 45
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3010.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3010.2:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gcfunctions
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s342
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1643
.1641:
	add rsp, 8
.1643:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.fn_decl:
	sub rsp, 48
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1644
	mov rbx, [_gpos]
	mov rsi, _s385
	mov rdi, 38
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1644:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3011.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3011.21:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 40], rbx
	mov qword [rdi + 32], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rdi, qword [rbx + 40]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 95
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1646
	mov rbx, [_gpos]
	mov rsi, _s386
	mov rdi, 50
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1646:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.duplicate_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1648
	mov rbx, [_gpos]
	mov rsi, _s387
	mov rdi, 38
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1648:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1650
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1651
.1650:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1653
	mov rbx, 3
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1654
	mov rbx, [_gpos]
	mov rsi, _s388
	mov rdi, 51
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1654:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3012.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3012.22:
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
	mov rsi, qword [rbx + 24]
	mov rbx, 3
	add rsi, rbx
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3013.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3013.23:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1656
	mov rbx, [_gpos]
	mov rsi, _s389
	mov rdi, 44
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1656:
	jmp .1651
.1653:
	mov rbx, [_gpos]
	mov rsi, _s390
	mov rdi, 40
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1658:
.1651:
	add rsp, 8
	mov rbx, [_gfunction_attributes]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call FnAttribute.is_conflict
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1659
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s391
	mov rdi, 28
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1659:
	mov rbx, [_gfunctions.len]
	mov rsi, 48
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	mov [_gfunction_context], rbx
	mov rbx, [_gfunctions.len]
	mov [_gfunction_context_idx], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	inc r8
	mov rbx, r8
	mov r9, [_gtoken_stream.len]
	xor r10, r10
	cmp rbx, r9
	setb r10b
	test r10, r10
	jnz .3014.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3014.24:
	mov rbx, 28
	imul r8, rbx
	mov rbx, qword _gtoken_stream
	add r8, rbx
	mov rbx, 16
	add r8, rbx
	mov r8, [r8]
	mov rbx, [_gir_stream.len]
	mov r9, 0
	mov r10, 0
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 32]
	mov r13, qword [r11 + 40]
	mov r11, _s392
	mov r14, 4
	mov r15, r13
	mov rcx, r14
	xor rdx, rdx
	cmp r15, rcx
	sete dl
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	push r10
	push r12
	push r13
	push r11
	push r14
	test rdx, rdx
	jz .73.94
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
	jmp .75.94
.73.94:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.94:
	pop rbx
	test rbx, rbx
	jz .1661
	mov rbx, [_gfunction_attributes]
	mov rsi, 2
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1663
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s393
	mov rdi, 34
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1663:
	mov rbx, [_gfunction_attributes]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1665
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, _s394
	mov rdi, 34
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1665:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	test rdi, rdi
	jz .1667
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s395
	mov rdi, 52
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1667:
	mov rbx, [_gfunctions.len]
	mov [_gmain_fn_idx], rbx
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .1669
.1661:
	mov rbx, 0
	mov rsi, [_gfunction_attributes]
	mov rdi, 1
	mov r8, rdi
	and rsi, rdi
	xor rdi, rdi
	cmp r8, rsi
	sete dil
	push rbx
	test rdi, rdi
	jz .1670
	mov rbx, 1
	push rbx
	jmp .1672
.1670:
	mov rbx, 0
	push rbx
.1672:
.1669:
	mov rbx, [_gfunction_attributes]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call functions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .3015
	mov eax, 1
	mov edi, 2
	mov rsi, _s397
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3015:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, 0
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 48
	ret
parse.assert:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1673
	mov rbx, [_gpos]
	mov rsi, _s425
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1673:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .1675
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3016.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3016.25:
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
	jnz .3017.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3017.26:
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
	jz .1677
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
.1677:
.1675:
	mov rbx, [_gpos]
	mov rsi, _s426
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
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	test rsi, rsi
	jz .1679
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s427
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
	mov rsi, qword [rbx + 16]
	mov rbx, [_gpos]
	mov rdi, 2
	add rbx, rdi
	mov rdi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3018.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3018.27:
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
	mov rsi, qword [rbx + 16]
	mov rbx, _s214
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
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 17
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
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
	jmp .1681
.1679:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s428
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
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 17
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.1681:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.handle_var_interaction:
	sub rsp, 64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3019.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3019.28:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1682
	mov rbx, [_gpos]
	mov rsi, _s335
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1682:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3020.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3020.29:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 24], rbx
	mov qword [rdi + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 24]
	mov rbx, 0
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1684
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3021.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3021.3:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1686
	mov rbx, 1
	push rbx
	jmp .1688
.1686:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3022.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3022.3:
	mov rdi, 32
	imul rbx, rdi
	mov rdi, qword _gscope_context
	add rbx, rdi
	mov rdi, 24
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
.1688:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 73
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1689
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1691
	mov rbx, [_gpos]
	mov rsi, _s357
	mov rdi, 33
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1691:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 40]
	mov rsi, 4
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
	dec rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1693
.1689:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 2
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	test r8, r8
	jz .1694
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1696
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1698
	mov rbx, [_gpos]
	mov rsi, _s358
	mov rdi, 65
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1698:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 56]
	sub rbx, r8
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1700
	mov rbx, 7
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 32]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1702
.1700:
	mov rbx, 4
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 56]
	mov rsi, 32
	mov rcx, rsi
	shl rdi, cl
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 40]
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
.1702:
	jmp .1697
.1696:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1704
	mov rbx, 1
	mov rsi, [_gpos]
	dec rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1705
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 32]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1707
.1705:
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 40]
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
.1707:
	jmp .1697
.1704:
	mov rbx, 0
	test rbx, rbx
	jnz .3023
	mov eax, 1
	mov edi, 2
	mov rsi, _s359
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.3023:
.1708:
.1697:
	jmp .1695
.1694:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1710
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1711
	mov rbx, [_gpos]
	mov rsi, _s360
	mov rdi, 24
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1712
.1711:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1714
	mov rbx, [_gpos]
	mov rsi, _s361
	mov rdi, 60
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1714:
.1712:
	jmp .1695
.1710:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1716
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1717
	mov rbx, [_gpos]
	mov rsi, _s362
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1718
.1717:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1720
	mov rbx, [_gpos]
	mov rsi, _s363
	mov rdi, 64
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1720:
.1718:
	jmp .1695
.1716:
	mov rbx, 0
	test rbx, rbx
	jnz .3024
	mov eax, 1
	mov edi, 2
	mov rsi, _s364
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.3024:
.1721:
.1695:
	add rsp, 8
.1693:
	jmp .1722
.1684:
	mov rbx, [_gpos]
	mov rsi, _s365
	mov rdi, 16
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1722:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 64
	ret
parse.get_constant?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3025.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3025.30:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, 0
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1723
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1723:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3026.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3026.4:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gvar_context
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1725
	mov rbx, [_gpos]
	mov rsi, _s346
	mov rdi, 37
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1725:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 1
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.basic_token?:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3027.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3027.31:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1727
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_var_interaction
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1727:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1730
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3028.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3028.32:
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1730:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1732
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1733
	mov rbx, [_gpos]
	mov rsi, _s366
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1733:
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rsi, [_gpos]
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1732:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1736
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1736:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1738
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1738:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1740
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1740:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1742
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1742:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1744
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1744:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1746
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1746:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1748
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1748:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1750
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1750:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1752
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1752:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1754
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1754:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1756
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1756:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1758
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1758:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1760
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1760:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1762
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1762:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1764
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1764:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1766
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3029.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3029.1:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3030.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3030.2:
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3031.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3031.4:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3032.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3032.5:
	jmp .1728
.1766:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1768
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.top?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3033.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3033.1:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3034.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3034.6:
	jmp .1728
.1768:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1770
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 2
	sub rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3035.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s351
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.3035.4:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3036.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3036.7:
	jmp .1728
.1770:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1772
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 3
	sub rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3037.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s351
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.3037.5:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3038.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3038.8:
	jmp .1728
.1772:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1774
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3039.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3039.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3040.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3040.4:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3041.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3041.5:
	pop rbx
	pop rsi
	pop rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rsi
	push rbx
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3042.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3042.9:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3043.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3043.10:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3044.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3044.11:
	jmp .1728
.1774:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1776
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_has
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3045.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3045.6:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3046.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3046.7:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3047.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3047.8:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3048.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s367
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3048.9:
	pop rbx
	pop rsi
	pop rdi
	pop r8
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 0]
	push rdi
	push rsi
	push rbx
	push r8
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3049.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3049.12:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3050.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3050.13:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3051.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3051.14:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3052.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s354
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.3052.15:
	jmp .1728
.1776:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1778
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1778:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1780
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1780:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1782
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1782:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1784
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1784:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1786
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1786:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1788
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1788:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1790
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1790:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1792
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1792:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1794
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1794:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1796
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1796:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1798
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1728
.1798:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1799:
.1728:
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.slurp_early_ret:
	sub rsp, 1
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, 0
	mov byte [rbx], sil
.1800:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1801
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3053.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3053.2:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3054.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3054.4:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 10
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1803
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3055.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3055.3:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3056.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3056.5:
	mov rsi, 32
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
	jz .1805
	pop rbx
	mov rsi, rbx
	mov rdi, [_gpos]
	dec rdi
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1807
	pop rbx
	inc rbx
	mov rsi, _s439
	mov rdi, 16
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1809
.1807:
	add rsp, 8
.1809:
	jmp .1810
.1805:
	add rsp, 8
.1810:
	mov rbx, 1
	push rbx
	jmp .1811
.1803:
	mov rbx, 0
	push rbx
.1811:
	jmp .1812
.1801:
	mov rbx, 0
	push rbx
.1812:
	pop rbx
	test rbx, rbx
	jz .1813
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	jmp .1800
.1813:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 1
	ret
parse.create_reset_frame:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, [_gpos]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context.comptime_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.handle_comptime_else_and_reset_frame:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov esi, [rsi]
	mov rbx, 12
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rdi
	mov rbx, 16
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.lookahead?
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 28
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	pop rsi
	and rsi, rbx
	test rsi, rsi
	jz .1814
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1816
	mov rbx, [_gpos]
	mov rsi, _s423
	mov rdi, 41
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1816:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1818
	mov rbx, 11
	push rbx
	jmp .1820
.1818:
	mov rbx, 12
	push rbx
.1820:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
.1814:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.handle_close_r_cb:
	sub rsp, 81
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	add rbx, 8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.slurp_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3057.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3057.4:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3058.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3058.6:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 32
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
	add rbx, 9
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, 12
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	or r8, rdi
	test r8, r8
	jz .1821
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_comptime_else_and_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 81
	ret
.1821:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	mov [_gvar_context.len], rbx
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1823
	mov rbx, [_gfunction_context]
	mov rsi, 20
	add rbx, rsi
	mov rsi, [_gir_stream.len]
	mov dword [rbx], esi
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
	jnz .3059.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3059.7:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 15
	mov rdi, [_gfunction_context_idx]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1825
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, [_gfunction_context]
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1827
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
	jnz .3060.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3060.8:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s442
	mov rdi, 27
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1828
.1827:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, [_gfunction_context]
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jz .1830
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
	jnz .3061.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3061.9:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s443
	mov rdi, 49
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1830:
.1828:
.1825:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, 0
	mov [_gfunction_context], rbx
	mov rbx, 18446744073709551615
	mov [_gfunction_context_idx], rbx
	mov rbx, 0
	mov [_gfunction_attributes], rbx
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .3062
	mov eax, 1
	mov edi, 2
	mov rsi, _s444
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3062:
	jmp .1824
.1823:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1832
	mov rbx, qword [_rs_p]
	add rbx, 41
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3063.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3063.5:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3064.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3064.7:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 32
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
	add rsi, 41
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
	add rsi, 9
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
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1824
.1832:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1834
	jmp .1824
.1834:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1836
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1837
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
.1837:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1839
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s445
	mov rdi, 84
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1840
.1839:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jz .1842
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s446
	mov rdi, 84
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1842:
.1840:
	jmp .1824
.1836:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1844
	mov rbx, [_gpos]
	inc rbx
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .3065.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3065.33:
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
	jz .1845
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 73], rbx
	mov rbx, 5
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword [_rs_p]
	add rsi, 8
	xor r8, r8
	mov r8b, [rsi]
	push rbx
	push rdi
	test r8, r8
	jz .1847
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1849
.1847:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
.1849:
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 73]
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
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 73]
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
	jz .1850
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s447
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1850:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3066.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3066.34:
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
	jz .1852
	mov rbx, [_gpos]
	mov rsi, _s423
	mov rdi, 41
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1852:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 9
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
	jmp .1846
.1845:
	mov rbx, [_gpos]
	inc rbx
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .3067.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3067.35:
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
	jz .1855
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, 6
	mov rsi, qword [_rs_p]
	add rsi, 9
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	add rdi, 8
	xor r8, r8
	mov r8b, [rdi]
	push rbx
	push rsi
	test r8, r8
	jz .1856
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1858
.1856:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
.1858:
	mov rbx, [_gpos]
	mov rsi, [_glabel_c]
	mov rdi, rsi
	inc rdi
	mov [_glabel_c], rdi
	mov rdi, qword [_rs_p]
	add rdi, 9
	mov r8, 20
	add rdi, r8
	mov edi, [rdi]
	mov r8, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	add rsi, 9
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
	add rsi, 9
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
	jmp .1846
.1855:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1860
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
.1860:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	test rsi, rsi
	jz .1862
	mov rbx, [_gpos]
	mov rsi, _s448
	mov rdi, 51
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1862:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 9
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
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
.1859:
.1846:
	jmp .1824
.1844:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1865
	mov rbx, [_gpos]
	inc rbx
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .3068.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3068.36:
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
	jz .1866
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
	jnz .3069.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3069.37:
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
	jz .1868
	mov rbx, 6
	push rbx
	jmp .1869
.1868:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1871
	mov rbx, 5
	push rbx
	jmp .1869
.1871:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3070
	mov eax, 1
	mov edi, 2
	mov rsi, _s449
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3070:
	push rbx
.1872:
.1869:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	add rsi, 9
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	add rdi, 9
	mov r8, 8
	add rdi, r8
	mov edi, [rdi]
	mov r8, [_gpos]
	mov r9, [_glabel_c]
	mov r10, r9
	inc r10
	mov [_glabel_c], r10
	mov r10, qword [_rs_p]
	add r10, 9
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
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1873
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
.1873:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	test rsi, rsi
	jz .1875
	mov rbx, [_gpos]
	mov rsi, _s450
	mov rdi, 55
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1875:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbx, 12
	mov rsi, qword [_rs_p]
	add rsi, 9
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
	add rsi, 9
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
	jnz .3071.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3071.38:
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
	jz .1877
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1879
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s447
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1879:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3072.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3072.39:
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
	jz .1881
	mov rbx, [_gpos]
	mov rsi, _s423
	mov rdi, 41
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1881:
.1877:
	jmp .1883
.1866:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1884
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
.1884:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	test rsi, rsi
	jz .1886
	mov rbx, [_gpos]
	mov rsi, _s448
	mov rdi, 51
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1886:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 9
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
	add rsi, 9
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
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
.1883:
	jmp .1824
.1865:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1889
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1890
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
.1890:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .1892
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s451
	mov rdi, 94
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1893
.1892:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jz .1895
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s452
	mov rdi, 94
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1895:
.1893:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 9
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
	add rbx, 9
	mov rsi, 20
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4294967295
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1896
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 9
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
.1896:
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1824
.1889:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s453
	mov rdi, 74
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1898:
.1824:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1899
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
.1899:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 81
	ret
parse.handle_open_l_cb:
	sub rsp, 56
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.slurp_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1901
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3073.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3073.6:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3074.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3074.8:
	mov rsi, 32
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
	jz .1903
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1905
	mov rbx, [_gpos]
	mov rsi, _s440
	mov rdi, 45
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1905:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 9
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 0
	mov r8, [_gpos]
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 8]
	mov r9, 0
	mov r11, [_gvar_context.len]
	push rbx
	push rdi
	push rsi
	push r8
	push r10
	push r9
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
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
	jmp .1904
.1903:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1908
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3075.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3075.7:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3076.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3076.9:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 32
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
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1909
	mov rbx, [_gpos]
	mov rsi, _s441
	mov rdi, 50
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1909:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbx, 7
	mov rsi, qword [_rs_p]
	add rsi, 16
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	add rdi, 16
	mov r8, 8
	add rdi, r8
	mov edi, [rdi]
	mov r8, [_gpos]
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 48]
	mov r9, qword [_rs_p]
	add r9, 16
	mov r11, 20
	add r9, r11
	mov r9d, [r9]
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
	mov rbx, 11
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
	jmp .1904
.1908:
	mov rbx, 1
	mov rsi, 0
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
.1911:
.1904:
	add rsp, 8
	jmp .1912
.1901:
	mov rbx, 1
	mov rsi, 0
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
.1912:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 56
	ret
parse.locate_scope:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1913
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1913:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1915:
	mov rbx, 1
	test rbx, rbx
	jz .1916
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3077.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3077.10:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .1917
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1917:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1919
	jmp .1916
.1919:
	pop rbx
	dec rbx
	push rbx
	jmp .1915
.1916:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.handle_name:
	sub rsp, 64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3078.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3078.40:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rbx
	mov qword [rdi + 8], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 16]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call name_get_function_idx
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1921
	mov rbx, 16
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
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
	mov rdi, qword [rsi + 24]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jz .1923
	mov rbx, [_gfunction_context]
	mov rsi, 29
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gfunction_context]
	mov rsi, 40
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 2
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1925
	mov rbx, [_gpos]
	mov rsi, _s429
	mov rdi, 39
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1925:
	mov rbx, [_gfunction_context]
	mov rsi, 40
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1927
	mov rbx, [_gfunction_context]
	mov rsi, 30
	add rbx, rsi
	mov rsi, [_glabel_c]
	mov rdi, rsi
	inc rdi
	mov [_glabel_c], rdi
	mov dword [rbx], esi
.1927:
.1923:
	mov rbx, [_gfunction_context]
	mov rsi, 40
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1929
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3079.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3079.4:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 16
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1931
	mov rbx, [_gpos]
	mov rsi, _s430
	mov rdi, 47
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1931:
.1929:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3080.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3080.5:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 4
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .1933
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
.1933:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .3081.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3081.6:
	mov rbx, 48
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1935
	mov rbx, [_gpos]
	mov rsi, _s350
	mov rdi, 46
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1935:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3082.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3082.7:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .3083.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3083.8:
	mov rbx, 48
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	mov rbx, [_gpos]
	push rsi
	push rdi
	push r8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.1921:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 16]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call name_get_cextern_function_idx
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1937
	mov rbx, 67
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
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
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, rdi
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .3084.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3084.3:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gcfunctions
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1939
	mov rbx, [_gpos]
	mov rsi, _s350
	mov rdi, 46
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1939:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3085.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3085.4:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gcfunctions
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, rdi
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .3086.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3086.5:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gcfunctions
	add rdi, rbx
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push rsi
	test r8, r8
	jz .1941
	mov rbx, 0
	push rbx
	jmp .1943
.1941:
	mov rbx, 1
	push rbx
.1943:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, [_gpos]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.1937:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1944
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 16]
	mov rbx, 0
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1946
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3087.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3087.5:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1948
	mov rbx, 1
	push rbx
	jmp .1950
.1948:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3088.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3088.11:
	mov rdi, 32
	imul rbx, rdi
	mov rdi, qword _gscope_context
	add rbx, rdi
	mov rdi, 24
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
.1950:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov esi, [rsi]
	mov rbx, [_gfunction_context]
	mov rdi, 40
	add rbx, rdi
	mov rbx, [rbx]
	mov rdi, 16
	mov r8, rdi
	and rbx, rdi
	xor rdi, rdi
	cmp r8, rbx
	sete dil
	push rsi
	test rdi, rdi
	jz .1951
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1953
	mov rbx, [_gpos]
	mov rsi, _s432
	mov rdi, 50
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1953:
.1951:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1955
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1957
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1959
.1957:
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 40]
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
.1959:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1956
.1955:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1961
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1962
	mov rbx, 8
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1964
.1962:
	mov rbx, 5
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 56]
	mov rsi, 32
	mov rcx, rsi
	shl rdi, cl
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 40]
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
.1964:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1956
.1961:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1966
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 40]
	mov rsi, 4
	add rdi, rsi
	mov rdi, [rdi]
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
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1956
.1966:
	mov rbx, 0
	test rbx, rbx
	jnz .3089
	mov eax, 1
	mov edi, 2
	mov rsi, _s433
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3089:
.1967:
.1956:
	add rsp, 8
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.1946:
.1944:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1968
	mov rbx, [_gpos]
	mov rsi, _s434
	mov rdi, 28
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1968:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 64
	ret
parse.assert_const_fn_not:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1970
	mov rbx, [_gfunction_context]
	mov rsi, 40
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1972
	mov rbx, [_gpos]
	mov rsi, _s333
	mov rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1972:
.1970:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.is_inside_while_header:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1974:
	mov rbx, 1
	test rbx, rbx
	jz .1975
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3090.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3090.12:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, rsi
	mov r8, 9
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
	jz .1976
	jmp .1975
	jmp .1977
.1976:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1979
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1979:
.1977:
	add rsp, 8
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1980
	jmp .1975
.1980:
	pop rbx
	dec rbx
	push rbx
	jmp .1974
.1975:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.fn_complex_tokens:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3091.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3091.41:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
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
	jz .1982
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_var_interaction
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.1982:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1985
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.1985:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1987
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_name
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.1987:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1989
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1990
	mov rbx, [_gpos]
	mov rsi, _s435
	mov rdi, 45
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1990:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 0
	mov r8, [_gpos]
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 8]
	mov r9, [_glabel_c]
	mov r11, r9
	inc r11
	mov [_glabel_c], r11
	mov r11, [_gvar_context.len]
	push rbx
	push rdi
	push rsi
	push r8
	push r10
	push r9
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
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
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1992
	mov rbx, [_gpos]
	mov rsi, _s436
	mov rdi, 39
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1992:
	jmp .1983
.1989:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1995
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1996
	mov rbx, [_gpos]
	mov rsi, _s437
	mov rdi, 64
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1996:
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, 13
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, 0
	mov r8, [_gpos]
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 16]
	mov r9, 0
	mov r11, [_gvar_context.len]
	push rbx
	push rdi
	push rsi
	push r8
	push r10
	push r9
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.1995:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1999
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2000
	mov rbx, [_gpos]
	mov rsi, _s438
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2000:
	mov rbx, 9
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.locate_scope
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2002
	mov rbx, [_gpos]
	mov rsi, _s438
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2002:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3092.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3092.13:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.1999:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2005
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2006
	mov rbx, [_gpos]
	mov rsi, _s438
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2006:
	mov rbx, 8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.locate_scope
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 18446744073709551615
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2008
	mov rbx, [_gpos]
	mov rsi, _s438
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2008:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3093.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3093.14:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2005:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2011
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_open_l_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2011:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2013
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_close_r_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2013:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2015
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2016
	mov rbx, [_gfunction_context]
	mov rsi, 40
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2018
	mov rbx, 0
	test rbx, rbx
	jnz .3094
	mov eax, 1
	mov edi, 2
	mov rsi, _s455
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.3094:
.2018:
.2016:
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
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, [_gfunction_context]
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2020
	mov rbx, [_gpos]
	mov rsi, _s456
	mov rdi, 44
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2021
.2020:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, [_gfunction_context]
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jz .2023
	mov rbx, [_gpos]
	mov rsi, _s457
	mov rdi, 46
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.2023:
.2021:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2015:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2025
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rbx, 3
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2026
	mov rbx, [_gpos]
	mov rsi, _s458
	mov rdi, 52
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2026:
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3095.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3095.42:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov r8, [r8]
	add rsi, r8
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 24]
	mov r8, 0
	mov r10, 0
	mov r11, [_gvar_context.len]
	push rbx
	push rsi
	push rdi
	push r9
	push r8
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2028
	mov rbx, [_gpos]
	mov rsi, _s459
	mov rdi, 49
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2028:
	jmp .1983
.2025:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2031
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3096.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3096.43:
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
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3097.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3097.44:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2031:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2033
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2033:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2035
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2035:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2037
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2037:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2039
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2039:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2041
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2041:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2043
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2043:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2045
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2045:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2047
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, [_gpos]
	push rbx
	push rsi
	push r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2047:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2049
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2049:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2051
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2051:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2053
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, [_gpos]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2053:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2055
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.inline_asm
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1983
.2055:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2057
	mov rbx, [_gpos]
	mov rsi, _s483
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2058
.2057:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2060
	mov rbx, [_gpos]
	mov rsi, _s484
	mov rdi, 52
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2060:
.2058:
	mov rbx, 0
	test rbx, rbx
	jnz .3098
	mov eax, 1
	mov edi, 2
	mov rsi, _s485
	mov rdx, 79
	syscall
	mov rdi, 1
	jmp _exit
.3098:
.2056:
.1983:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
parse.eval_const_expr:
	sub rsp, 64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gir_stream.len]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword _gsp_array_data_const
	mov rsi, 4096
	mov rdi, qword [_rs_p]
	add rdi, 8
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gconst_stack_data
	mov rsi, 8192
	mov rdi, qword [_rs_p]
	add rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
.2061:
	mov rbx, 1
	test rbx, rbx
	jz .2062
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2063
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2065
	jmp .2062
.2065:
	jmp .2067
.2063:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s348
	mov rdi, 47
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2067:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3099.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3099.45:
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
	jz .2068
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3100.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3100.46:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call name_get_function_idx
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 56], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2070
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3101.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3101.9:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 16
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2072
	mov rbx, [_gpos]
	mov rsi, _s349
	mov rdi, 47
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2072:
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 56]
	mov rsi, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rsi, r8
	setb r9b
	test r9, r9
	jnz .3102.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3102.10:
	mov rsi, 48
	imul rdi, rsi
	mov rsi, qword _gfunctions
	add rdi, rsi
	mov edi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .2074
	mov rbx, [_gpos]
	mov rsi, _s350
	mov rdi, 46
	mov r8, qword [_rs_p]
	add r8, 8
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.2074:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3103.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3103.11:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	mov rbx, rdi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .3104.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3104.12:
	mov rbx, 48
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov r8, [_gpos]
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 16
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 56]
	mov rsi, [_gpos]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2076
.2070:
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2077
	mov rbx, [_gpos]
	mov rsi, _s356
	mov rdi, 39
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2077:
	mov rbx, [_gpos]
	pop rsi
	pop rdi
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	add rsi, 8
	mov rdi, [_gpos]
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
.2076:
	jmp .2079
.2068:
	mov rbx, qword [_rs_p]
	add rbx, 8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.basic_token?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2080
	mov rbx, [_gpos]
	mov rsi, _s369
	mov rdi, 46
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2080:
.2079:
	jmp .2061
.2062:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, [_gir_stream.len]
	mov rdi, qword [_rs_p]
	add rdi, 32
	mov r8, 0
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval.all_in_range
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2082
	mov rbx, [_gpos]
	mov rsi, _s379
	mov rdi, 40
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2082:
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2084
	mov rbx, [_gpos]
	mov rsi, _s380
	mov rdi, 64
	mov r8, qword [_rs_p]
	add r8, 8
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.2084:
	mov rbx, qword [_rs_p]
	add rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.pop?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3105.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s371
	mov rdx, 117
	syscall
	mov rdi, 1
	jmp _exit
.3105.53:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov [_gir_stream.len], rsi
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3106
	mov eax, 1
	mov edi, 2
	mov rsi, _s381
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3106:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 64
	ret
parse.def_field:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3107.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3107.47:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2086
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2088
	mov rbx, [_gpos]
	mov rsi, _s347
	mov rdi, 21
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2088:
	jmp .2087
.2086:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2091
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.eval_const_expr
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2087
.2091:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2093
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2094
	mov rbx, [_gpos]
	mov rsi, _s366
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2094:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	push rbx
	jmp .2087
.2093:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2097
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3108.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3108.48:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	jmp .2087
.2097:
	mov rbx, [_gpos]
	mov rsi, _s382
	mov rdi, 58
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
.2098:
.2087:
	pop rbx
	pop rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.any_variable:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3109.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3109.49:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2099
	mov rbx, 1
	push rbx
	jmp .2100
.2099:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2102
	mov rbx, 2
	push rbx
	jmp .2100
.2102:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3110
	mov eax, 1
	mov edi, 2
	mov rsi, _s334
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3110:
	push rbx
.2103:
.2100:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2104
	mov rbx, [_gpos]
	mov rsi, _s335
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2104:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.duplicate_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.iter_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2106
	mov rbx, [_gpos]
	mov rsi, _s345
	mov rdi, 38
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2106:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.def_field
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2108
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2110
	mov rbx, [_gpos]
	mov rsi, _s383
	mov rdi, 41
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2110:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	push rsi
.2108:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, [_gfunction_context]
	mov r8, 0
	xor r9, r9
	cmp rbx, r8
	setne r9b
	push rsi
	push rdi
	test r9, r9
	jz .2112
	mov rbx, [_gfunction_context]
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .2114
.2112:
	mov rbx, 0
	push rbx
.2114:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	inc rdi
	mov rbx, rdi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .3111.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3111.50:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _gtoken_stream
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov rdi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2115
	mov rbx, [_gfunction_context]
	mov rsi, 24
	add rbx, rsi
	mov rsi, [_gfunction_context]
	mov rdi, 24
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	add rsi, r8
	mov dword [rbx], esi
	mov rbx, [_gfunction_context]
	mov rsi, 29
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
.2115:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.def_comptime_const:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	push rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context.Constant_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.const_expression:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2117
	mov rbx, [_gpos]
	mov rsi, _s399
	mov rdi, 25
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2117:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3112.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3112.51:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.duplicate_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.iter_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2119
	mov rbx, [_gpos]
	mov rsi, _s400
	mov rdi, 44
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2119:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.def_field
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context.Constant_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.one_cextern_arg:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3113.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3113.52:
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
	sete dil
	test rdi, rdi
	jz .2121
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3114.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3114.53:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2123
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2124
.2123:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2126
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2124
.2126:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2128
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2124
.2128:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2130
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2124
.2130:
	mov rbx, [_gpos]
	mov rsi, _s404
	mov rdi, 51
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2131:
.2124:
	add rsp, 8
.2121:
	mov rbx, [_gpos]
	mov rsi, _s405
	mov rdi, 65
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.cextern:
	sub rsp, 56
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2132
	mov rbx, [_gpos]
	mov rsi, _s401
	mov rdi, 62
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2132:
	mov rbx, qword [_rs_p]
	mov rsi, 24
	mov rdi, qword [_rs_p]
	add rdi, 24
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2134
	mov rbx, [_gpos]
	mov rsi, _s402
	mov rdi, 36
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2134:
.2136:
	mov rbx, 1
	test rbx, rbx
	jz .2137
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2138
	mov rbx, 6
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2140
	jmp .2137
.2140:
	jmp .2142
.2138:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s403
	mov rdi, 47
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2142:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.one_cextern_arg
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 24
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32_c_c?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2143
	mov rbx, [_gpos]
	mov rsi, _s406
	mov rdi, 65
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2143:
	jmp .2136
.2137:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2145
	mov rbx, [_gpos]
	mov rsi, _s403
	mov rdi, 47
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2145:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	inc rsi
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3115.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3115.54:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.inspect_current_name?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2147
	mov rbx, _s407
	mov rsi, 4
	mov rdi, qword [rsp + 0]
	mov r8, rsi
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
	jz .73.95
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
	jmp .75.95
.73.95:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.95:
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2149
	mov rbx, [_gpos]
	mov rsi, _s408
	mov rdi, 42
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2149:
	mov rbx, 0
	push rbx
	jmp .2151
.2147:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.one_cextern_arg
	mov [_rs_p], rsp
	mov rsp, rbp
.2151:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, qword [_rs_p]
	add rbx, 24
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call cfunctions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 56
	ret
stas.parse:
	sub rsp, 96
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	mov [_gmain_fn_idx], rbx
	mov rbx, 0
	mov [_gpos], rbx
	mov rbx, qword _gsp_array_data
	mov rsi, 4096
	mov rdi, qword [_rs_p]
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array32.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
.2152:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2153
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2154
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3116.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3116.8:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3117.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3117.15:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 11
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2156
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2158:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2159
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3118.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3118.55:
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
	jz .2160
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2161
.2160:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2163
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2163:
.2161:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2164
	jmp .2159
.2164:
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2158
.2159:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	test rdi, rdi
	jz .2166
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3119.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3119.9:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3120.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3120.16:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s332
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2166:
.2156:
.2154:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3121.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3121.56:
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
	jz .2168
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.any_variable
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2169
.2168:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2171
	mov rbx, 7
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.lookahead?
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	pop rsi
	and rsi, rbx
	test rsi, rsi
	jz .2172
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, 16
	mov rsi, [_gfunction_attributes]
	or rbx, rsi
	mov [_gfunction_attributes], rbx
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2174
.2172:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
.2174:
	jmp .2169
.2171:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2176
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.cextern
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2169
.2176:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2178
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert_const_fn_not
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.iter_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2179
	mov rbx, [_gpos]
	mov rsi, _s410
	mov rdi, 38
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2179:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.def_field
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, 15
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2181
	mov rbx, [_gpos]
	mov rsi, _s411
	mov rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2181:
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2183
	mov rbx, [_gpos]
	mov rsi, _s411
	mov rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2183:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .2185
	mov rbx, 12
	push rbx
	jmp .2187
.2185:
	mov rbx, 11
	push rbx
.2187:
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2169
.2178:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2189
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3122.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3122.57:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2191
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2192
.2191:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2194
	jmp .2192
.2194:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2196
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2197
	mov rbx, [_gpos]
	mov rsi, _s413
	mov rdi, 35
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2197:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3123.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3123.58:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call FnAttribute.from_str?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2199
	mov rbx, [_gpos]
	mov rsi, _s418
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2199:
	mov rbx, [_gfunction_attributes]
	pop rsi
	or rsi, rbx
	mov [_gfunction_attributes], rsi
	jmp .2192
.2196:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2202
	mov rbx, [_gpos]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.expect?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2203
	mov rbx, [_gpos]
	mov rsi, _s419
	mov rdi, 57
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2203:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.eval_const_expr
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2205
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3124.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3124.59:
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
	jnz .3125.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3125.60:
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
	jz .2207
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3126.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3126.61:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.2207:
.2205:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2209
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3127.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3127.62:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s420
	mov rsi, 25
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2211
	mov rbx, _s421
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
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
	mov rbx, _s422
	mov rsi, 1
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2211:
	mov rbx, 1
	mov rsi, _s178
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.eprint_file_tok
	mov [_rs_p], rsp
	mov rsp, rbp
.2209:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2213
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov [_gpos], rbx
.2213:
	jmp .2192
.2202:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r9, r9
	cmp rsi, rdi
	setne r9b
	test r9, r9
	jnz .3128.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3128.10:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r9, [_gscope_context.len]
	xor r10, r10
	cmp rdi, r9
	setb r10b
	test r10, r10
	jnz .3129.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3129.17:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, rsi
	mov r9, 11
	xor r10, r10
	cmp rdi, r9
	sete r10b
	mov rdi, 12
	xor r9, r9
	cmp rsi, rdi
	sete r9b
	or r10, r9
	and r8, r10
	push rbx
	test r8, r8
	jz .2216
	mov rbx, qword [_rs_p]
	add rbx, 64
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3130.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3130.11:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3131.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3131.18:
	mov rdi, 32
	imul rsi, rdi
	mov rdi, qword _gscope_context
	add rsi, rdi
	mov rdi, 32
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
	add rbx, 64
	mov rsi, qword [_rs_p]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_comptime_else_and_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2192
.2216:
	mov rbx, [_gpos]
	mov rsi, _s424
	mov rdi, 22
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2217:
.2192:
	add rsp, 8
	jmp .2218
.2189:
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.basic_token?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2219
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.2219:
.2218:
.2188:
.2169:
	add rsp, 8
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2152
.2153:
	mov rbx, qword [_rs_p]
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3132
	mov eax, 1
	mov edi, 2
	mov rsi, _s486
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3132:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2221
	mov rbx, [_gtoken_stream.len]
	dec rbx
	mov rsi, _s487
	mov rdi, 60
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2221:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2223
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3133.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3133.12:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3134.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3134.19:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 12
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2225
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3135.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3135.13:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3136.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3136.20:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s332
	mov rdi, 26
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_noexit.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2227
.2225:
	mov rbx, 0
	test rbx, rbx
	jnz .3137
	mov eax, 1
	mov edi, 2
	mov rsi, _s488
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3137:
.2227:
.2223:
	mov rbx, [_gmain_fn_idx]
	mov rsi, 18446744073709551615
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2228
	mov rbx, _s489
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
.2228:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 96
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
	jnz .3138
	mov eax, 1
	mov edi, 2
	mov rsi, _s543
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3138:
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
	jnz .3139.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3139.10:
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
	mov qword [rdi + 8], rbx
	mov qword [rdi + 0], rsi
	mov rbx, 0
	push rbx
.2230:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2231
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3140.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s542
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3140.1:
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
	mov r9, qword [r8 + 0]
	mov r10, qword [r8 + 8]
	mov r8, rsi
	mov r11, r10
	xor r12, r12
	cmp r8, r11
	sete r12b
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	test r12, r12
	jz .73.96
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
	jmp .75.96
.73.96:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.96:
	pop rbx
	test rbx, rbx
	jz .2232
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.2232:
	pop rbx
	inc rbx
	push rbx
	jmp .2230
.2231:
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
.2264:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3141.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3141.13:
	mov rsi, 48
	imul rbx, rsi
	mov rsi, qword _gfunctions
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_gused_functions]
	inc rbx
	mov [_gused_functions], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 2
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2234
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 16
	add rdi, rbx
	mov edi, [rdi]
	sub rsi, rdi
	mov rbx, 12
	xor rdi, rdi
	cmp rsi, rbx
	setae dil
	test rdi, rdi
	jz .2236
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_ginlined_functions]
	inc rbx
	mov [_ginlined_functions], rbx
.2236:
	jmp .2238
.2234:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .3142
	mov eax, 1
	mov edi, 2
	mov rsi, _s541
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3142:
.2238:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.2239:
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
	jz .2240
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3143.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3143.11:
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
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3144.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3144.12:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 16
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 40
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, 16
	mov r9, rbx
	and rdi, rbx
	xor rbx, rbx
	cmp r9, rdi
	sete bl
	test rbx, rbx
	sete bl
	and r8, rbx
	push rsi
	test r8, r8
	jz .2241
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3145.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3145.14:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .2243
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2245:
	mov rbx, 1
	test rbx, rbx
	jz .2246
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3146.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3146.13:
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
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3147.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3147.14:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 13
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	test r8, r8
	jz .2247
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .2249
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2249:
	jmp .2248
.2247:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2252
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2253
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2253:
	jmp .2248
.2252:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2256
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3148.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3148.15:
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
	jmp .2246
	jmp .2248
.2256:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2258
	jmp .2246
.2258:
.2257:
.2248:
	jmp .2245
.2246:
	add rsp, 8
.2243:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3149.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3149.16:
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
	jz .2260
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3150.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3150.17:
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
	jnz .3151.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3151.15:
	mov rbx, 48
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
	jz .2262
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.2262:
.2260:
	jmp .2242
.2241:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2266
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
	jz .2267
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
.2267:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3152.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3152.18:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
	jmp .2242
.2266:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2270
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2271
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3153.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3153.19:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rbx, 39
	mov dword [rsi], ebx
	jmp .2273
.2271:
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
	jnz .3154.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3154.20:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.2273:
.2270:
.2242:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .2239
.2240:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3155.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3155.21:
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
	jnz .3156
	mov eax, 1
	mov edi, 2
	mov rsi, _s544
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3156:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
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
	jz .2274
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
.2274:
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
	jz .2276
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
.2276:
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
	mov rbx, _s590
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
sysv_argc_to_reg:
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
	jz .2282
	mov rbx, 2
	push rbx
	jmp .2283
.2282:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2285
	mov rbx, 1
	push rbx
	jmp .2283
.2285:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2287
	mov rbx, 12
	push rbx
	jmp .2283
.2287:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2289
	mov rbx, 11
	push rbx
	jmp .2283
.2289:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2291
	mov rbx, 3
	push rbx
	jmp .2283
.2291:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2293
	mov rbx, 4
	push rbx
	jmp .2283
.2293:
	mov rbx, 18446744073709551615
	mov rsi, 0
	test rsi, rsi
	jnz .3157
	mov eax, 1
	mov edi, 2
	mov rsi, _s717
	mov rdx, 74
	syscall
	mov rdi, 1
	jmp _exit
.3157:
	push rbx
.2294:
.2283:
	pop rbx
	pop rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
gen_cextern_function:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3158.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3158.6:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gcfunctions
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2295
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	dec rsi
	push rsi
.2297:
	mov rbx, 1
	test rbx, rbx
	jz .2298
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sysv_argc_to_reg
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
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
	jz .2299
	jmp .2298
.2299:
	pop rbx
	dec rbx
	push rbx
	jmp .2297
.2298:
	add rsp, 8
.2295:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_stack_deep_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3159.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s642
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3159.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jnz .3160
	mov eax, 1
	mov edi, 2
	mov rsi, _s718
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3160:
	mov rbx, _s573
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
	mov rbx, _s574
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
	mov rbx, _s613
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
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
	mov rbx, _s603
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
	mov rbx, _s604
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
	mov rsi, qword [rbx + 0]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2301
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
	jnz .3161.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3161.8:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	test r8, r8
	jz .2303
	mov rbx, _s719
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
	jmp .2304
.2303:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2306
	mov rbx, _s720
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
.2306:
.2304:
	add rsp, 8
.2301:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
gen_range:
	sub rsp, 184
	mov [_rs_p], rsp
	mov rsp, rbp
.2358:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
.2307:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .2308
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3162.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3162.22:
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
	jz .2309
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3163.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3163.23:
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
	jnz .3164.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3164.16:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 16
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .2311
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .2313
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	inc rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	mov rbx, 0
	push rsi
	push rdi
	push r8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval.all_in_range
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
	jmp .2315
.2313:
	mov rbx, 1
	push rbx
.2315:
	jmp .2316
.2311:
	mov rbx, 1
	push rbx
.2316:
	jmp .2317
.2309:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 8
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .2318
	mov rbx, 1
	push rbx
	jmp .2320
.2318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval.basic_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	push rbx
.2320:
.2317:
	pop rbx
	test rbx, rbx
	jz .2321
	mov rbx, 0
	push rbx
.2323:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov r8, [r8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .2324
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	push rbx
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64_a_b?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3165.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.3165.9:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .2323
.2324:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	mov rdi, 8
	add rsi, rdi
	mov qword [rsi], rbx
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
	jz .2325
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3166.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3166.24:
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
	jnz .3167.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3167.63:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s591
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
	mov rbx, _s592
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
	jnz .3168.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s212
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.3168.7:
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
	mov rbx, _s422
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
.2325:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3169.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3169.25:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3170.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3170.26:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 13
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	test r8, r8
	jz .2327
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.def.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2328
.2327:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2330
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3171
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3171:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3172.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3172.17:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 28
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 48]
	mov rsi, 29
	add rdi, rsi
	xor rsi, rsi
	mov sil, [rdi]
	test rsi, rsi
	sete sil
	or rbx, rsi
	test rbx, rbx
	jz .2331
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2333
.2331:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor r8, r8
	mov r8b, [rbx]
	or rsi, r8
	and rdi, rsi
	test rdi, rdi
	jz .2334
	mov rbx, _s594
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
.2334:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s221
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
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2336
	mov rbx, _s602
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
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
.2336:
	mov rbx, _s603
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
	mov rbx, _s604
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
	mov rsi, qword [rbx + 48]
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
	jz .2338
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
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
.2338:
	add rsp, 8
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2340
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3173.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s341
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3173.27:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s426
	mov rdi, 0
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call trace.Tok.to_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	mov rdi, 8
	add r8, rdi
	mov r8, [r8]
	mov rdi, r8
	mov r9, 8
	add rdi, r9
	mov r8, [r8]
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
	mov rdi, 10
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call slits_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2342
	mov rbx, _s606
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
	jmp .2344
.2342:
	mov rbx, _s578
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
.2344:
	mov rbx, _s607
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
	mov rbx, _s608
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gslits.len]
	dec rbx
	mov rsi, rbx
	mov rdi, 1024
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3174.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s542
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3174.2:
	mov rsi, 8
	imul rbx, rsi
	mov rsi, qword _gslits
	add rbx, rsi
	mov rbx, [rbx]
	mov rbx, [rbx]
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
	mov rbx, _s609
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gslits.len]
	dec rbx
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
	mov rbx, _s580
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
.2340:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2333:
	jmp .2328
.2330:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2346
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2347
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2349
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
.2349:
	mov rbx, _s610
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2351
.2347:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3175.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3175.18:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, _s573
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
	mov rbx, _s574
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
	mov rsi, qword [rbx + 48]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2352
	mov rbx, _s611
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
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
.2352:
	mov rbx, _s612
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
.2351:
	jmp .2328
.2346:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2355
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3176.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s339
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3176.19:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2356
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 34
	add rsi, rbx
	mov rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov dword [rsi], ebx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 48]
	mov rbx, 34
	add r8, rbx
	mov r8d, [r8]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 0]
	push rsi
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2359
.2356:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s573
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
	mov rbx, _s574
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
	mov rbx, _s613
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
	mov rbx, _s603
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
	mov rbx, _s604
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
.2359:
	jmp .2328
.2355:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2361
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 96], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s616
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
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s617
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2362
	mov rbx, _s606
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
	jmp .2364
.2362:
	mov rbx, _s578
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
.2364:
	mov rbx, _s618
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
	mov rbx, _s609
	mov rsi, 12
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
	mov rbx, _s608
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3177.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s542
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3177.3:
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
	mov rbx, _s580
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
	mov rbx, _s619
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
	mov rbx, _s620
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
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.def.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3178.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3178.4:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2361:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2366
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s621
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
	jmp .2328
.2366:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2368
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2328
.2368:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2370
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2371
	mov rbx, _s623
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
	mov rsi, qword [rbx + 56]
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
.2371:
	jmp .2328
.2370:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2374
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 104], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 32
	mov rcx, rbx
	shr rsi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 112], rsi
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
	jnz .3179.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3179.9:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rbx, _s589
	mov rsi, 5
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
	mov rbx, _s624
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	push rsi
.2375:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2376
	pop rbx
	dec rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 104]
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
	mov rdi, _s625
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
	mov rbx, _s626
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
	mov rbx, _s627
	mov rsi, 3
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
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3180.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3180.5:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 0
	mov byte [rsi], dil
	push rbx
	mov rbp, rsp
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
	jmp .2375
.2376:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3181.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3181.6:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2374:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2378
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 32
	mov rcx, rbx
	shr rsi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 136], rsi
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
	jnz .3182.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3182.10:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 144], rbx
	mov rbx, _s589
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
	mov rbx, _s624
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	push rsi
.2379:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2380
	pop rbx
	dec rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 136]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 128]
	add r8, rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s628
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
	mov rbx, _s626
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
	mov rbx, _s629
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
	jmp .2379
.2380:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3183.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3183.7:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2378:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2382
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s630
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3184.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3184.6:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
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
	jmp .2328
.2382:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2384
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3185.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3185.7:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 160], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 160]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2385
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 152], rsi
	mov rbx, _s631
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3186.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3186.8:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
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
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	push rsi
	mov rbp, rsp
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
	jmp .2387
.2385:
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
	jnz .3187.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3187.11:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 152], rbx
	mov rbx, _s589
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s632
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3188.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3188.9:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
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
	mov rsi, qword [rbx + 160]
	push rsi
.2388:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2389
	pop rbx
	dec rbx
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
	mov rbx, _s625
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s627
	mov rsi, 3
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
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3189.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3189.8:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 0
	mov byte [rsi], dil
	push rbx
	mov rbp, rsp
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
	jmp .2388
.2389:
	add rsp, 8
.2387:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3190.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3190.9:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2384:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2391
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3191.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3191.10:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 176], rax
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
	jnz .3192.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3192.12:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 168], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 176]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2392
	mov rbx, _s589
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3193.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3193.11:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
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
	mov rbx, _s629
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
	mov rsi, qword [rbx + 168]
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
	jnz .3194.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3194.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2394
.2392:
	mov rbx, _s589
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s632
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3195.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3195.12:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _gvar_context
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
	mov rsi, qword [rbx + 176]
	push rsi
.2395:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2396
	pop rbx
	dec rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 176]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s628
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s629
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
	jmp .2395
.2396:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3196.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3196.10:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
.2394:
	jmp .2328
.2391:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2398
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
	jnz .3197.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3197.14:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s589
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s634
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
	mov rbx, _s589
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s629
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
	mov rsi, qword [rbx + 64]
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
	jnz .3198.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3198.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2398:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2400
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
	jnz .3199.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3199.16:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s589
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s634
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
	mov rbx, _s623
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s636
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
	mov rsi, qword [rbx + 64]
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
	jnz .3200.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3200.17:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2400:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2402
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
	jnz .3201.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3201.18:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
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
	jnz .3202.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3202.19:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s589
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s634
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
	mov rbx, _s589
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s629
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
	mov rbx, _s623
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s636
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
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s626
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 64]
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
	jnz .3203.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3203.20:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3204.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3204.11:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2402:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2404
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
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s616
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
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
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
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3205.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3205.12:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2404:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2406
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s610
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.ref.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2328
.2406:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2408
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
	mov rdi, _s640
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
	jnz .3206.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3206.21:
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
	jnz .3207.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3207.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2408:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2410
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
	mov rdi, _s512
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
	jnz .3208.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3208.22:
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
	jnz .3209.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3209.14:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2410:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2412
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
	mov rdi, _s641
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
	jnz .3210.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3210.23:
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
	jnz .3211.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3211.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2412:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2414
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
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
	mov rbx, _s644
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
	mov rbx, _s645
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	jnz .3212.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3212.24:
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
	jnz .3213.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3213.16:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3214.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3214.17:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2414:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2416
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
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
	mov rbx, _s644
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
	mov rbx, _s645
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	jnz .3215.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3215.25:
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
	jnz .3216.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3216.18:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3217.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3217.19:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2416:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2418
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s646
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
	jmp .2328
.2418:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2420
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
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
	mov rbp, rsp
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
	jmp .2328
.2420:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2422
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
	jnz .3218.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3218.26:
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
	mov qword [rbx + 72], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s644
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
	mov rbx, _s645
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3219.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3219.20:
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
	jnz .3220.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3220.27:
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
	jnz .3221.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3221.28:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2422:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2424
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
	mov qword [rbx + 64], rsi
	mov rbx, _s648
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s649
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
	mov rsi, qword [rbx + 64]
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
	jnz .3222.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3222.29:
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
	jnz .3223.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3223.21:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2424:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2426
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
	mov qword [rbx + 64], rsi
	mov rbx, _s650
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s649
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
	mov rsi, qword [rbx + 64]
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
	jnz .3224.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3224.30:
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
	jnz .3225.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3225.22:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2426:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2428
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s616
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
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s651
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
	mov rsi, qword [rbx + 64]
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
	jnz .3226.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3226.31:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2428:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2430
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
	mov rdi, _s667
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
	jnz .3227.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3227.32:
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
	jnz .3228.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3228.23:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2430:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2432
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
	mov rdi, _s668
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
	jnz .3229.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3229.33:
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
	jnz .3230.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3230.24:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2432:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2434
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s669
	mov rsi, 5
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
	mov rsi, qword [rbx + 64]
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
	jnz .3231.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3231.34:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2434:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2436
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
	mov rdi, _s670
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
	jnz .3232.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3232.35:
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
	jnz .3233.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3233.25:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2328
.2436:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2438
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	jnz .3234.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3234.36:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
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
	jnz .3235.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3235.37:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2438:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2440
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
	jmp .2328
.2440:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2442
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2443
	mov rbx, 1
	mov rsi, [_grallocator_stack.len]
	sub rbx, rsi
	mov rsi, 8
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s671
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
	mov rbx, _s629
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
	jmp .2445
.2443:
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
.2445:
	jmp .2328
.2442:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2447
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2448
	mov rbx, 2
	mov rsi, [_grallocator_stack.len]
	sub rbx, rsi
	mov rsi, 8
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s671
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
	mov rbx, _s629
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
	jmp .2450
.2448:
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
.2450:
	jmp .2328
.2447:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2452
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 80], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	jnz .3236.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3236.38:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
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
	jnz .3237.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3237.39:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	jnz .3238.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3238.40:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2452:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2454
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 88], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 80], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
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
	jnz .3239.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3239.41:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
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
	jnz .3240.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3240.42:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	jnz .3241.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3241.43:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	jnz .3242.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3242.44:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2454:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2456
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2457
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
	jnz .3243.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3243.26:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2459
.2457:
	mov rbx, _s672
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
.2459:
	jmp .2328
.2456:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2461
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
	jnz .3244.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3244.45:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s651
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3245.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3245.46:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3246.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3246.27:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3247.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3247.28:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2461:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2463
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
	jnz .3248.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3248.47:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s675
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3249.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3249.48:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3250.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3250.29:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3251.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3251.30:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2463:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2465
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
	jnz .3252.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3252.49:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s676
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3253.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3253.50:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3254.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3254.31:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3255.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3255.32:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2465:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2467
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
	jnz .3256.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3256.51:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s677
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3257.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3257.52:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3258.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3258.33:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3259.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3259.34:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2467:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2469
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
	jnz .3260.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3260.53:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s678
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3261.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3261.54:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3262.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3262.35:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3263.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3263.36:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2469:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2471
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
	jnz .3264.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3264.55:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s679
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3265.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3265.56:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3266.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3266.37:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3267.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3267.38:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2471:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2473
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
	jnz .3268.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3268.57:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s680
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3269.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3269.58:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3270.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3270.39:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3271.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3271.40:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2473:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2475
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
	jnz .3272.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3272.59:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s681
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3273.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3273.60:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3274.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3274.41:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3275.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3275.42:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2475:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2477
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
	jnz .3276.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3276.61:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s682
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3277.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3277.62:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3278.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3278.43:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3279.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3279.44:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2477:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2479
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
	jnz .3280.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3280.63:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 80], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 80]
	push rsi
	mov rbp, rsp
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
	mov rsi, 5
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s683
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 80]
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
	mov rsi, qword [rbx + 80]
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
	jnz .3281.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3281.64:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3282.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3282.45:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3283.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3283.46:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2479:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2481
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s684
	mov rsi, 11
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3284.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3284.47:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3285.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3285.48:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2481:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2483
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s685
	mov rsi, 11
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3286.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3286.49:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3287.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3287.50:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2483:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2485
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s701
	mov rsi, 12
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3288.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3288.51:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3289.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3289.52:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2485:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2487
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 72], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s625
	mov rsi, 12
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 72]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3290.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3290.53:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3291.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3291.54:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2487:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2489
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
	jnz .3292.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3292.65:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s589
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s629
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
	mov rsi, qword [rbx + 72]
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
	jnz .3293.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3293.66:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3294.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3294.55:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2489:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2491
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
	jnz .3295.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3295.67:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s673
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rsi, qword [rbx + 72]
	push rsi
	mov rbp, rsp
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
	mov rbx, _s589
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
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
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s629
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
	mov rsi, qword [rbx + 72]
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
	jnz .3296.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3296.68:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3297.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3297.56:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2328
.2491:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2493
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s589
	mov rsi, 5
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
	call Reg.32.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s629
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
	mov rsi, qword [rbx + 64]
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
	jnz .3298.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3298.69:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2493:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2495
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s589
	mov rsi, 5
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s635
	mov rsi, 3
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
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s629
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
	mov rsi, qword [rbx + 64]
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
	jnz .3299.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3299.70:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2328
.2495:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2497
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_cextern_function
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2328
.2497:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2499
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_ginline_asms.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3300.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s721
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3300.1:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _ginline_asms
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 32
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2500
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 32
	add rdi, rbx
	mov edi, [rdi]
	add rsi, rdi
	push rsi
.2502:
	mov rbx, 1
	test rbx, rbx
	jz .2503
	pop rbx
	dec rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .2504
	jmp .2503
.2504:
	jmp .2502
.2503:
	add rsp, 8
.2500:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov esi, [rsi]
	push rsi
.2506:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	mov rdi, 44
	add r8, rdi
	mov r8d, [r8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .2507
	mov rbx, 9
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
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
	jnz .3301.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s317
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3301.64:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gtoken_stream
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
	jmp .2506
.2507:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 36
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2508
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 16
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	mov rdi, 36
	add r8, rdi
	mov r8d, [r8]
	add rbx, r8
	push rbx
	push rsi
.2510:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2511
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, rdi
	push rbx
	push rdi
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
	jnz .3302.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3302.71:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	inc rbx
	push rbx
	jmp .2510
.2511:
	add rsp, 8
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 32
	add rdi, rbx
	mov edi, [rdi]
	add rsi, rdi
	push rsi
.2512:
	mov rbx, 1
	test rbx, rbx
	jz .2513
	pop rbx
	dec rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 48]
	mov r8, 16
	add r9, r8
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 48]
	mov r8, 36
	add r10, r8
	mov r10d, [r10]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call reg_exists_in_arr
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2514
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3303.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s583
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3303.57:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2516
.2514:
	add rsp, 8
.2516:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .2517
	jmp .2513
.2517:
	jmp .2512
.2513:
	add rsp, 8
.2508:
	jmp .2328
.2499:
	mov rbx, 0
	test rbx, rbx
	jnz .3304
	mov eax, 1
	mov edi, 2
	mov rsi, _s722
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3304:
.2519:
.2328:
	add rsp, 8
.2321:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2307
.2308:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2520
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call label.def.fwriteln
	mov [_rs_p], rsp
	mov rsp, rbp
.2520:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 184
	ret
isprint_pp_escape:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 34
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2522
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.2522:
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
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2524
	mov rbx, _s728
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
.2524:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2526
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
	jz .2528
	mov rbx, _s729
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
	jmp .2530
.2528:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2530:
.2526:
	mov rbx, 1
	push rbx
.2531:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .2532
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
	jz .2533
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2535
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2537
.2535:
	mov rbx, _s730
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
.2537:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .2538
.2533:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2539
	mov rbx, _s731
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
	jmp .2541
.2539:
	mov rbx, _s590
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
.2541:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2538:
	pop rbx
	inc rbx
	push rbx
	jmp .2531
.2532:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2542
	mov rbx, _s729
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.2542:
	mov rbx, _s732
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
	sub rsp, 48
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2544
	mov rbx, _s552
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
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2546
	mov rbx, _s555
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
	mov rbx, _s556
	mov rsi, 35
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s557
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
	mov rbx, _s558
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
	mov rbx, 0
	push rbx
.2548:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2549
	mov rbx, _s559
	mov rsi, 6
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
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3305.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3305.7:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gcfunctions
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
	jmp .2548
.2549:
	add rsp, 8
	jmp .2550
.2546:
	mov rbx, _s560
	mov rsi, 24
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gtarget_os]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call OS.elf_os_abi_from?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2551
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
	jmp .2553
.2551:
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
.2553:
	mov rbx, _s561
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
	mov rbx, _s562
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
.2550:
	jmp .2545
.2544:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2555
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2556
	mov rbx, _s563
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s422
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
.2556:
	mov rbx, _s564
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
	mov rbx, _s565
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
	mov rbx, _s566
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
.2558:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2559
	mov rbx, _s567
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
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3306.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s343
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3306.8:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _gcfunctions
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
	mov rbx, 93
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
	pop rbx
	inc rbx
	push rbx
	jmp .2558
.2559:
	add rsp, 8
	jmp .2545
.2555:
	mov rbx, 0
	test rbx, rbx
	jnz .3307
	mov eax, 1
	mov edi, 2
	mov rsi, _s568
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3307:
.2560:
.2545:
	mov rbx, _s569
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
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2561
	mov rbx, _s570
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
	jmp .2563
.2561:
	mov rbx, _s571
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
.2563:
	mov rbx, _s572
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
	mov rbx, _s573
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
	mov rbx, _s574
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
	mov rbx, _s575
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
	mov rbx, _s576
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
	mov rbx, _s577
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
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2564
	mov rbx, _s578
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
	jmp .2566
.2564:
	mov rbx, _s579
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
.2566:
	mov rbx, _s580
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
	mov rbx, _s581
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
	mov rbx, qword _gconst_stack_data
	mov rsi, 8192
	mov rdi, qword [_rs_p]
	add rdi, 16
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Array64.init_with_buffer_sz_bytes
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, [_gir_stream.len]
	mov rdi, 0
	mov r8, qword [_rs_p]
	add r8, 16
	push rbx
	push rsi
	push rdi
	push r8
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
	jz .2567
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2569
	mov rbx, _s723
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
	jmp .2571
.2569:
	mov rbx, _s724
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
.2571:
	jmp .2568
.2567:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2573
	mov rbx, _s725
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
	jmp .2568
.2573:
	mov rbx, 0
	test rbx, rbx
	jnz .3308
	mov eax, 1
	mov edi, 2
	mov rsi, _s726
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3308:
.2574:
.2568:
	mov rbx, 0
	push rbx
.2575:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2576
	pop rbx
	mov rsi, rbx
	mov rdi, _s621
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
	mov rbx, _s727
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
	jnz .3309.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s542
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3309.4:
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
	jmp .2575
.2576:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2577
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2579
	mov rbx, _s733
	mov rsi, 32
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2581
.2579:
	mov rbx, _s734
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
.2581:
	jmp .2578
.2577:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2583
	mov rbx, _s735
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
	jmp .2578
.2583:
	mov rbx, 0
	test rbx, rbx
	jnz .3310
	mov eax, 1
	mov edi, 2
	mov rsi, _s736
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3310:
.2584:
.2578:
	mov rbx, 0
	push rbx
.2585:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2586
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3311.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s336
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3311.13:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _gvar_context
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 40], rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 40]
	mov edi, [rdi]
	mov rsi, 3
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	push rbx
	test r8, r8
	jz .2587
	mov rbx, _s601
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
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2589
	mov rbx, _s737
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2590
.2589:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2592
	mov rbx, _s738
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2590
.2592:
	mov rbx, 0
	test rbx, rbx
	jnz .3312
	mov eax, 1
	mov edi, 2
	mov rsi, _s739
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3312:
.2593:
.2590:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 4
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
.2587:
	pop rbx
	inc rbx
	push rbx
	jmp .2585
.2586:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2594
	mov rbx, _s740
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
	mov rbx, _s741
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
	mov rbx, _s742
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
	jmp .2595
.2594:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2597
	mov rbx, _s743
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
	mov rbx, _s744
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
	mov rbx, _s745
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
	jmp .2595
.2597:
	mov rbx, 0
	test rbx, rbx
	jnz .3313
	mov eax, 1
	mov edi, 2
	mov rsi, _s746
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3313:
.2598:
.2595:
	mov rbx, _s747
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
	jnz .3314.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3314.2:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 48
	ret
usage:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	jmp .3315.1
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3316.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3316.1:
.3315.1:
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call OS.to_pretty_str
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
	mov rbx, _s4
	mov rsi, 39
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s5
	mov rsi, 34
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s6
	mov rsi, 67
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s7
	mov rsi, 76
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s8
	mov rsi, 73
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s9
	mov rsi, 76
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s10
	mov rsi, 76
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s11
	mov rsi, 71
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s12
	mov rsi, 47
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s13
	mov rsi, 45
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s14
	mov rsi, 69
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s15
	mov rsi, 78
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s16
	mov rsi, 58
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s17
	mov rsi, 76
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s18
	mov rsi, 57
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s19
	mov rsi, 77
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s20
	mov rsi, 66
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s21
	mov rsi, 43
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s22
	mov rsi, 13
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s23
	mov rsi, 75
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s24
	mov rsi, 55
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
	mov rdi, _s195
	mov r8, 4
	mov r9, rsi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rbx
	push rsi
	push rdi
	push r8
	test r11, r11
	jz .73.97
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
	jmp .75.97
.73.97:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.97:
	pop rbx
	test rbx, rbx
	jz .2599
	mov rbx, 1
	mov [_gbackend_type], rbx
	jmp .2600
.2599:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s196
	mov r8, 4
	mov r9, rsi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rbx
	push rsi
	push rdi
	push r8
	test r11, r11
	jz .73.98
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
	jmp .75.98
.73.98:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.98:
	pop rbx
	test rbx, rbx
	jz .2602
	mov rbx, 2
	mov [_gbackend_type], rbx
	jmp .2600
.2602:
	mov rbx, _s197
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2603:
.2600:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
symlink_exe:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s26
	mov rsi, 14
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
	sete sil
	test rsi, rsi
	jz .2604
	mov rbx, _s27
	mov rsi, 32
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
.2604:
	mov rbx, _s33
	mov rsi, 0
	mov rdi, 6
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rax
	push rbx
	test r8, r8
	jz .10.3
	pop rbx
	not rbx
	inc rbx
	push rbx
.10.3:
	pop rbx
	pop rsi
	mov rdi, rsi
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	setl r9b
	push rbx
	push rsi
	test r9, r9
	jz .10.4
	pop rbx
	not rbx
	inc rbx
	push rbx
.10.4:
	pop rsi
	pop rdi
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2606
	mov rbx, _s33
	mov rsi, 87
	mov rax, rsi
	mov rdi, rbx
	syscall
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2608
	mov rbx, _s169
	mov rsi, 85
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
.2608:
.2606:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call get_executable_path
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
	mov rbx, _s33
	mov rsi, 88
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2610
	mov rbx, _s175
	mov rsi, 80
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
.2610:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
stas_exec:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	mov rbx, 1
	mov r9, 0
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call execute_child?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2612
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s768
	mov rsi, 27
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
	mov rdi, qword [rbx + 16]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s210
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
.2612:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2614
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s769
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
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call argp_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2614:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
execute_backend:
	sub rsp, 320
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, 0
	mov rsi, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 312], rsi
	mov qword [rdi + 304], rbx
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gobject_file
	xor rdi, rdi
	mov dil, [rbx]
	test rdi, rdi
	sete dil
	and rsi, rdi
	test rsi, rsi
	jz .2616
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
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
	mov rdi, _s755
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
	mov r8, qword [rdi + 0]
	mov r9, qword [rdi + 8]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 312], r9
	mov qword [rdi + 304], r8
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov qword [rdi + 0], rsi
.2616:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2618
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s195
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov r9, qword [rdi + 24]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov r9, qword [rdi + 8]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s756
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s757
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s195
	mov rsi, 4
	mov rdi, qword [_rs_p]
	add rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2619
.2618:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2621
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s196
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	mov r9, qword [rdi + 24]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s176
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov r9, qword [rdi + 8]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s770
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s771
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	test rdi, rdi
	jz .2622
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s772
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s185
	mov qword [rbx], rdi
	push rsi
.2622:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, 0
	mov qword [rsi], rbx
	mov rbx, _s196
	mov rsi, 4
	mov rdi, qword [_rs_p]
	add rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
.2621:
.2619:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2624
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 304]
	mov rdi, qword [rbx + 312]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2626
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s773
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov r9, qword [rdi + 8]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s176
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 304]
	mov r9, qword [rdi + 312]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s773
	mov rsi, 2
	mov rdi, qword [_rs_p]
	add rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2628
.2626:
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s774
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s775
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov r9, qword [rdi + 8]
	mov qword [rsi], r8
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s774
	mov rsi, 5
	mov rdi, qword [_rs_p]
	add rdi, 32
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas_exec
	mov [_rs_p], rsp
	mov rsp, rbp
.2628:
.2624:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 320
	ret
assert_args:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2629
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2631
	mov rbx, _s177
	mov rsi, 27
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2632
.2631:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2634
	mov rbx, _s179
	mov rsi, 28
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2632
.2634:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2636
	mov rbx, _s180
	mov rsi, 36
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2632
.2636:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2638
	mov rbx, _s181
	mov rsi, 19
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2638:
.2632:
.2629:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
main:
	sub rsp, 75
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2639
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
.2639:
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2641
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call args_a_b
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s25
	mov rsi, 7
	mov rdi, qword [rsp + 0]
	mov r8, rsi
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
	jz .73.99
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
	jmp .75.99
.73.99:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.99:
	pop rbx
	test rbx, rbx
	jz .2643
	mov rbp, rsp
	mov rsp, [_rs_p]
	call symlink_exe
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2643:
.2641:
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
	mov rbx, 12
	mov [_geval.recurse_depth], rbx
	mov rbx, 18446744073709551615
	mov [_gfwrite_buffer.fd_loc], rbx
	mov rbx, 1
	mov [_gbackend_type], rbx
	mov rbx, 0
	mov rsi, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
	mov rbx, 0
	mov rsi, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 51], rsi
	mov qword [rdi + 43], rbx
	mov rbx, 0
	mov [_gargparse_mode], rbx
	mov rbx, qword _gdebug_symbols
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	push rbx
	jmp .3317.2
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3318.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3318.2:
.3317.2:
	mov [_gtarget_os], rbx
	mov rbx, 1
	push rbx
.2645:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2646
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
	pop rsi
	mov qword [rbx + 11], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s176
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.100
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
	jmp .75.100
.73.100:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.100:
	pop rbx
	test rbx, rbx
	jz .2647
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2649
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2649:
	mov rbx, 1
	mov [_gargparse_mode], rbx
	jmp .2648
.2647:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s182
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.101
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
	jmp .75.101
.73.101:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.101:
	pop rbx
	test rbx, rbx
	jz .2652
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2653
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2653:
	mov rbx, 2
	mov [_gargparse_mode], rbx
	jmp .2648
.2652:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s183
	mov r8, 15
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.102
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
	jmp .75.102
.73.102:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.102:
	pop rbx
	test rbx, rbx
	jz .2656
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2657
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2657:
	mov rbx, 3
	mov [_gargparse_mode], rbx
	jmp .2648
.2656:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s184
	mov r8, 3
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.103
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
	jmp .75.103
.73.103:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.103:
	pop rbx
	test rbx, rbx
	jz .2660
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2661
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2661:
	mov rbx, 4
	mov [_gargparse_mode], rbx
	jmp .2648
.2660:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s185
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.104
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
	jmp .75.104
.73.104:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.104:
	pop rbx
	test rbx, rbx
	jz .2664
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2665
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2665:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2667
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2667:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2664:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s186
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.105
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
	jmp .75.105
.73.105:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.105:
	pop rbx
	test rbx, rbx
	jz .2670
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2671
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2671:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2673
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
.2673:
	mov rbx, qword _gverbose_mode
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2670:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s187
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.106
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
	jmp .75.106
.73.106:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.106:
	pop rbx
	test rbx, rbx
	jz .2676
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2677
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2677:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .2648
.2676:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s188
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.107
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
	jmp .75.107
.73.107:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.107:
	pop rbx
	test rbx, rbx
	jz .2680
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2681
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2681:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2683
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
.2683:
	mov rbx, qword _gobject_file
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2680:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s189
	mov r8, 6
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.108
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
	jmp .75.108
.73.108:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.108:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s190
	mov r8, 2
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.109
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
	jmp .75.109
.73.109:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.109:
	pop rbx
	pop rsi
	or rsi, rbx
	test rsi, rsi
	jz .2686
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
	jmp .2648
.2686:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s191
	mov r8, 8
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.110
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
	jmp .75.110
.73.110:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.110:
	pop rbx
	test rbx, rbx
	jz .2688
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
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
	jz .2689
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2689:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2688:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s192
	mov r8, 9
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.111
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
	jmp .75.111
.73.111:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.111:
	pop rbx
	test rbx, rbx
	jz .2692
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2693
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2693:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2695
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
.2695:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2692:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s193
	mov r8, 12
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.112
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
	jmp .75.112
.73.112:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.112:
	pop rbx
	test rbx, rbx
	jz .2698
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2699
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2699:
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2701
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
.2701:
	mov rbx, qword _gtrace_calls
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2698:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s194
	mov r8, 7
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.113
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
	jmp .75.113
.73.113:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.113:
	pop rbx
	test rbx, rbx
	jz .2704
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2705
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2705:
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2707
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
.2707:
	mov rbx, qword _gstrip_assert
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2648
.2704:
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2710
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2712
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
.2712:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 43], rsi
	jmp .2711
.2710:
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2715
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2716
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
.2716:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 27], rsi
	jmp .2711
.2715:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2719
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse_backend_type
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2711
.2719:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2721
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call OS.from_str?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2722
	mov rbx, _s200
	mov rsi, 20
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2722:
	pop rbx
	mov [_gtarget_os], rbx
	jmp .2711
.2721:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2725
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.to_num?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2726
	mov rbx, _s201
	mov rsi, 37
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2726:
	pop rbx
	mov [_geval.recurse_depth], rbx
	jmp .2711
.2725:
	mov rbx, 0
	test rbx, rbx
	jnz .3319
	mov eax, 1
	mov edi, 2
	mov rsi, _s202
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.3319:
.2728:
.2711:
	mov rbx, 0
	mov [_gargparse_mode], rbx
.2709:
.2648:
	pop rbx
	inc rbx
	push rbx
	jmp .2645
.2646:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2729
	mov rbx, _s203
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
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
	call error.end_bold_error
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, _s178
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
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.2729:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2731
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2733
	mov rbx, _s204
	mov rsi, 3
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
	jmp .2735
.2733:
	mov rbx, _s205
	mov rsi, 5
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
.2735:
	jmp .2736
.2731:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, _s206
	mov r8, 1
	mov r9, rdi
	mov r10, r8
	xor r11, r11
	cmp r9, r10
	sete r11b
	push rsi
	push rdi
	push rbx
	push r8
	test r11, r11
	jz .73.114
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
	jmp .75.114
.73.114:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.75.114:
	pop rbx
	test rbx, rbx
	jz .2737
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.2737:
.2736:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2739
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s209
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
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2739:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s313
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
	jz .2741
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2741:
	mov rbx, [_gtarget_os]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2743
	mov rbx, _s323
	mov rsi, 12
	mov rdi, 1
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.def_comptime_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2744
.2743:
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2746
	mov rbx, _s325
	mov rsi, 14
	mov rdi, 1
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.def_comptime_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2744
.2746:
	mov rbx, 0
	test rbx, rbx
	jnz .3320
	mov eax, 1
	mov edi, 2
	mov rsi, _s326
	mov rdx, 70
	syscall
	mov rdi, 1
	jmp _exit
.3320:
.2747:
.2744:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2748
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s327
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
	mov rbx, _s328
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2748:
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
	mov rbx, _s490
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
	jz .2750
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gfunctions.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s491
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
	mov rbx, _s492
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2750:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2752
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2752:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2754
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s540
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2754:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rbx, _s545
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
	jz .2756
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gused_functions]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s546
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
	mov rbx, _s547
	mov rsi, 25
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
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gslits.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s548
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2756:
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2758
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
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
	mov rdi, _s549
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
	mov qword [rdi + 59], rsi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_new_file_for_writing
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov [_gfwrite_buffer.fd_loc], rbx
	jmp .2760
.2758:
	mov rbx, 1
	mov [_gfwrite_buffer.fd_loc], rbx
.2760:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2761
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s550
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
	mov rbx, _s551
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2761:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.gen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s748
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
	jz .2763
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2763:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2765
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s749
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
	jz .2767
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s750
	mov rsi, 14
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .2769
.2767:
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s751
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2769:
.2765:
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
	jz .2770
	mov rbx, _s217
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
.2770:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2772
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s752
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
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2772:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2774
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s753
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
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2774:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.time.start
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 59]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 27]
	mov r9, qword [rdi + 35]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call execute_backend
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s776
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
	jz .2776
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s777
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
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2776:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2778
	mov rbx, qword _gstring_buffer
	mov rsi, [_gstring_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 67], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	push rsi
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
.2780:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2781
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
	jmp .2780
.2781:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string_buffer.generic_append_u64
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 67]
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
	jz .2782
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s208
	mov rsi, 6
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
	call notice.end_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s778
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
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call argp_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2782:
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
	jz .2784
	mov rbx, _s779
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
.2784:
.2778:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
[section .rodata]
_s0: db 27, "[1m", 27, "[31msrc/os.stas:15:4: ", 27, "[39m", 27, "[22massertation failed, 'unknown host OS'", 10, 0
_s1: db "Linux", 0
_s2: db "FreeBSD", 0
_s3: db 27, "[1m", 27, "[31msrc/os.stas:41:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s4: db " stas 0.2.0 Copyright (C) 2022  l-m.dev", 0
_s5: db 10, 10, "USAGE: ./stas [OPTIONS] [FILE]", 10, 10, 0
_s6: db "	-o <output>             Specify '-o -' to dump assembly to stdout", 10, 0
_s7: db "	-g                      Debug info. Most effective with the `nasm` backend", 10, 0
_s8: db "	-b <backend>            Assemblers `nasm` or `fasm` as compiler backend", 10, 0
_s9: db "	-c                      Create object file for linking, will not call `ld`", 10, 0
_s10: db "	-r                      Execute file after compiling. Arguments after this", 10, 0
_s11: db "	                        switch will ignored and passed to the program", 10, 0
_s12: db "	-v                      Activate verbose mode", 10, 0
_s13: db "	-os <os>                `linux` | `freebsd`", 10, 0
_s14: db "	-dump-tok               Dump token information after scanning stage", 10, 0
_s15: db "	-dump-ir                Dump intermediate representation after parsing stage", 10, 0
_s16: db "	-unsafe                 Currently only strips assertions", 10, 0
_s17: db "	-comptime-depth <num>   Adjust compile time recursion depth for evaluating", 10, 0
_s18: db "	                        comptime functions. Default: 12", 10, 0
_s19: db "	-trace-calls            Compiled executable will have function calls traced", 10, 0
_s20: db "	                        at runtime. Will not trace inlined calls", 10, 0
_s21: db "	-h, --help              Show this message", 10, 0
_s22: db 10, "SUBCOMMANDS", 10, 0
_s23: db 10, "	./stas symlink          Will create a symbolic link to the stas compiler", 10, 0
_s24: db "	                        inside `/usr/local/bin/stas`", 10, 10, 0
_s25: db "symlink", 0
_s26: db "/usr/local/bin", 0
_s27: db "path `/usr/local/bin` not found!", 0
_s28: db "[1m", 0
_s29: db "[31m", 0
_s30: db "FATAL: ", 0
_s31: db "[39m", 0
_s32: db "[22m", 0
_s33: db "/usr/local/bin/stas", 0
_s34: db "EPERM: Operation not permitted", 10, 0
_s35: db "ENOENT: No such file or directory", 10, 0
_s36: db "ESRCH: No such process", 10, 0
_s37: db "EINTR: Interrupted system call", 10, 0
_s38: db "EIO: Input/output error", 10, 0
_s39: db "ENXIO: No such device or address", 10, 0
_s40: db "E2BIG: Argument list too long", 10, 0
_s41: db "ENOEXEC: Exec format error", 10, 0
_s42: db "EBADF: Bad file descriptor", 10, 0
_s43: db "ECHILD: No child processes", 10, 0
_s44: db "EAGAIN: Resource temporarily unavailable", 10, 0
_s45: db "ENOMEM: Cannot allocate memory", 10, 0
_s46: db "EACCES: Permission denied", 10, 0
_s47: db "EFAULT: Bad address", 10, 0
_s48: db "ENOTBLK: Block device required", 10, 0
_s49: db "EBUSY: Device or resource busy", 10, 0
_s50: db "EEXIST: File exists", 10, 0
_s51: db "EXDEV: Invalid cross-device link", 10, 0
_s52: db "ENODEV: No such device", 10, 0
_s53: db "ENOTDIR: Not a directory", 10, 0
_s54: db "EISDIR: Is a directory", 10, 0
_s55: db "EINVAL: Invalid argument", 10, 0
_s56: db "ENFILE: Too many open files in system", 10, 0
_s57: db "EMFILE: Too many open files", 10, 0
_s58: db "ENOTTY: Inappropriate ioctl for device", 10, 0
_s59: db "ETXTBSY: Text file busy", 10, 0
_s60: db "EFBIG: File too large", 10, 0
_s61: db "ENOSPC: No space left on device", 10, 0
_s62: db "ESPIPE: Illegal seek", 10, 0
_s63: db "EROFS: Read-only file system", 10, 0
_s64: db "EMLINK: Too many links", 10, 0
_s65: db "EPIPE: Broken pipe", 10, 0
_s66: db "EDOM: Numerical argument out of domain", 10, 0
_s67: db "ERANGE: Numerical result out of range", 10, 0
_s68: db "EDEADLK: Resource deadlock avoided", 10, 0
_s69: db "ENAMETOOLONG: File name too long", 10, 0
_s70: db "ENOLCK: No locks available", 10, 0
_s71: db "ENOSYS: Function not implemented", 10, 0
_s72: db "ENOTEMPTY: Directory not empty", 10, 0
_s73: db "ELOOP: Too many levels of symbolic links", 10, 0
_s74: db "EWOULDBLOCK: Resource temporarily unavailable", 10, 0
_s75: db "ENOMSG: No message of desired type", 10, 0
_s76: db "EIDRM: Identifier removed", 10, 0
_s77: db "EREMOTE: Object is remote", 10, 0
_s78: db "ENOLINK: Link has been severed", 10, 0
_s79: db "EPROTO: Protocol error", 10, 0
_s80: db "EMULTIHOP: Multihop attempted", 10, 0
_s81: db "EBADMSG: Bad message", 10, 0
_s82: db "EOVERFLOW: Value too large for defined data type", 10, 0
_s83: db "EILSEQ: Invalid or incomplete multibyte or wide character", 10, 0
_s84: db "EUSERS: Too many users", 10, 0
_s85: db "ENOTSOCK: Socket operation on non-socket", 10, 0
_s86: db "EDESTADDRREQ: Destination address required", 10, 0
_s87: db "EMSGSIZE: Message too long", 10, 0
_s88: db "EPROTOTYPE: Protocol wrong type for socket", 10, 0
_s89: db "ENOPROTOOPT: Protocol not available", 10, 0
_s90: db "EPROTONOSUPPORT: Protocol not supported", 10, 0
_s91: db "ESOCKTNOSUPPORT: Socket type not supported", 10, 0
_s92: db "EOPNOTSUPP: Operation not supported", 10, 0
_s93: db "EPFNOSUPPORT: Protocol family not supported", 10, 0
_s94: db "EAFNOSUPPORT: Address family not supported by protocol", 10, 0
_s95: db "EADDRINUSE: Address already in use", 10, 0
_s96: db "EADDRNOTAVAIL: Cannot assign requested address", 10, 0
_s97: db "ENETDOWN: Network is down", 10, 0
_s98: db "ENETUNREACH: Network is unreachable", 10, 0
_s99: db "ENETRESET: Network dropped connection on reset", 10, 0
_s100: db "ECONNABORTED: Software caused connection abort", 10, 0
_s101: db "ECONNRESET: Connection reset by peer", 10, 0
_s102: db "ENOBUFS: No buffer space available", 10, 0
_s103: db "EISCONN: Transport endpoint is already connected", 10, 0
_s104: db "ENOTCONN: Transport endpoint is not connected", 10, 0
_s105: db "ESHUTDOWN: Cannot send after transport endpoint shutdown", 10, 0
_s106: db "ETOOMANYREFS: Too many references: cannot splice", 10, 0
_s107: db "ETIMEDOUT: Connection timed out", 10, 0
_s108: db "ECONNREFUSED: Connection refused", 10, 0
_s109: db "EHOSTDOWN: Host is down", 10, 0
_s110: db "EHOSTUNREACH: No route to host", 10, 0
_s111: db "EALREADY: Operation already in progress", 10, 0
_s112: db "EINPROGRESS: Operation now in progress", 10, 0
_s113: db "ESTALE: Stale file handle", 10, 0
_s114: db "EDQUOT: Disk quota exceeded", 10, 0
_s115: db "ECANCELED: Operation canceled", 10, 0
_s116: db "EOWNERDEAD: Owner died", 10, 0
_s117: db "ENOTRECOVERABLE: State not recoverable", 10, 0
_s118: db "ENOTSUP: Operation not supported", 10, 0
_s119: db "ECHRNG: Channel number out of range", 10, 0
_s120: db "EL2NSYNC: Level 2 not synchronized", 10, 0
_s121: db "EL3HLT: Level 3 halted", 10, 0
_s122: db "EL3RST: Level 3 reset", 10, 0
_s123: db "ELNRNG: Link number out of range", 10, 0
_s124: db "EUNATCH: Protocol driver not attached", 10, 0
_s125: db "ENOCSI: No CSI structure available", 10, 0
_s126: db "EL2HLT: Level 2 halted", 10, 0
_s127: db "EBADE: Invalid exchange", 10, 0
_s128: db "EBADR: Invalid request descriptor", 10, 0
_s129: db "EXFULL: Exchange full", 10, 0
_s130: db "ENOANO: No anode", 10, 0
_s131: db "EBADRQC: Invalid request code", 10, 0
_s132: db "EBADSLT: Invalid slot", 10, 0
_s133: db "EDEADLOCK: Resource deadlock avoided", 10, 0
_s134: db "EBFONT: Bad font file format", 10, 0
_s135: db "ENOSTR: Device not a stream", 10, 0
_s136: db "ENODATA: No data available", 10, 0
_s137: db "ETIME: Timer expired", 10, 0
_s138: db "ENOSR: Out of streams resources", 10, 0
_s139: db "ENONET: Machine is not on the network", 10, 0
_s140: db "ENOPKG: Package not installed", 10, 0
_s141: db "EADV: Advertise error", 10, 0
_s142: db "ESRMNT: Srmount error", 10, 0
_s143: db "ECOMM: Communication error on send", 10, 0
_s144: db "EDOTDOT: RFS specific error", 10, 0
_s145: db "ENOTUNIQ: Name not unique on network", 10, 0
_s146: db "EBADFD: File descriptor in bad state", 10, 0
_s147: db "EREMCHG: Remote address changed", 10, 0
_s148: db "ELIBACC: Can not access a needed shared library", 10, 0
_s149: db "ELIBBAD: Accessing a corrupted shared library", 10, 0
_s150: db "ELIBSCN: ib section in a.out corrupted", 10, 0
_s151: db "ELIBMAX: Attempting to link in too many shared libraries", 10, 0
_s152: db "ELIBEXEC: Cannot exec a shared library directly", 10, 0
_s153: db "ERESTART: Interrupted system call should be restarted", 10, 0
_s154: db "ESTRPIPE: Streams pipe error", 10, 0
_s155: db "EUCLEAN: Structure needs cleaning", 10, 0
_s156: db "ENOTNAM: Not a XENIX named type file", 10, 0
_s157: db "ENAVAIL: No XENIX semaphores available", 10, 0
_s158: db "EISNAM: Is a named type file", 10, 0
_s159: db "EREMOTEIO: Remote I/O error", 10, 0
_s160: db "ENOMEDIUM: No medium found", 10, 0
_s161: db "EMEDIUMTYPE: Wrong medium type", 10, 0
_s162: db "ENOKEY: Required key not available", 10, 0
_s163: db "EKEYEXPIRED: Key has expired", 10, 0
_s164: db "EKEYREVOKED: Key has been revoked", 10, 0
_s165: db "EKEYREJECTED: Key was rejected by service", 10, 0
_s166: db "ERFKILL: Operation not possible due to RF-kill", 10, 0
_s167: db "EHWPOISON: Memory page has hardware error", 10, 0
_s168: db "ERRNO: Unknown", 10, 0
_s169: db "failed to remove existing symlink at path `/usr/local/bin/stas`, missing permissions?", 0
_s170: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/salloc.stas:7:40: ", 27, "[39m", 27, "[22massertation failed, 'salloc.guard_size: static buffer length exceeded'", 10, 0
_s171: db "/proc/self/exe", 0
_s172: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:441:12: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s173: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/salloc.stas:18:26: ", 27, "[39m", 27, "[22massertation failed, 'salloc.rewind: cannot rewind allocation stack to higher length'", 10, 0
_s174: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:461:4: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for OSes not Linux|FreeBSD'", 10, 0
_s175: db "failed to symlink executable to path `/usr/local/bin/stas`, missing permissions?", 0
_s176: db "-o", 0
_s177: db "supply output file for `-o`", 0
_s178: db 10, 0
_s179: db "supply backend type for `-b`", 0
_s180: db "supply integer for `-comptime-depth`", 0
_s181: db "supply os for `-os`", 0
_s182: db "-b", 0
_s183: db "-comptime-depth", 0
_s184: db "-os", 0
_s185: db "-g", 0
_s186: db "-v", 0
_s187: db "-r", 0
_s188: db "-c", 0
_s189: db "--help", 0
_s190: db "-h", 0
_s191: db "-dump-ir", 0
_s192: db "-dump-tok", 0
_s193: db "-trace-calls", 0
_s194: db "-unsafe", 0
_s195: db "fasm", 0
_s196: db "nasm", 0
_s197: db "unknown backend", 0
_s198: db "linux", 0
_s199: db "freebsd", 0
_s200: db "unknown OS for `-os`", 0
_s201: db "invalid integer for `-comptime-depth`", 0
_s202: db 27, "[1m", 27, "[31mstas.stas:373:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s203: db "supply stas file", 0
_s204: db "a.o", 0
_s205: db "a.out", 0
_s206: db "-", 0
_s207: db "[33m", 0
_s208: db "LOG:  ", 0
_s209: db "scanning file `", 0
_s210: db "`", 10, 0
_s211: db "FATAL: Failed to get current time", 0
_s212: db 27, "[1m", 27, "[31msrc/formatting.stas:36:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s213: db "FATAL: Failed to open file '", 0
_s214: db "'", 10, 0
_s215: db "FATAL: Failed to stat the file descriptor", 10, 0
_s216: db "FATAL: Could not mmap file '", 0
_s217: db "FATAL: Failed to close file descriptor", 10, 0
_s218: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s219: db 27, "[1m", 27, "[31msrc/formatting.stas:48:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s220: db "unterminated string literal", 0
_s221: db ":", 0
_s222: db ": ", 0
_s223: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:164:24: ", 27, "[39m", 27, "[22massertation failed, 'Array64.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s224: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:127:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64<<: append exceeded bounds in Array64'", 10, 0
_s225: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:123:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64[]: index out of bounds'", 10, 0
_s226: db " | ", 0
_s227: db "    ", 0
_s228: db "       ", 0
_s229: db "escape character does not exist", 0
_s230: db "unhandled escape character", 0
_s231: db ".", 0
_s232: db "/", 0
_s233: db "lib", 0
_s234: db "..", 0
_s235: db "unable to locate file to include", 0
_s236: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:701:9: ", 27, "[39m", 27, "[22massertation failed, 'is_dir: syscall `stat` failed'", 10, 0
_s237: db "file specified to include is a directory", 0
_s238: db "including file `", 0
_s239: db 27, "[1m", 27, "[31msrc/tokens.stas:391:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s240: db "unterminated character literal", 0
_s241: db "empty character literal", 0
_s242: db "character literals must contain a single character", 0
_s243: db "file to include is not a string", 0
_s244: db "9223372036854775808", 0
_s245: db "18446744073709551615", 0
_s246: db "number overflows", 0
_s247: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/string.stas:347:17: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s248: db "include", 0
_s249: db "{", 0
_s250: db "}", 0
_s251: db "->", 0
_s252: db "fn", 0
_s253: db "const", 0
_s254: db "assert", 0
_s255: db "argc", 0
_s256: db "argv", 0
_s257: db "ret", 0
_s258: db "if", 0
_s259: db "else", 0
_s260: db "elif", 0
_s261: db "while", 0
_s262: db "break", 0
_s263: db "continue", 0
_s264: db "+", 0
_s265: db "*", 0
_s266: db "%", 0
_s267: db "++", 0
_s268: db "--", 0
_s269: db "%%", 0
_s270: db ">>", 0
_s271: db "<<", 0
_s272: db "&", 0
_s273: db "|", 0
_s274: db "~", 0
_s275: db "!", 0
_s276: db "^", 0
_s277: db "swap", 0
_s278: db "dup", 0
_s279: db "over", 0
_s280: db "over2", 0
_s281: db "rot", 0
_s282: db "rot4", 0
_s283: db "drop", 0
_s284: db "=", 0
_s285: db "!=", 0
_s286: db ">", 0
_s287: db "<", 0
_s288: db ">=", 0
_s289: db "<=", 0
_s290: db ">s", 0
_s291: db "<s", 0
_s292: db ">=s", 0
_s293: db "<=s", 0
_s294: db "w8", 0
_s295: db "w16", 0
_s296: db "w32", 0
_s297: db "w64", 0
_s298: db "r8", 0
_s299: db "r16", 0
_s300: db "r32", 0
_s301: db "r64", 0
_s302: db "reserve", 0
_s303: db "auto", 0
_s304: db "pop", 0
_s305: db "addr", 0
_s306: db "envp", 0
_s307: db "sizeof", 0
_s308: db "cextern", 0
_s309: db "asm", 0
_s310: db "comptime", 0
_s311: db "?def", 0
_s312: db "unexpected EOF when parsing file to include", 0
_s313: db "scanning took ", 0
_s314: db "[34m", 0
_s315: db "TIME: ", 0
_s316: db " ms", 10, 0
_s317: db 27, "[1m", 27, "[31msrc/tokens.stas:376:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s318: db "name", 0
_s319: db "string_lit", 0
_s320: db "number_lit", 0
_s321: db 27, "[1m", 27, "[31msrc/tokens.stas:210:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s322: db " -> ", 0
_s323: db "TARGET_LINUX", 0
_s324: db 27, "[1m", 27, "[31msrc/parserdefs.stas:356:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s325: db "TARGET_FREEBSD", 0
_s326: db 27, "[1m", 27, "[31mstas.stas:418:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s327: db "parsing ", 0
_s328: db " tokens", 10, 0
_s329: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:397:24: ", 27, "[39m", 27, "[22massertation failed, 'Array32.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s330: db 27, "[1m", 27, "[31msrc/parserdefs.stas:399:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s331: db 27, "[1m", 27, "[31msrc/parserdefs.stas:365:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s332: db "unclosed conditional scope", 0
_s333: db "forbidden word in const function", 0
_s334: db 27, "[1m", 27, "[31msrc/parser.stas:1448:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s335: db "expected variable name", 0
_s336: db 27, "[1m", 27, "[31msrc/parserdefs.stas:330:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s337: db "name is already an existing variable", 0
_s338: db "variable declared here", 0
_s339: db 27, "[1m", 27, "[31msrc/parserdefs.stas:410:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s340: db "name is already an existing function", 0
_s341: db 27, "[1m", 27, "[31msrc/parserdefs.stas:294:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s342: db "function declared here", 0
_s343: db 27, "[1m", 27, "[31msrc/parserdefs.stas:648:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s344: db "name is already an existing C extern function", 0
_s345: db "unexpected EOF in variable declaration", 0
_s346: db "referenced variable is not a constant", 0
_s347: db "unknown constant name", 0
_s348: db "unexpected EOF when parsing constant expression", 0
_s349: db "const expressions can only call const functions", 0
_s350: db "not enough values to consume for function call", 0
_s351: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:356:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32[]: index out of bounds'", 10, 0
_s352: db "backtrace", 0
_s353: db "not enough values to consume for operation", 0
_s354: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:360:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32<<: append exceeded bounds in Array32'", 10, 0
_s355: db 27, "[1m", 27, "[31msrc/parserdefs.stas:308:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s356: db "unknown variable name or const function", 0
_s357: db "cannot get the size of a constant", 0
_s358: db "not enought values on the stack to pop into an automatic variable", 0
_s359: db 27, "[1m", 27, "[31msrc/parser.stas:411:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s360: db "cannot pop into a buffer", 0
_s361: db "cannot get address of a buffer, buffer is already an address", 0
_s362: db "cannot edit a constant", 0
_s363: db "cannot get address of a constant as it does not reside in memory", 0
_s364: db 27, "[1m", 27, "[31msrc/parser.stas:426:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s365: db "unknown variable", 0
_s366: db "expected constant name", 0
_s367: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:368:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.pop: array is empty'", 10, 0
_s368: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:364:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.top: array is empty'", 10, 0
_s369: db "unsupported token inside a constant expression", 0
_s370: db "comptime constant functions recursion depth limit reached", 0
_s371: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:135:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.pop: array is empty'", 10, 0
_s372: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:452:27: ", 27, "[39m", 27, "[22massertation failed, 'Array32.search_kv?: array length is not multiple of two'", 10, 0
_s373: db 27, "[1m", 27, "[31msrc/eval.stas:220:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s374: db 27, "[1m", 27, "[31msrc/eval.stas:229:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s375: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:111:16: ", 27, "[39m", 27, "[22massertation failed, '&Array64.top: array is empty'", 10, 0
_s376: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/array.stas:131:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.top: array is empty'", 10, 0
_s377: db 27, "[1m", 27, "[31msrc/eval.stas:234:30: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s378: db 27, "[1m", 27, "[31msrc/eval.stas:240:19: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s379: db "constant expression must contain a value", 0
_s380: db "more than one unhandled value on left on the constant expression", 0
_s381: db 27, "[1m", 27, "[31msrc/parser.stas:1410:37: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s382: db "expected value, constant name, expression scope, or `?def`", 0
_s383: db "auto variables cannot have a size of zero", 0
_s384: db 27, "[1m", 27, "[31msrc/parserdefs.stas:344:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s385: db "function name must not be an intrinsic", 0
_s386: db "a function name cannot begin with an an underscore", 0
_s387: db "unexpected EOF in function declaration", 0
_s388: db "function return and argument counts must be numbers", 0
_s389: db "new scope must proceed after function header", 0
_s390: db "unexpected token in function declaration", 0
_s391: db "function attributes conflict", 0
_s392: db "main", 0
_s393: db "the main function is not inlinable", 0
_s394: db "the main function may not be const", 0
_s395: db "the main function must accept and return zero values", 0
_s396: db 27, "[1m", 27, "[31msrc/parserdefs.stas:432:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s397: db 27, "[1m", 27, "[31msrc/parser.stas:276:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s398: db 27, "[1m", 27, "[31msrc/parserdefs.stas:381:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s399: db "expected name of constant", 0
_s400: db "unexpected EOF when parsing const expression", 0
_s401: db "external C functions can only be used when compiling with `-c`", 0
_s402: db "expected name of external C function", 0
_s403: db "unexpected EOF when parsing external C function", 0
_s404: db "argument size specification must be 8, 16, 32 or 64", 0
_s405: db "unexpected keyword inside C function arguments, expected a number", 0
_s406: db "external C functions with more than 6 arguments are not supported", 0
_s407: db "void", 0
_s408: db "unexpected name, expected number or 'void'", 0
_s409: db 27, "[1m", 27, "[31msrc/parserdefs.stas:674:34: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s410: db "unexpected EOF in comptime declaration", 0
_s411: db "expected if block after comptime", 0
_s412: db 27, "[1m", 27, "[31msrc/parserdefs.stas:394:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s413: db "expected name as function attribute", 0
_s414: db "noinline", 0
_s415: db "inline", 0
_s416: db "noreturn", 0
_s417: db "noeval", 0
_s418: db "unknown function attribute", 0
_s419: db "a scope must follow a static assert to open an expression", 0
_s420: db "static assertation failed", 0
_s421: db ", '", 0
_s422: db "'", 0
_s423: db "a scope must come after an else statement", 0
_s424: db "unknown toplevel token", 0
_s425: db "no value on stack to consume for assertion", 0
_s426: db 0
_s427: db "assertation failed, '", 0
_s428: db "assertation failed", 10, 0
_s429: db "inline functions cannot call themselves", 0
_s430: db "const functions cannot call non const functions", 0
_s431: db 27, "[1m", 27, "[31msrc/parser.stas:148:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s432: db "const functions can only invoke constant variables", 0
_s433: db 27, "[1m", 27, "[31msrc/parser.stas:1113:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s434: db "unknown function or variable", 0
_s435: db "no value on stack to consume for if statement", 0
_s436: db "a scope must come after an if statement", 0
_s437: db "cannot declare a while loop inside an existing while loop header", 0
_s438: db "not inside while loop body", 0
_s439: db "unreachable code", 0
_s440: db "no value on stack to consume for while header", 0
_s441: db "no value on stack to consume for else if statement", 0
_s442: db "unhandled data on the stack", 0
_s443: db "not enough values on the stack on function return", 0
_s444: db 27, "[1m", 27, "[31msrc/parser.stas:711:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s445: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s446: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s447: db "unexpected EOF when parsing else statement", 0
_s448: db "the stack must remain the same with single branches", 0
_s449: db 27, "[1m", 27, "[31msrc/parser.stas:827:10: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s450: db "the stack must remain the same each with else if branch", 0
_s451: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s452: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s453: db "block expects body, an unhandled elif or while keyword may be causing this", 0
_s454: db 27, "[1m", 27, "[31msrc/parser.stas:139:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s455: db 27, "[1m", 27, "[31msrc/parser.stas:1237:7: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for const functions'", 10, 0
_s456: db "unhandled data on the stack for early return", 0
_s457: db "not enough values on the stack on early return", 0
_s458: db "a number must appear after the arrow assert operator", 0
_s459: db "a scope must come after the arrow assert operator", 0
_s460: db "unexpected EOF in assembly invocation", 0
_s461: db "rbx", 0
_s462: db "rcx", 0
_s463: db "rsi", 0
_s464: db "rdi", 0
_s465: db "r9", 0
_s466: db "r10", 0
_s467: db "r11", 0
_s468: db "r12", 0
_s469: db "r13", 0
_s470: db "r14", 0
_s471: db "r15", 0
_s472: db "rdx", 0
_s473: db "rax", 0
_s474: db "name is not a 64 bit register", 0
_s475: db "64 bit register is already on the argument list", 0
_s476: db "unexpected token, expected 64 bit register string", 0
_s477: db "unexpected EOF when parsing register list", 0
_s478: db "64 bit register is already on the return list", 0
_s479: db "new scope must proceed after assembly invocation", 0
_s480: db "unexpected EOF when parsing inline assembly body", 0
_s481: db "expected assembly string", 0
_s482: db 27, "[1m", 27, "[31msrc/asm.stas:35:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s483: db "cannot define a function inside a function", 0
_s484: db "must proceed after an if statement or chained `elif`", 0
_s485: db 27, "[1m", 27, "[31msrc/parser.stas:1330:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s486: db 27, "[1m", 27, "[31msrc/parser.stas:1761:28: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s487: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s488: db 27, "[1m", 27, "[31msrc/parser.stas:1771:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s489: db "no main function", 0
_s490: db "parsing took ", 0
_s491: db " functions, ", 0
_s492: db " labels", 10, 0
_s493: db "tok[]	data	inst", 10, 10, 0
_s494: db "	", 0
_s495: db "push_str", 0
_s496: db "push_num", 0
_s497: db "push_local_addr", 0
_s498: db "pop_local_stack_var", 0
_s499: db "push_local_stack_var", 0
_s500: db "push_global_var_name", 0
_s501: db "pop_global_stack_var", 0
_s502: db "push_global_stack_var", 0
_s503: db "push_argc", 0
_s504: db "push_argv", 0
_s505: db "do_cond_jmp", 0
_s506: db "do_jmp", 0
_s507: db "label", 0
_s508: db "fn_prelude", 0
_s509: db "fn_leave", 0
_s510: db "fn_call", 0
_s511: db "plus", 0
_s512: db "sub", 0
_s513: db "mul", 0
_s514: db "div", 0
_s515: db "mod", 0
_s516: db "inc", 0
_s517: db "dec", 0
_s518: db "divmod", 0
_s519: db "shr", 0
_s520: db "shl", 0
_s521: db "not", 0
_s522: db "b_and", 0
_s523: db "b_or", 0
_s524: db "b_not", 0
_s525: db "b_xor", 0
_s526: db "equ", 0
_s527: db "nequ", 0
_s528: db "gt", 0
_s529: db "lt", 0
_s530: db "gte", 0
_s531: db "lte", 0
_s532: db "s_gt", 0
_s533: db "s_lt", 0
_s534: db "s_gte", 0
_s535: db "s_lte", 0
_s536: db "push_envp", 0
_s537: db "c_fn_call", 0
_s538: db "asm_invoc", 0
_s539: db 27, "[1m", 27, "[31msrc/parserdefs.stas:273:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s540: db "dce pass started", 10, 0
_s541: db 27, "[1m", 27, "[31msrc/dce.stas:61:34: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s542: db 27, "[1m", 27, "[31msrc/dce.stas:21:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s543: db 27, "[1m", 27, "[31msrc/dce.stas:11:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s544: db 27, "[1m", 27, "[31msrc/dce.stas:142:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s545: db "dce took ", 0
_s546: db " used functions, of which ", 0
_s547: db " are eligible for inline", 10, 0
_s548: db " string literals", 10, 0
_s549: db ".tmp", 0
_s550: db "generating code from ", 0
_s551: db " IR instructions", 10, 0
_s552: db "use64", 0
_s553: db 27, "[1m", 27, "[31msrc/write.stas:16:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s554: db 27, "[1m", 27, "[31msrc/write.stas:9:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s555: db "format ELF64", 0
_s556: db "section '.text' executable align 16", 0
_s557: db "public _start", 0
_s558: db "public _exit", 0
_s559: db "extrn ", 0
_s560: db "format ELF64 executable ", 0
_s561: db "segment readable executable", 0
_s562: db "entry _start", 0
_s563: db "%line 0+0 '", 0
_s564: db "[BITS 64]", 0
_s565: db "[global _start]", 0
_s566: db "[section .text]", 0
_s567: db "[extern ", 0
_s568: db 27, "[1m", 27, "[31msrc/gen.stas:879:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s569: db "_start:", 0
_s570: db "	mov [_arg_p], rdi", 0
_s571: db "	mov [_arg_p], rsp", 0
_s572: db "	mov qword [_rs_p], _rs_top", 0
_s573: db "	mov rbp, rsp", 0
_s574: db "	mov rsp, [_rs_p]", 0
_s575: db "	call main", 0
_s576: db "	xor rdi, rdi", 0
_s577: db "_exit:", 0
_s578: db "	mov eax, 1", 0
_s579: db "	mov eax, 60", 0
_s580: db "	syscall", 0
_s581: db "	nop", 0
_s582: db 27, "[1m", 27, "[31msrc/x86.stas:323:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s583: db 27, "[1m", 27, "[31msrc/x86.stas:248:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s584: db "	push ", 0
_s585: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s586: db 27, "[1m", 27, "[31msrc/x86.stas:207:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s587: db 27, "[1m", 27, "[31msrc/x86.stas:208:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s588: db 27, "[1m", 27, "[31msrc/x86.stas:254:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s589: db "	mov ", 0
_s590: db ", ", 0
_s591: db "%line ", 0
_s592: db "+0 '", 0
_s593: db 27, "[1m", 27, "[31msrc/gen.stas:180:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s594: db "public ", 0
_s595: db "_a", 0
_s596: db "_b", 0
_s597: db "_c", 0
_s598: db "_d", 0
_s599: db "_e", 0
_s600: db "_f", 0
_s601: db "_g", 0
_s602: db "	sub rsp, ", 0
_s603: db "	mov [_rs_p], rsp", 0
_s604: db "	mov rsp, rbp", 0
_s605: db "[35m", 0
_s606: db "	mov eax, 4", 0
_s607: db "	mov rdi, 2", 0
_s608: db "	mov rdx, ", 0
_s609: db "	mov rsi, _s", 0
_s610: db "	jmp ", 0
_s611: db "	add rsp, ", 0
_s612: db "	ret", 0
_s613: db "	call ", 0
_s614: db 27, "[1m", 27, "[31msrc/x86.stas:215:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s615: db "	pop ", 0
_s616: db "	test ", 0
_s617: db "	jnz ", 0
_s618: db "	mov edi, 2", 0
_s619: db "	mov rdi, 1", 0
_s620: db "	jmp _exit", 0
_s621: db "_s", 0
_s622: db "qword [_rs_p]", 0
_s623: db "	add ", 0
_s624: db ", qword [_rs_p]", 0
_s625: db "	mov qword [", 0
_s626: db " + ", 0
_s627: db "], ", 0
_s628: db "qword [", 0
_s629: db "]", 0
_s630: db "qword _g", 0
_s631: db "	mov [_g", 0
_s632: db ", _g", 0
_s633: db ", [_g", 0
_s634: db ", qword [_arg_p]", 0
_s635: db ", [", 0
_s636: db ", 8", 0
_s637: db "	lea ", 0
_s638: db " * 8 + 8]", 0
_s639: db "	jz ", 0
_s640: db "add", 0
_s641: db "imul", 0
_s642: db 27, "[1m", 27, "[31msrc/x86.stas:260:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s643: db 27, "[1m", 27, "[31msrc/x86.stas:406:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s644: db "	xor rdx, rdx", 0
_s645: db "	div ", 0
_s646: db "	inc ", 0
_s647: db "	dec ", 0
_s648: db "	shr ", 0
_s649: db ", cl", 0
_s650: db "	shl ", 0
_s651: db "	sete ", 0
_s652: db "bl", 0
_s653: db "cl", 0
_s654: db "sil", 0
_s655: db "dil", 0
_s656: db "r8b", 0
_s657: db "r9b", 0
_s658: db "r10b", 0
_s659: db "r11b", 0
_s660: db "r12b", 0
_s661: db "r13b", 0
_s662: db "r14b", 0
_s663: db "r15b", 0
_s664: db "dl", 0
_s665: db "al", 0
_s666: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s667: db "and", 0
_s668: db "or", 0
_s669: db "	not ", 0
_s670: db "xor", 0
_s671: db "qword [rsp + ", 0
_s672: db "	add rsp, 8", 0
_s673: db "	xor ", 0
_s674: db "	cmp ", 0
_s675: db "	setne ", 0
_s676: db "	seta ", 0
_s677: db "	setb ", 0
_s678: db "	setae ", 0
_s679: db "	setbe ", 0
_s680: db "	setg ", 0
_s681: db "	setl ", 0
_s682: db "	setge ", 0
_s683: db "	setle ", 0
_s684: db "	mov byte [", 0
_s685: db "	mov word [", 0
_s686: db "bx", 0
_s687: db "cx", 0
_s688: db "si", 0
_s689: db "di", 0
_s690: db "r8w", 0
_s691: db "r9w", 0
_s692: db "r10w", 0
_s693: db "r11w", 0
_s694: db "r12w", 0
_s695: db "r13w", 0
_s696: db "r14w", 0
_s697: db "r15w", 0
_s698: db "dx", 0
_s699: db "ax", 0
_s700: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s701: db "	mov dword [", 0
_s702: db "ebx", 0
_s703: db "ecx", 0
_s704: db "esi", 0
_s705: db "edi", 0
_s706: db "r8d", 0
_s707: db "r9d", 0
_s708: db "r10d", 0
_s709: db "r11d", 0
_s710: db "r12d", 0
_s711: db "r13d", 0
_s712: db "r14d", 0
_s713: db "r15d", 0
_s714: db "edx", 0
_s715: db "eax", 0
_s716: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s717: db 27, "[1m", 27, "[31msrc/gen.stas:68:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s718: db 27, "[1m", 27, "[31msrc/gen.stas:101:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s719: db "	and rax, 0xFF", 0
_s720: db "	and rax, 0xFFFF", 0
_s721: db 27, "[1m", 27, "[31msrc/asm.stas:23:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s722: db 27, "[1m", 27, "[31msrc/gen.stas:757:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s723: db "section '.rodata' align 8", 0
_s724: db "segment readable", 0
_s725: db "[section .rodata]", 0
_s726: db 27, "[1m", 27, "[31msrc/gen.stas:917:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s727: db ": db ", 0
_s728: db "0", 10, 0
_s729: db 34, 0
_s730: db ", ", 34, 0
_s731: db 34, ", ", 0
_s732: db ", 0", 10, 0
_s733: db "section '.bss' writeable align 8", 0
_s734: db "segment readable writeable", 0
_s735: db "[section .bss]", 0
_s736: db 27, "[1m", 27, "[31msrc/gen.stas:941:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s737: db ": rb ", 0
_s738: db ": resb ", 0
_s739: db 27, "[1m", 27, "[31msrc/gen.stas:956:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s740: db "_arg_p: rq 1", 0
_s741: db "_rs_p: rq 1", 0
_s742: db "_rs: rb ", 0
_s743: db "_arg_p: resq 1", 0
_s744: db "_rs_p: resq 1", 0
_s745: db "_rs: resb ", 0
_s746: db 27, "[1m", 27, "[31msrc/gen.stas:973:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s747: db "_rs_top:", 0
_s748: db "gen took ", 0
_s749: db "generated ", 0
_s750: db " KiBs of code", 10, 0
_s751: db " bytes of code", 10, 0
_s752: db "wrote code to `", 0
_s753: db "executing assembler backend `", 0
_s754: db 27, "[1m", 27, "[31mstas.stas:21:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s755: db ".o", 0
_s756: db "-m", 0
_s757: db "1048576", 0
_s758: db "PATH", 0
_s759: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:383:16: ", 27, "[39m", 27, "[22massertation failed, '", 34, "PATH", 34, " enviroment variable not found'", 10, 0
_s760: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:491:12: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `fork` invocation failed'", 10, 0
_s761: db "/dev/null", 0
_s762: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:497:57: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: opening `/dev/null` failed'", 10, 0
_s763: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:501:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stdout with `dup2`'", 10, 0
_s764: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:504:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stderr with `dup2`'", 10, 0
_s765: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:514:10: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `execve` invocation failed'", 10, 0
_s766: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/os.stas:521:16: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `wait4` invocation failed'", 10, 0
_s767: db "execute_child?: child process was terminated by signal ", 0
_s768: db "Failed to execute process `", 0
_s769: db "`", 0
_s770: db "-O0", 0
_s771: db "-felf64", 0
_s772: db "-Fdwarf", 0
_s773: db "ld", 0
_s774: db "chmod", 0
_s775: db "+x", 0
_s776: db "backend took ", 0
_s777: db "created binary `", 0
_s778: db "execve binary `", 0
_s779: db "FATAL: Could not execve file", 10, 0
[section .bss]
_galloc_buffer.len: resb 8
_galloc_buffer.data: resb 16384
_grand.state: resb 8
_grand.buffer: resb 8
_grand.bytes_left: resb 8
_gstrip_assert: resb 1
_gobject_file: resb 1
_gdebug_symbols: resb 1
_gverbose_mode: resb 1
_gtrace_calls: resb 1
_gbackend_type: resb 8
_gtarget_os: resb 8
_gstring_buffer.len: resb 8
_gstring_buffer: resb 8388608
_gopened_files.len: resb 8
_gopened_files: resb 3072
_gtoken_stream: resb 1835008
_gtoken_stream.len: resb 8
_gtimespec_start: resb 16
_gfunctions.len: resb 8
_gfunctions: resb 98304
_gir_stream.len: resb 8
_gir_stream: resb 524288
_gvar_context.len: resb 8
_gvar_context: resb 24576
_gscope_context.len: resb 8
_gscope_context: resb 16384
_gpos: resb 8
_gcfunctions.len: resb 8
_gcfunctions: resb 7168
_geval.recurse_depth: resb 8
_gfwrite_buffer.len: resb 8
_gfwrite_buffer: resb 10240
_gfwrite_buffer.fd_loc: resb 8
_grallocator_mask: resb 14
_grallocator_stack.len: resb 8
_grallocator_stack: resb 2048
_ginline_asms.len: resb 8
_ginline_asms: resb 12288
_glabel_c: resb 8
_gmain_fn_idx: resb 8
_gfunction_context: resb 8
_gfunction_context_idx: resb 8
_gfunction_attributes: resb 8
_gsp_array_data_const: resb 4096
_gconst_stack_data: resb 8192
_gsp_array_data: resb 4096
_gdce.max_stack_frame: resb 8
_gslits.len: resb 8
_gslits: resb 8192
_gused_functions: resb 8
_ginlined_functions: resb 8
_gargparse_mode: resb 8
_arg_p: resq 1
_rs_p: resq 1
_rs: resb 65536
_rs_top:
