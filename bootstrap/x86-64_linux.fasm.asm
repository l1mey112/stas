use64
format ELF64 executable 0
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
	mov rbx, _s65
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
	mov rbx, _s63
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
	mov rbx, _s64
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
	mov rbx, _s63
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
	mov rbx, _s64
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
	mov rbx, _s66
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
	mov rbx, _s64
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
	mov rbx, _s67
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
	jnz .2685.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s606
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2685.1:
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
	jnz .2686.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s606
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2686.2:
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
	jnz .2687
	mov eax, 1
	mov edi, 2
	mov rsi, _s74
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2687:
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
	jnz .2688
	mov eax, 1
	mov edi, 2
	mov rsi, _s175
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2688:
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
	jnz .2689
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 120
	syscall
	mov rdi, 1
	jmp _exit
.2689:
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
	jnz .2690.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s197
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2690.1:
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
	jnz .2691.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s197
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2691.2:
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
	jz .158
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.158:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.160:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .161
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
	jz .162
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.162:
	pop rbx
	inc rbx
	push rbx
	jmp .160
.161:
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
.164:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .165
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
	jz .166
	pop rbx
	dec rbx
	push rbx
	jmp .168
.166:
	jmp .165
.168:
	jmp .164
.165:
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
	jz .169
	mov rbx, 39
	push rbx
	jmp .170
.169:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .172
	mov rbx, 34
	push rbx
	jmp .170
.172:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .174
	mov rbx, 92
	push rbx
	jmp .170
.174:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .176
	mov rbx, 7
	push rbx
	jmp .170
.176:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .178
	mov rbx, 8
	push rbx
	jmp .170
.178:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .180
	mov rbx, 12
	push rbx
	jmp .170
.180:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .182
	mov rbx, 10
	push rbx
	jmp .170
.182:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .184
	mov rbx, 13
	push rbx
	jmp .170
.184:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .186
	mov rbx, 9
	push rbx
	jmp .170
.186:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .188
	mov rbx, 11
	push rbx
	jmp .170
.188:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .190
	mov rbx, 96
	push rbx
	jmp .170
.190:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.191:
.170:
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
	jz .201
	mov rbx, _s88
	mov rsi, 19
	push rbx
	push rsi
	jmp .203
.201:
	mov rbx, _s89
	mov rsi, 20
	push rbx
	push rsi
.203:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, rsi
	seta dil
	push rbx
	test rdi, rdi
	jz .204
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
	jmp .205
.204:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .207
	mov rbx, qword [rsp + 8]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, 0
	push rbx
.208:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .209
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
	jz .210
	jmp .209
.210:
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
	jz .212
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.212:
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
	jmp .208
.209:
	add rsp, 8
.207:
.205:
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
.214:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .215
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
	jz .216
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
.216:
	mov rbx, 48
	pop rsi
	sub rsi, rbx
	pop rbx
	add rbx, rsi
	pop rsi
	inc rsi
	push rbx
	push rsi
	jmp .214
.215:
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
	jz .218
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
.218:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 21
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.220:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .221
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
	jmp .220
.221:
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
	jz .225
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.225:
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
.227:
	mov rbx, 1
	test rbx, rbx
	jz .228
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
	jz .229
	jmp .228
	jmp .231
.229:
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.231:
	jmp .227
.228:
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
.232:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .233
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
	jz .234
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .236
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .238
.236:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .239
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
	jnz .2692.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2692.1:
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
	jnz .2693.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2693.2:
	pop rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .241
.239:
	jmp .233
.241:
.238:
	pop rbx
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	push rbx
.234:
	pop rbx
	inc rbx
	push rbx
	jmp .232
.233:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .242
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .244
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
	jnz .2694.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2694.3:
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
	jnz .2695.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2695.4:
.244:
.242:
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
.246:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .247
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
	jz .248
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
.248:
	add rsp, 8
	add rsp, 8
	mov rbx, 8
	pop rsi
	add rsi, rbx
	push rsi
	jmp .246
.247:
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
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
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
	jz .252
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.252:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rbx
	test r8, r8
	jz .254
	pop rbx
	not rbx
	inc rbx
	push rbx
.254:
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
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .256
	mov rbx, _s613
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.256:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .259
	mov rbx, _s614
	mov rsi, 34
	push rbx
	push rsi
	jmp .257
.259:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .261
	mov rbx, _s615
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.261:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .263
	mov rbx, _s616
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.263:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .265
	mov rbx, _s617
	mov rsi, 24
	push rbx
	push rsi
	jmp .257
.265:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .267
	mov rbx, _s618
	mov rsi, 33
	push rbx
	push rsi
	jmp .257
.267:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .269
	mov rbx, _s619
	mov rsi, 30
	push rbx
	push rsi
	jmp .257
.269:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .271
	mov rbx, _s620
	mov rsi, 27
	push rbx
	push rsi
	jmp .257
.271:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .273
	mov rbx, _s621
	mov rsi, 27
	push rbx
	push rsi
	jmp .257
.273:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .275
	mov rbx, _s622
	mov rsi, 27
	push rbx
	push rsi
	jmp .257
.275:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .277
	mov rbx, _s623
	mov rsi, 41
	push rbx
	push rsi
	jmp .257
.277:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .279
	mov rbx, _s624
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.279:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .281
	mov rbx, _s625
	mov rsi, 26
	push rbx
	push rsi
	jmp .257
.281:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .283
	mov rbx, _s626
	mov rsi, 20
	push rbx
	push rsi
	jmp .257
.283:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .285
	mov rbx, _s627
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.285:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .287
	mov rbx, _s628
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.287:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .289
	mov rbx, _s629
	mov rsi, 20
	push rbx
	push rsi
	jmp .257
.289:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .291
	mov rbx, _s630
	mov rsi, 33
	push rbx
	push rsi
	jmp .257
.291:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .293
	mov rbx, _s631
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.293:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .295
	mov rbx, _s632
	mov rsi, 25
	push rbx
	push rsi
	jmp .257
.295:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .297
	mov rbx, _s633
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.297:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .299
	mov rbx, _s634
	mov rsi, 25
	push rbx
	push rsi
	jmp .257
.299:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .301
	mov rbx, _s635
	mov rsi, 38
	push rbx
	push rsi
	jmp .257
.301:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .303
	mov rbx, _s636
	mov rsi, 28
	push rbx
	push rsi
	jmp .257
.303:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .305
	mov rbx, _s637
	mov rsi, 39
	push rbx
	push rsi
	jmp .257
.305:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .307
	mov rbx, _s638
	mov rsi, 24
	push rbx
	push rsi
	jmp .257
.307:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .309
	mov rbx, _s639
	mov rsi, 22
	push rbx
	push rsi
	jmp .257
.309:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .311
	mov rbx, _s640
	mov rsi, 32
	push rbx
	push rsi
	jmp .257
.311:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .313
	mov rbx, _s641
	mov rsi, 21
	push rbx
	push rsi
	jmp .257
.313:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .315
	mov rbx, _s642
	mov rsi, 29
	push rbx
	push rsi
	jmp .257
.315:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .317
	mov rbx, _s643
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.317:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .319
	mov rbx, _s644
	mov rsi, 19
	push rbx
	push rsi
	jmp .257
.319:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .321
	mov rbx, _s645
	mov rsi, 39
	push rbx
	push rsi
	jmp .257
.321:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .323
	mov rbx, _s646
	mov rsi, 38
	push rbx
	push rsi
	jmp .257
.323:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .325
	mov rbx, _s647
	mov rsi, 35
	push rbx
	push rsi
	jmp .257
.325:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .327
	mov rbx, _s648
	mov rsi, 33
	push rbx
	push rsi
	jmp .257
.327:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .329
	mov rbx, _s649
	mov rsi, 27
	push rbx
	push rsi
	jmp .257
.329:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .331
	mov rbx, _s650
	mov rsi, 33
	push rbx
	push rsi
	jmp .257
.331:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .333
	mov rbx, _s651
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.333:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .335
	mov rbx, _s652
	mov rsi, 41
	push rbx
	push rsi
	jmp .257
.335:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .337
	mov rbx, _s653
	mov rsi, 46
	push rbx
	push rsi
	jmp .257
.337:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .339
	mov rbx, _s654
	mov rsi, 35
	push rbx
	push rsi
	jmp .257
.339:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .341
	mov rbx, _s655
	mov rsi, 26
	push rbx
	push rsi
	jmp .257
.341:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .343
	mov rbx, _s656
	mov rsi, 26
	push rbx
	push rsi
	jmp .257
.343:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .345
	mov rbx, _s657
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.345:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .347
	mov rbx, _s658
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.347:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .349
	mov rbx, _s659
	mov rsi, 30
	push rbx
	push rsi
	jmp .257
.349:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .351
	mov rbx, _s660
	mov rsi, 21
	push rbx
	push rsi
	jmp .257
.351:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .353
	mov rbx, _s661
	mov rsi, 49
	push rbx
	push rsi
	jmp .257
.353:
	pop rbx
	mov rsi, rbx
	mov rdi, 84
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .355
	mov rbx, _s662
	mov rsi, 58
	push rbx
	push rsi
	jmp .257
.355:
	pop rbx
	mov rsi, rbx
	mov rdi, 87
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .357
	mov rbx, _s663
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.357:
	pop rbx
	mov rsi, rbx
	mov rdi, 88
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .359
	mov rbx, _s664
	mov rsi, 41
	push rbx
	push rsi
	jmp .257
.359:
	pop rbx
	mov rsi, rbx
	mov rdi, 89
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .361
	mov rbx, _s665
	mov rsi, 43
	push rbx
	push rsi
	jmp .257
.361:
	pop rbx
	mov rsi, rbx
	mov rdi, 90
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .363
	mov rbx, _s666
	mov rsi, 27
	push rbx
	push rsi
	jmp .257
.363:
	pop rbx
	mov rsi, rbx
	mov rdi, 91
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .365
	mov rbx, _s667
	mov rsi, 43
	push rbx
	push rsi
	jmp .257
.365:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .367
	mov rbx, _s668
	mov rsi, 36
	push rbx
	push rsi
	jmp .257
.367:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .369
	mov rbx, _s669
	mov rsi, 40
	push rbx
	push rsi
	jmp .257
.369:
	pop rbx
	mov rsi, rbx
	mov rdi, 94
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .371
	mov rbx, _s670
	mov rsi, 43
	push rbx
	push rsi
	jmp .257
.371:
	pop rbx
	mov rsi, rbx
	mov rdi, 95
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .373
	mov rbx, _s671
	mov rsi, 36
	push rbx
	push rsi
	jmp .257
.373:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .375
	mov rbx, _s672
	mov rsi, 44
	push rbx
	push rsi
	jmp .257
.375:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .377
	mov rbx, _s673
	mov rsi, 55
	push rbx
	push rsi
	jmp .257
.377:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .379
	mov rbx, _s674
	mov rsi, 35
	push rbx
	push rsi
	jmp .257
.379:
	pop rbx
	mov rsi, rbx
	mov rdi, 99
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .381
	mov rbx, _s675
	mov rsi, 47
	push rbx
	push rsi
	jmp .257
.381:
	pop rbx
	mov rsi, rbx
	mov rdi, 100
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .383
	mov rbx, _s676
	mov rsi, 26
	push rbx
	push rsi
	jmp .257
.383:
	pop rbx
	mov rsi, rbx
	mov rdi, 101
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .385
	mov rbx, _s677
	mov rsi, 36
	push rbx
	push rsi
	jmp .257
.385:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .387
	mov rbx, _s678
	mov rsi, 47
	push rbx
	push rsi
	jmp .257
.387:
	pop rbx
	mov rsi, rbx
	mov rdi, 103
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .389
	mov rbx, _s679
	mov rsi, 47
	push rbx
	push rsi
	jmp .257
.389:
	pop rbx
	mov rsi, rbx
	mov rdi, 104
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .391
	mov rbx, _s680
	mov rsi, 37
	push rbx
	push rsi
	jmp .257
.391:
	pop rbx
	mov rsi, rbx
	mov rdi, 105
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .393
	mov rbx, _s681
	mov rsi, 35
	push rbx
	push rsi
	jmp .257
.393:
	pop rbx
	mov rsi, rbx
	mov rdi, 106
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .395
	mov rbx, _s682
	mov rsi, 49
	push rbx
	push rsi
	jmp .257
.395:
	pop rbx
	mov rsi, rbx
	mov rdi, 107
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .397
	mov rbx, _s683
	mov rsi, 46
	push rbx
	push rsi
	jmp .257
.397:
	pop rbx
	mov rsi, rbx
	mov rdi, 108
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .399
	mov rbx, _s684
	mov rsi, 57
	push rbx
	push rsi
	jmp .257
.399:
	pop rbx
	mov rsi, rbx
	mov rdi, 109
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .401
	mov rbx, _s685
	mov rsi, 49
	push rbx
	push rsi
	jmp .257
.401:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .403
	mov rbx, _s686
	mov rsi, 32
	push rbx
	push rsi
	jmp .257
.403:
	pop rbx
	mov rsi, rbx
	mov rdi, 111
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .405
	mov rbx, _s687
	mov rsi, 33
	push rbx
	push rsi
	jmp .257
.405:
	pop rbx
	mov rsi, rbx
	mov rdi, 112
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .407
	mov rbx, _s688
	mov rsi, 24
	push rbx
	push rsi
	jmp .257
.407:
	pop rbx
	mov rsi, rbx
	mov rdi, 113
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .409
	mov rbx, _s689
	mov rsi, 31
	push rbx
	push rsi
	jmp .257
.409:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .411
	mov rbx, _s690
	mov rsi, 40
	push rbx
	push rsi
	jmp .257
.411:
	pop rbx
	mov rsi, rbx
	mov rdi, 115
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .413
	mov rbx, _s691
	mov rsi, 39
	push rbx
	push rsi
	jmp .257
.413:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .415
	mov rbx, _s692
	mov rsi, 26
	push rbx
	push rsi
	jmp .257
.415:
	pop rbx
	mov rsi, rbx
	mov rdi, 122
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .417
	mov rbx, _s693
	mov rsi, 28
	push rbx
	push rsi
	jmp .257
.417:
	pop rbx
	mov rsi, rbx
	mov rdi, 125
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .419
	mov rbx, _s694
	mov rsi, 30
	push rbx
	push rsi
	jmp .257
.419:
	pop rbx
	mov rsi, rbx
	mov rdi, 130
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .421
	mov rbx, _s695
	mov rsi, 23
	push rbx
	push rsi
	jmp .257
.421:
	pop rbx
	mov rsi, rbx
	mov rdi, 131
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .423
	mov rbx, _s696
	mov rsi, 39
	push rbx
	push rsi
	jmp .257
.423:
	pop rbx
	mov rsi, rbx
	mov rdi, 95
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .425
	mov rbx, _s697
	mov rsi, 33
	push rbx
	push rsi
	jmp .257
.425:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .427
	mov rbx, _s698
	mov rsi, 36
	push rbx
	push rsi
	jmp .428
.427:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .430
	mov rbx, _s699
	mov rsi, 35
	push rbx
	push rsi
	jmp .428
.430:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .432
	mov rbx, _s700
	mov rsi, 23
	push rbx
	push rsi
	jmp .428
.432:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .434
	mov rbx, _s701
	mov rsi, 22
	push rbx
	push rsi
	jmp .428
.434:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .436
	mov rbx, _s702
	mov rsi, 33
	push rbx
	push rsi
	jmp .428
.436:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .438
	mov rbx, _s703
	mov rsi, 38
	push rbx
	push rsi
	jmp .428
.438:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .440
	mov rbx, _s704
	mov rsi, 35
	push rbx
	push rsi
	jmp .428
.440:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .442
	mov rbx, _s705
	mov rsi, 23
	push rbx
	push rsi
	jmp .428
.442:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .444
	mov rbx, _s706
	mov rsi, 24
	push rbx
	push rsi
	jmp .428
.444:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .446
	mov rbx, _s707
	mov rsi, 34
	push rbx
	push rsi
	jmp .428
.446:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .448
	mov rbx, _s708
	mov rsi, 22
	push rbx
	push rsi
	jmp .428
.448:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .450
	mov rbx, _s709
	mov rsi, 17
	push rbx
	push rsi
	jmp .428
.450:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .452
	mov rbx, _s710
	mov rsi, 30
	push rbx
	push rsi
	jmp .428
.452:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .454
	mov rbx, _s711
	mov rsi, 22
	push rbx
	push rsi
	jmp .428
.454:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .456
	mov rbx, _s712
	mov rsi, 37
	push rbx
	push rsi
	jmp .428
.456:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .458
	mov rbx, _s713
	mov rsi, 29
	push rbx
	push rsi
	jmp .428
.458:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .460
	mov rbx, _s714
	mov rsi, 28
	push rbx
	push rsi
	jmp .428
.460:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .462
	mov rbx, _s715
	mov rsi, 27
	push rbx
	push rsi
	jmp .428
.462:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .464
	mov rbx, _s716
	mov rsi, 21
	push rbx
	push rsi
	jmp .428
.464:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .466
	mov rbx, _s717
	mov rsi, 32
	push rbx
	push rsi
	jmp .428
.466:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .468
	mov rbx, _s718
	mov rsi, 38
	push rbx
	push rsi
	jmp .428
.468:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .470
	mov rbx, _s719
	mov rsi, 30
	push rbx
	push rsi
	jmp .428
.470:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .472
	mov rbx, _s720
	mov rsi, 22
	push rbx
	push rsi
	jmp .428
.472:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .474
	mov rbx, _s721
	mov rsi, 22
	push rbx
	push rsi
	jmp .428
.474:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .476
	mov rbx, _s722
	mov rsi, 35
	push rbx
	push rsi
	jmp .428
.476:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .478
	mov rbx, _s723
	mov rsi, 28
	push rbx
	push rsi
	jmp .428
.478:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .480
	mov rbx, _s724
	mov rsi, 37
	push rbx
	push rsi
	jmp .428
.480:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .482
	mov rbx, _s725
	mov rsi, 37
	push rbx
	push rsi
	jmp .428
.482:
	pop rbx
	mov rsi, rbx
	mov rdi, 78
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .484
	mov rbx, _s726
	mov rsi, 32
	push rbx
	push rsi
	jmp .428
.484:
	pop rbx
	mov rsi, rbx
	mov rdi, 79
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .486
	mov rbx, _s727
	mov rsi, 48
	push rbx
	push rsi
	jmp .428
.486:
	pop rbx
	mov rsi, rbx
	mov rdi, 80
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .488
	mov rbx, _s728
	mov rsi, 46
	push rbx
	push rsi
	jmp .428
.488:
	pop rbx
	mov rsi, rbx
	mov rdi, 81
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .490
	mov rbx, _s729
	mov rsi, 39
	push rbx
	push rsi
	jmp .428
.490:
	pop rbx
	mov rsi, rbx
	mov rdi, 82
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .492
	mov rbx, _s730
	mov rsi, 57
	push rbx
	push rsi
	jmp .428
.492:
	pop rbx
	mov rsi, rbx
	mov rdi, 83
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .494
	mov rbx, _s731
	mov rsi, 48
	push rbx
	push rsi
	jmp .428
.494:
	pop rbx
	mov rsi, rbx
	mov rdi, 85
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .496
	mov rbx, _s732
	mov rsi, 54
	push rbx
	push rsi
	jmp .428
.496:
	pop rbx
	mov rsi, rbx
	mov rdi, 86
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .498
	mov rbx, _s733
	mov rsi, 29
	push rbx
	push rsi
	jmp .428
.498:
	pop rbx
	mov rsi, rbx
	mov rdi, 117
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .500
	mov rbx, _s734
	mov rsi, 34
	push rbx
	push rsi
	jmp .428
.500:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .502
	mov rbx, _s735
	mov rsi, 37
	push rbx
	push rsi
	jmp .428
.502:
	pop rbx
	mov rsi, rbx
	mov rdi, 119
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .504
	mov rbx, _s736
	mov rsi, 39
	push rbx
	push rsi
	jmp .428
.504:
	pop rbx
	mov rsi, rbx
	mov rdi, 120
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .506
	mov rbx, _s737
	mov rsi, 29
	push rbx
	push rsi
	jmp .428
.506:
	pop rbx
	mov rsi, rbx
	mov rdi, 121
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .508
	mov rbx, _s738
	mov rsi, 28
	push rbx
	push rsi
	jmp .428
.508:
	pop rbx
	mov rsi, rbx
	mov rdi, 123
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .510
	mov rbx, _s739
	mov rsi, 27
	push rbx
	push rsi
	jmp .428
.510:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .512
	mov rbx, _s740
	mov rsi, 31
	push rbx
	push rsi
	jmp .428
.512:
	pop rbx
	mov rsi, rbx
	mov rdi, 126
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .514
	mov rbx, _s741
	mov rsi, 35
	push rbx
	push rsi
	jmp .428
.514:
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .516
	mov rbx, _s742
	mov rsi, 29
	push rbx
	push rsi
	jmp .428
.516:
	pop rbx
	mov rsi, rbx
	mov rdi, 128
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .518
	mov rbx, _s743
	mov rsi, 34
	push rbx
	push rsi
	jmp .428
.518:
	pop rbx
	mov rsi, rbx
	mov rdi, 129
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .520
	mov rbx, _s744
	mov rsi, 42
	push rbx
	push rsi
	jmp .428
.520:
	pop rbx
	mov rsi, rbx
	mov rdi, 132
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .522
	mov rbx, _s745
	mov rsi, 47
	push rbx
	push rsi
	jmp .428
.522:
	pop rbx
	mov rsi, rbx
	mov rdi, 133
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .524
	mov rbx, _s746
	mov rsi, 42
	push rbx
	push rsi
	jmp .428
.524:
	mov rbx, _s747
	mov rsi, 15
	push rbx
	push rsi
.525:
.428:
.426:
.257:
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
	jz .526
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.526:
	mov rbx, _s604
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
	jnz .2696
	mov eax, 1
	mov edi, 2
	mov rsi, _s605
	mov rdx, 98
	syscall
	mov rdi, 1
	jmp _exit
.2696:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
.528:
	mov rbx, 1
	test rbx, rbx
	jz .529
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
	jz .530
	add rsp, 8
	add rsp, 8
	jmp .529
	jmp .532
.530:
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
	jz .533
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.533:
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
	jnz .2697.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s607
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2697.1:
	mov [_galloc_buffer.len], rsi
.532:
	add rsp, 8
	add rsp, 8
	jmp .528
.529:
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
	jz .535
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.535:
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
is_rel_path:
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
	jz .537
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.537:
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
	jz .539
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.539:
	pop rbx
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .541
	mov rbx, 1
	push rbx
	jmp .543
.541:
	mov rbx, 0
	push rbx
.543:
	mov rbp, rsp
	mov rsp, [_rs_p]
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
	call is_abs_path
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_rel_path
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	or rsi, rbx
	test rsi, rsi
	jz .544
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	jmp .546
.544:
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
	jz .547
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.547:
.546:
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
	jnz .2698
	mov eax, 1
	mov edi, 2
	mov rsi, _s608
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2698:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .549
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	or rsi, rdi
	test rsi, rsi
	jz .551
	mov rbx, 18446744073709551516
	mov rsi, _s609
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
	jnz .2699
	mov eax, 1
	mov edi, 2
	mov rsi, _s610
	mov rdx, 104
	syscall
	mov rdi, 1
	jmp _exit
.2699:
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	test rsi, rsi
	jz .553
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
	jnz .2700
	mov eax, 1
	mov edi, 2
	mov rsi, _s611
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2700:
.553:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	test rsi, rsi
	jz .555
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
	jnz .2701
	mov eax, 1
	mov edi, 2
	mov rsi, _s612
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2701:
.555:
.551:
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
	jz .557
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	jmp .559
.557:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
.559:
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
	jz .250.1
	pop rbx
	not rbx
	inc rbx
	push rbx
.250.1:
	mov rbx, 2
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .560
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.560:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2702
	mov eax, 1
	mov edi, 2
	mov rsi, _s748
	mov rdx, 104
	syscall
	mov rdi, 1
	jmp _exit
.2702:
	jmp .562
.549:
.563:
	mov rbx, 1
	test rbx, rbx
	jz .564
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
	jnz .2703
	mov eax, 1
	mov edi, 2
	mov rsi, _s749
	mov rdx, 103
	syscall
	mov rdi, 1
	jmp _exit
.2703:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 127
	and rsi, rbx
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .565
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
	jz .567
	mov rbx, 60
	mov rax, rbx
	pop rdi
		syscall
	jmp .569
.567:
	add rsp, 8
.569:
	jmp .564
	jmp .566
.565:
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
	jz .571
	mov rbx, _s750
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
	mov rsi, _s29
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
.571:
.566:
	jmp .563
.564:
.562:
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
	jnz .2704.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s607
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2704.2:
	mov [_galloc_buffer.len], rsi
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
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
	jz .572
	mov rbx, _s46
	mov rsi, 4
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
	mov rbx, _s47
	mov rsi, 4
	push rbx
	push rsi
	jmp .573
.575:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2705
	mov eax, 1
	mov edi, 2
	mov rsi, _s600
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.2705:
	push rbx
	push rsi
.576:
.573:
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
	mov rbx, _s49
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
	jz .577
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .578
.577:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s50
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
	jz .580
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	jmp .578
.580:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.581:
.578:
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
	jz .582
	mov rbx, _s1
	mov rsi, 5
	push rbx
	push rsi
	jmp .583
.582:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .585
	mov rbx, _s2
	mov rsi, 7
	push rbx
	push rsi
	jmp .583
.585:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2706
	mov eax, 1
	mov edi, 2
	mov rsi, _s3
	mov rdx, 71
	syscall
	mov rdi, 1
	jmp _exit
.2706:
	push rbx
	push rsi
.586:
.583:
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
	jz .587
	mov rbx, 0
	mov rsi, 1
	push rbx
	push rsi
	jmp .588
.587:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .590
	mov rbx, 9
	mov rsi, 1
	push rbx
	push rsi
	jmp .588
.590:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.591:
.588:
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
	jnz .2707.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s68
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2707.1:
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
	jnz .2708.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s68
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2708.2:
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
	jnz .2709.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s68
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2709.3:
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
	jnz .2710.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s68
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2710.4:
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
	jz .592
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.592:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, 8388608
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2711.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s68
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2711.5:
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
	jnz .2712.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s68
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2712.6:
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
	mov rbx, _s58
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
	jnz .2713
	mov eax, 1
	mov edi, 2
	mov rsi, _s69
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2713:
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
	jz .594
	mov rbx, _s164
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.594:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .597
	mov rbx, _s165
	mov rsi, 10
	push rbx
	push rsi
	jmp .595
.597:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .599
	mov rbx, _s166
	mov rsi, 10
	push rbx
	push rsi
	jmp .595
.599:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .601
	mov rbx, _s93
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.601:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .603
	mov rbx, _s94
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.603:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .605
	mov rbx, _s95
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.605:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .607
	mov rbx, _s96
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.607:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .609
	mov rbx, _s97
	mov rsi, 5
	push rbx
	push rsi
	jmp .595
.609:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .611
	mov rbx, _s98
	mov rsi, 6
	push rbx
	push rsi
	jmp .595
.611:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .613
	mov rbx, _s99
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.613:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .615
	mov rbx, _s100
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.615:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .617
	mov rbx, _s101
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.617:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .619
	mov rbx, _s102
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.619:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .621
	mov rbx, _s103
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.621:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .623
	mov rbx, _s104
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.623:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .625
	mov rbx, _s105
	mov rsi, 5
	push rbx
	push rsi
	jmp .595
.625:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .627
	mov rbx, _s106
	mov rsi, 5
	push rbx
	push rsi
	jmp .595
.627:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .629
	mov rbx, _s107
	mov rsi, 8
	push rbx
	push rsi
	jmp .595
.629:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .631
	mov rbx, _s108
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.631:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .633
	mov rbx, _s57
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.633:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .635
	mov rbx, _s109
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.635:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .637
	mov rbx, _s110
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.637:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .639
	mov rbx, _s111
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.639:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .641
	mov rbx, _s112
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.641:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .643
	mov rbx, _s113
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.643:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .645
	mov rbx, _s114
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.645:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .647
	mov rbx, _s115
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.647:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .649
	mov rbx, _s116
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.649:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .651
	mov rbx, _s117
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.651:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .653
	mov rbx, _s118
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.653:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .655
	mov rbx, _s119
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.655:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .657
	mov rbx, _s120
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.657:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .659
	mov rbx, _s121
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.659:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .661
	mov rbx, _s122
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.661:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .663
	mov rbx, _s123
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.663:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .665
	mov rbx, _s124
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.665:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .667
	mov rbx, _s125
	mov rsi, 5
	push rbx
	push rsi
	jmp .595
.667:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .669
	mov rbx, _s126
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.669:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .671
	mov rbx, _s127
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.671:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .673
	mov rbx, _s128
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.673:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .675
	mov rbx, _s129
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.675:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .677
	mov rbx, _s130
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.677:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .679
	mov rbx, _s131
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.679:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .681
	mov rbx, _s132
	mov rsi, 1
	push rbx
	push rsi
	jmp .595
.681:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .683
	mov rbx, _s133
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.683:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .685
	mov rbx, _s134
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.685:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .687
	mov rbx, _s135
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.687:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .689
	mov rbx, _s136
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.689:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .691
	mov rbx, _s137
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.691:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .693
	mov rbx, _s138
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.693:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .695
	mov rbx, _s139
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.695:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .697
	mov rbx, _s140
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.697:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .699
	mov rbx, _s141
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.699:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .701
	mov rbx, _s142
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.701:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .703
	mov rbx, _s143
	mov rsi, 2
	push rbx
	push rsi
	jmp .595
.703:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .705
	mov rbx, _s144
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.705:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .707
	mov rbx, _s145
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.707:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .709
	mov rbx, _s146
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.709:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .711
	mov rbx, _s147
	mov rsi, 7
	push rbx
	push rsi
	jmp .595
.711:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .713
	mov rbx, _s148
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.713:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .715
	mov rbx, _s149
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.715:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .717
	mov rbx, _s150
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.717:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .719
	mov rbx, _s151
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.719:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .721
	mov rbx, _s152
	mov rsi, 6
	push rbx
	push rsi
	jmp .595
.721:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .723
	mov rbx, _s153
	mov rsi, 7
	push rbx
	push rsi
	jmp .595
.723:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .725
	mov rbx, _s154
	mov rsi, 3
	push rbx
	push rsi
	jmp .595
.725:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .727
	mov rbx, _s155
	mov rsi, 8
	push rbx
	push rsi
	jmp .595
.727:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .729
	mov rbx, _s156
	mov rsi, 4
	push rbx
	push rsi
	jmp .595
.729:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2714
	mov eax, 1
	mov edi, 2
	mov rsi, _s167
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2714:
	push rbx
	push rsi
.730:
.595:
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
	mov rbx, _s93
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
	jz .731
	mov rbx, 4
	push rbx
	jmp .732
.731:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s94
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
	jz .734
	mov rbx, 5
	push rbx
	jmp .732
.734:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s95
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
	jz .736
	mov rbx, 6
	push rbx
	jmp .732
.736:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s96
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
	jz .738
	mov rbx, 7
	push rbx
	jmp .732
.738:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s97
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
	jz .740
	mov rbx, 9
	push rbx
	jmp .732
.740:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s98
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
	jz .742
	mov rbx, 10
	push rbx
	jmp .732
.742:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s99
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
	jz .744
	mov rbx, 11
	push rbx
	jmp .732
.744:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s100
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
	jz .746
	mov rbx, 12
	push rbx
	jmp .732
.746:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s101
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
	jz .748
	mov rbx, 13
	push rbx
	jmp .732
.748:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s102
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
	jz .750
	mov rbx, 15
	push rbx
	jmp .732
.750:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s103
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
	jz .752
	mov rbx, 16
	push rbx
	jmp .732
.752:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s104
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
	jz .754
	mov rbx, 17
	push rbx
	jmp .732
.754:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s105
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
	jz .756
	mov rbx, 18
	push rbx
	jmp .732
.756:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s106
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
	jz .758
	mov rbx, 19
	push rbx
	jmp .732
.758:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s107
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
	jz .760
	mov rbx, 20
	push rbx
	jmp .732
.760:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s108
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
	jz .762
	mov rbx, 21
	push rbx
	jmp .732
.762:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s57
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
	jz .764
	mov rbx, 22
	push rbx
	jmp .732
.764:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s109
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
	jz .766
	mov rbx, 23
	push rbx
	jmp .732
.766:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s110
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
	jz .768
	mov rbx, 24
	push rbx
	jmp .732
.768:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s111
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
	jz .770
	mov rbx, 25
	push rbx
	jmp .732
.770:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s112
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
	jz .772
	mov rbx, 26
	push rbx
	jmp .732
.772:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s113
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
	jz .774
	mov rbx, 27
	push rbx
	jmp .732
.774:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s114
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
	jz .776
	mov rbx, 28
	push rbx
	jmp .732
.776:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s115
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
	jz .778
	mov rbx, 29
	push rbx
	jmp .732
.778:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s116
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
	jz .780
	mov rbx, 30
	push rbx
	jmp .732
.780:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s117
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
	jz .782
	mov rbx, 31
	push rbx
	jmp .732
.782:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s118
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
	jz .784
	mov rbx, 32
	push rbx
	jmp .732
.784:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s119
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
	jz .786
	mov rbx, 33
	push rbx
	jmp .732
.786:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s120
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
	jz .788
	mov rbx, 70
	push rbx
	jmp .732
.788:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s121
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
	jz .790
	mov rbx, 34
	push rbx
	jmp .732
.790:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s122
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
	jz .792
	mov rbx, 35
	push rbx
	jmp .732
.792:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s123
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
	jz .794
	mov rbx, 36
	push rbx
	jmp .732
.794:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s124
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
	jz .796
	mov rbx, 37
	push rbx
	jmp .732
.796:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s125
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
	jz .798
	mov rbx, 38
	push rbx
	jmp .732
.798:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s126
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
	jz .800
	mov rbx, 39
	push rbx
	jmp .732
.800:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s127
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
	jz .802
	mov rbx, 40
	push rbx
	jmp .732
.802:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s128
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
	jz .804
	mov rbx, 41
	push rbx
	jmp .732
.804:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s129
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
	jz .806
	mov rbx, 42
	push rbx
	jmp .732
.806:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s130
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
	jz .808
	mov rbx, 43
	push rbx
	jmp .732
.808:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s131
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
	jz .810
	mov rbx, 44
	push rbx
	jmp .732
.810:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s132
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
	jz .812
	mov rbx, 45
	push rbx
	jmp .732
.812:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s133
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
	jz .814
	mov rbx, 46
	push rbx
	jmp .732
.814:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s134
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
	jz .816
	mov rbx, 47
	push rbx
	jmp .732
.816:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s135
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
	jz .818
	mov rbx, 48
	push rbx
	jmp .732
.818:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s136
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
	jz .820
	mov rbx, 49
	push rbx
	jmp .732
.820:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s137
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
	jz .822
	mov rbx, 50
	push rbx
	jmp .732
.822:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s138
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
	jz .824
	mov rbx, 51
	push rbx
	jmp .732
.824:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s139
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
	jz .826
	mov rbx, 52
	push rbx
	jmp .732
.826:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s140
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
	jz .828
	mov rbx, 53
	push rbx
	jmp .732
.828:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s141
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
	jz .830
	mov rbx, 54
	push rbx
	jmp .732
.830:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s142
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
	jz .832
	mov rbx, 55
	push rbx
	jmp .732
.832:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s143
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
	jz .834
	mov rbx, 56
	push rbx
	jmp .732
.834:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s144
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
	jz .836
	mov rbx, 57
	push rbx
	jmp .732
.836:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s145
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
	jz .838
	mov rbx, 58
	push rbx
	jmp .732
.838:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s146
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
	jz .840
	mov rbx, 59
	push rbx
	jmp .732
.840:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s147
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
	jz .842
	mov rbx, 67
	push rbx
	jmp .732
.842:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s148
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
	jz .844
	mov rbx, 68
	push rbx
	jmp .732
.844:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s149
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
	jz .846
	mov rbx, 69
	push rbx
	jmp .732
.846:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s150
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
	jz .848
	mov rbx, 71
	push rbx
	jmp .732
.848:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s151
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
	jz .850
	mov rbx, 72
	push rbx
	jmp .732
.850:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s152
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
	jz .852
	mov rbx, 73
	push rbx
	jmp .732
.852:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s153
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
	jz .854
	mov rbx, 74
	push rbx
	jmp .732
.854:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s154
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
	jz .856
	mov rbx, 75
	push rbx
	jmp .732
.856:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s155
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
	jz .858
	mov rbx, 76
	push rbx
	jmp .732
.858:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s156
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
	jz .860
	mov rbx, 77
	push rbx
	jmp .732
.860:
	mov rbx, 1
	push rbx
.861:
.732:
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
	jnz .2715
	mov eax, 1
	mov edi, 2
	mov rsi, _s83
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2715:
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
	jnz .2716.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2716.1:
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
	mov rsi, _s72
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
	mov rbx, _s72
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
	mov rbx, _s73
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
.862:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .863
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 9
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .864
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
	mov rbx, _s78
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
.864:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .862
.863:
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
	jz .866
	mov rbx, 1
	mov rsi, _s29
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
		syscall
.866:
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
	jnz .2717.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2717.2:
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
	jnz .2718.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2718.1:
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
	jz .868
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
	jnz .2719.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2719.2:
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
	jmp .870
.868:
	mov rbx, qword [_rs_p]
	add rbx, 72
	mov rsi, 0
	mov byte [rbx], sil
.870:
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
	jnz .2720.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2720.3:
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
	jnz .2721.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2721.4:
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
	mov rbx, _s77
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
	mov rbx, _s79
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
.871:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .872
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
	jmp .871
.872:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.873:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .874
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
	jmp .873
.874:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 72
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .875
	mov rbx, 62
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.875:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, _s29
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
	jnz .2722.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2722.1:
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
.877:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .878
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2723.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2723.2:
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
	jz .879
	mov rbx, _s168
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
	jmp .880
.879:
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
	jz .882
	mov rbx, _s168
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
	jmp .880
.882:
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
	jz .884
	mov rbx, _s168
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
	jmp .880
.884:
	add rsp, 8
.885:
.880:
	mov rbx, 1
	mov rsi, _s29
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
	jmp .877
.878:
	add rsp, 8
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
	jnz .2724.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2724.3:
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
	mov rbx, _s72
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
	mov rbx, _s72
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
	mov rbx, _s73
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
	mov rsi, _s29
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
	jnz .2725.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2725.3:
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
	mov rsi, _s29
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
	jnz .2726.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2726.4:
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
	mov rsi, _s29
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
	jnz .2727.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2727.5:
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
	jnz .2728.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2728.4:
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
	mov rbx, _s72
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
	mov rbx, _s72
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
	mov rbx, _s73
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
	mov rbx, _s451
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
	jnz .2729.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2729.6:
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
	jnz .2730.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2730.5:
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
	mov rbx, _s72
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
	mov rbx, _s72
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
	mov rbx, _s73
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
	mov rbx, _s159
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
	jz .889
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
	jz .891
	mov rbx, _s62
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
.891:
.889:
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
	jz .893
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.start_bold_time
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s160
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
	jz .895
	mov rbx, _s62
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
.895:
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
	mov rbx, _s161
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
	mov rbx, _s162
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
	jmp .897
.893:
	add rsp, 8
	add rsp, 8
.897:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.scan_file:
	sub rsp, 149
	mov [_rs_p], rsp
	mov rsp, rbp
.936:
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
.898:
	mov rbx, 1
	test rbx, rbx
	jz .899
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
	jz .900
	jmp .899
.900:
.902:
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
	jz .192.1
	mov rbx, 1
	push rbx
	jmp .193.1
.192.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .195.1
	mov rbx, 1
	push rbx
	jmp .193.1
.195.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .197.1
	mov rbx, 1
	push rbx
	jmp .193.1
.197.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .199.1
	mov rbx, 1
	push rbx
	jmp .193.1
.199.1:
	mov rbx, 0
	push rbx
.200.1:
.193.1:
	pop rbx
	pop rsi
	test rbx, rbx
	jz .903
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .904
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .906
.904:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.906:
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
	jz .907
	jmp .903
.907:
	jmp .902
.903:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .909
	jmp .899
.909:
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
	mov rsi, 34
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	or r8, rdi
	test r8, r8
	jz .911
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
	mov rsi, 0
	mov byte [rbx], sil
.913:
	mov rbx, 1
	test rbx, rbx
	jz .914
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
	jz .915
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s70
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
.915:
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
	jz .917
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .919
.917:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.919:
	mov rbx, qword [_rs_p]
	add rbx, 108
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .920
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
	jz .922
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s80
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
.922:
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
	jmp .913
.920:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 92]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .924
	jmp .914
.924:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .926
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 1
	mov byte [rbx], sil
	jmp .913
.926:
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
	jz .928
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.928:
	jmp .913
.914:
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
	jz .930
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s81
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
.930:
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
	jz .932
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .934
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s82
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.934:
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
	jmp .937
.932:
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
.937:
	jmp .898
	jmp .912
.911:
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
	jz .939
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 125], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.940:
	mov rbx, 1
	test rbx, rbx
	jz .941
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
	jz .942
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s84
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
.942:
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
	jz .944
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .945
.944:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .947
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
	jz .948
	jmp .941
.948:
	jmp .945
.947:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.950:
.945:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 125], rsi
	jmp .940
.941:
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .951
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s85
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
	jmp .952
.951:
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
	jz .954
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s81
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
	jmp .952
.954:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 125]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .956
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
	jz .957
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s86
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
.957:
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
	jz .959
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s80
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
.959:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 117], rsi
.956:
.952:
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
	mov r10, qword [r9 + 117]
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
	jmp .898
	jmp .912
.939:
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
	jz .962
.963:
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
	jz .964
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
	jz .965
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 149
	ret
.965:
	jmp .963
.964:
	jmp .898
.962:
.912:
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
	jz .967
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
	jz .969
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
.969:
.967:
.971:
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
	jz .192.2
	mov rbx, 1
	push rbx
	jmp .193.2
.192.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .195.2
	mov rbx, 1
	push rbx
	jmp .193.2
.195.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .197.2
	mov rbx, 1
	push rbx
	jmp .193.2
.197.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .199.2
	mov rbx, 1
	push rbx
	jmp .193.2
.199.2:
	mov rbx, 0
	push rbx
.200.2:
.193.2:
	pop rbx
	pop rsi
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .972
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .973
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
	jz .975
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .977
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
.977:
.975:
.973:
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
	jz .979
	jmp .972
.979:
	jmp .971
.972:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .981
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .898
.981:
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
	mov qword [rbx + 141], rdi
	mov qword [rbx + 133], rsi
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .983
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s87
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
.983:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .985
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
	mov r11, qword [r9 + 133]
	mov r12, qword [r9 + 141]
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
	jz .987
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	add rbx, 133
	mov r9, 8
	add rbx, r9
	mov rbx, [rbx]
	mov r9, _s90
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
.987:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 133]
	mov rdi, qword [rbx + 141]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.to_num?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2731.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s91
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2731.1:
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .989
	pop rbx
	not rbx
	inc rbx
	push rbx
.989:
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
	jmp .991
.985:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 133]
	mov rdi, qword [rbx + 141]
	mov rbx, _s92
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
	jz .992
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .898
.992:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 133]
	mov r10, qword [rbx + 141]
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
	jz .994
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 133]
	mov rdi, qword [rbx + 141]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .996
.994:
	mov rbx, 0
	push rbx
.996:
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
.991:
	jmp .898
.899:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .997
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s157
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
.997:
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
	jz .999
	mov rbx, _s341
	mov rsi, 8
	push rbx
	push rsi
	jmp .1000
.999:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1002
	mov rbx, _s342
	mov rsi, 8
	push rbx
	push rsi
	jmp .1000
.1002:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1004
	mov rbx, _s343
	mov rsi, 15
	push rbx
	push rsi
	jmp .1000
.1004:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1006
	mov rbx, _s344
	mov rsi, 19
	push rbx
	push rsi
	jmp .1000
.1006:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1008
	mov rbx, _s345
	mov rsi, 20
	push rbx
	push rsi
	jmp .1000
.1008:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1010
	mov rbx, _s346
	mov rsi, 20
	push rbx
	push rsi
	jmp .1000
.1010:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1012
	mov rbx, _s347
	mov rsi, 20
	push rbx
	push rsi
	jmp .1000
.1012:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1014
	mov rbx, _s348
	mov rsi, 21
	push rbx
	push rsi
	jmp .1000
.1014:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1016
	mov rbx, _s349
	mov rsi, 9
	push rbx
	push rsi
	jmp .1000
.1016:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1018
	mov rbx, _s350
	mov rsi, 9
	push rbx
	push rsi
	jmp .1000
.1018:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1020
	mov rbx, _s351
	mov rsi, 11
	push rbx
	push rsi
	jmp .1000
.1020:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1022
	mov rbx, _s352
	mov rsi, 6
	push rbx
	push rsi
	jmp .1000
.1022:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1024
	mov rbx, _s353
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1024:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1026
	mov rbx, _s354
	mov rsi, 10
	push rbx
	push rsi
	jmp .1000
.1026:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1028
	mov rbx, _s355
	mov rsi, 8
	push rbx
	push rsi
	jmp .1000
.1028:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1030
	mov rbx, _s356
	mov rsi, 7
	push rbx
	push rsi
	jmp .1000
.1030:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1032
	mov rbx, _s98
	mov rsi, 6
	push rbx
	push rsi
	jmp .1000
.1032:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1034
	mov rbx, _s357
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1034:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1036
	mov rbx, _s358
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1036:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1038
	mov rbx, _s359
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1038:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1040
	mov rbx, _s360
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1040:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1042
	mov rbx, _s361
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1042:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1044
	mov rbx, _s362
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1044:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1046
	mov rbx, _s363
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1046:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1048
	mov rbx, _s364
	mov rsi, 6
	push rbx
	push rsi
	jmp .1000
.1048:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1050
	mov rbx, _s365
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1050:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1052
	mov rbx, _s366
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1052:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1054
	mov rbx, _s367
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1054:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1056
	mov rbx, _s368
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1056:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1058
	mov rbx, _s369
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1058:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1060
	mov rbx, _s370
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1060:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1062
	mov rbx, _s371
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1062:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1064
	mov rbx, _s122
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1064:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1066
	mov rbx, _s123
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1066:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1068
	mov rbx, _s124
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1068:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1070
	mov rbx, _s125
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1070:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1072
	mov rbx, _s126
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1072:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1074
	mov rbx, _s127
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1074:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1076
	mov rbx, _s128
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1076:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1078
	mov rbx, _s372
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1078:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1080
	mov rbx, _s373
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1080:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1082
	mov rbx, _s374
	mov rsi, 2
	push rbx
	push rsi
	jmp .1000
.1082:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1084
	mov rbx, _s375
	mov rsi, 2
	push rbx
	push rsi
	jmp .1000
.1084:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1086
	mov rbx, _s376
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1086:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1088
	mov rbx, _s377
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1088:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1090
	mov rbx, _s378
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1090:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1092
	mov rbx, _s379
	mov rsi, 4
	push rbx
	push rsi
	jmp .1000
.1092:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1094
	mov rbx, _s380
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1094:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1096
	mov rbx, _s381
	mov rsi, 5
	push rbx
	push rsi
	jmp .1000
.1096:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1098
	mov rbx, _s139
	mov rsi, 2
	push rbx
	push rsi
	jmp .1000
.1098:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1100
	mov rbx, _s140
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1100:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1102
	mov rbx, _s141
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1102:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1104
	mov rbx, _s142
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1104:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1106
	mov rbx, _s143
	mov rsi, 2
	push rbx
	push rsi
	jmp .1000
.1106:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1108
	mov rbx, _s144
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1108:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1110
	mov rbx, _s145
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1110:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1112
	mov rbx, _s146
	mov rsi, 3
	push rbx
	push rsi
	jmp .1000
.1112:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1114
	mov rbx, _s382
	mov rsi, 9
	push rbx
	push rsi
	jmp .1000
.1114:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1116
	mov rbx, _s383
	mov rsi, 9
	push rbx
	push rsi
	jmp .1000
.1116:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1118
	mov rbx, _s384
	mov rsi, 9
	push rbx
	push rsi
	jmp .1000
.1118:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2732
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.2732:
	push rbx
	push rsi
.1119:
.1000:
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
	jnz .2733
	mov eax, 1
	mov edi, 2
	mov rsi, _s201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2733:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s339
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
.1120:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1121
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2734.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2734.1:
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
	mov rbx, _s340
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
	mov rbx, _s340
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
	mov rsi, _s29
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
	jmp .1120
.1121:
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
	jnz .2735
	mov eax, 1
	mov edi, 2
	mov rsi, _s230
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2735:
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
	jnz .2736
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2736:
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
	jnz .2737
	mov eax, 1
	mov edi, 2
	mov rsi, _s244
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2737:
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
	jnz .2738
	mov eax, 1
	mov edi, 2
	mov rsi, _s258
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2738:
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
	jnz .2739
	mov eax, 1
	mov edi, 2
	mov rsi, _s242
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2739:
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
	mov rbx, _s260
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
	jz .1122
	mov rbx, 1
	push rbx
	jmp .1123
.1122:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s261
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
	jz .1125
	mov rbx, 2
	push rbx
	jmp .1123
.1125:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s262
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
	jz .1127
	mov rbx, 4
	push rbx
	jmp .1123
.1127:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s263
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
	jz .1129
	mov rbx, 8
	push rbx
	jmp .1123
.1129:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1130:
.1123:
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
	jz .1131
	mov rbx, 1
	push rbx
	jmp .1133
.1131:
	mov rbx, 0
	push rbx
.1133:
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
	jz .1134
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1134:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2740.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2740.7:
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
	jz .1138
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1138:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2741.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2741.8:
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
	jz .1140
	mov rbx, 0
	push rbx
	jmp .1142
.1140:
	mov rbx, 1
	push rbx
.1142:
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
	jz .1143
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1143:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2742.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2742.9:
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
	jnz .2743.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2743.10:
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
	jz .1145
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2744.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2744.11:
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
	jmp .1147
.1145:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	push rbx
	push rsi
	push rdi
.1147:
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
	jz .1148
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.1150:
	mov rbx, 1
	test rbx, rbx
	jz .1151
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
	jnz .2745.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s197
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2745.3:
	mov rbx, _s198
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
	jz .1152
	jmp .1151
.1152:
	pop rbx
	dec rbx
	push rbx
	jmp .1150
.1151:
	add rsp, 8
.1148:
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
.1154:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1155
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
	jnz .2746.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2746.1:
	pop rbx
	inc rbx
	push rbx
	jmp .1154
.1155:
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
	jz .1156
	mov rbx, [_gpos]
	mov rsi, _s199
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
.1156:
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
	jz .1158
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s199
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
.1158:
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
.1160:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1161
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
	jz .1162
	add rsp, 8
	jmp .1161
.1162:
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
	jmp .1160
.1161:
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
	jnz .2747
	mov eax, 1
	mov edi, 2
	mov rsi, _s255
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2747:
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
	jnz .2748.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2748.2:
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
	jnz .2749.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2749.3:
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
	jz .1164
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
	jnz .2750.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2750.5:
	jmp .1165
.1164:
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
	jz .1167
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
	jnz .2751.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s221
	mov rdx, 93
	syscall
	mov rdi, 1
	jmp _exit
.2751.1:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .1165
.1167:
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
	jz .1169
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
	jnz .2752.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s221
	mov rdx, 93
	syscall
	mov rdi, 1
	jmp _exit
.2752.2:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov qword [rbx], rsi
	jmp .1165
.1169:
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
	jz .1171
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
	jnz .2753.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s221
	mov rdx, 93
	syscall
	mov rdi, 1
	jmp _exit
.2753.3:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov qword [rbx], rsi
	jmp .1165
.1171:
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
	jz .1173
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
	jnz .2754.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s222
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2754.1:
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
	jnz .2755.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2755.6:
	jmp .1165
.1173:
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
	jz .1175
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	jmp .1165
.1175:
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
	jz .1177
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
	jnz .2756.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2756.1:
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
	jnz .2757.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2757.2:
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
	jnz .2758.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2758.7:
	jmp .1165
.1177:
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
	jz .1179
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
	jnz .2759.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2759.3:
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
	jnz .2760.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2760.4:
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
	jnz .2761.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2761.8:
	jmp .1165
.1179:
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
	jz .1181
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
	jnz .2762.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2762.5:
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
	jnz .2763.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2763.6:
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
	jnz .2764.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2764.9:
	jmp .1165
.1181:
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
	jz .1183
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
	jnz .2765.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2765.7:
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
	jnz .2766.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2766.8:
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
	jnz .2767.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2767.10:
	jmp .1165
.1183:
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
	jz .1185
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
	jnz .2768.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2768.9:
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
	jnz .2769.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2769.10:
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
	jnz .2770.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2770.11:
	jmp .1165
.1185:
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
	jz .1187
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
	jnz .2771.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2771.11:
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
	jnz .2772.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2772.12:
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
	jnz .2773.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2773.12:
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
	jnz .2774.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2774.13:
	jmp .1165
.1187:
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
	jz .1189
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
	jnz .2775.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2775.13:
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
	jnz .2776.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2776.14:
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
	jnz .2777.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2777.14:
	jmp .1165
.1189:
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
	jz .1191
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
	jnz .2778.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2778.15:
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
	jnz .2779.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2779.16:
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
	jnz .2780.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2780.15:
	jmp .1165
.1191:
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
	jz .1193
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
	jnz .2781.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2781.17:
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
	jnz .2782.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2782.18:
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
	jnz .2783.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2783.16:
	jmp .1165
.1193:
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
	jz .1195
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
	jnz .2784.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2784.19:
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
	jnz .2785.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2785.20:
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
	jnz .2786.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2786.17:
	jmp .1165
.1195:
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
	jz .1197
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
	jnz .2787.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2787.21:
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
	jnz .2788.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2788.22:
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
	jnz .2789.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2789.18:
	jmp .1165
.1197:
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
	jz .1199
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
	jnz .2790.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2790.23:
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
	jnz .2791.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2791.24:
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
	jnz .2792.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2792.19:
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
	jnz .2793.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2793.20:
	jmp .1165
.1199:
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
	jz .1201
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
	jnz .2794.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2794.5:
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
	jnz .2795.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2795.21:
	jmp .1165
.1201:
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
	jz .1203
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
	jnz .2796.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2796.25:
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
	jnz .2797.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2797.26:
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
	jnz .2798.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2798.22:
	jmp .1165
.1203:
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
	jz .1205
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
	jnz .2799.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2799.27:
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
	jnz .2800.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2800.28:
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
	jnz .2801.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2801.23:
	jmp .1165
.1205:
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
	jz .1207
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
	jnz .2802.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2802.29:
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
	jnz .2803.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2803.30:
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
	jnz .2804.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2804.24:
	jmp .1165
.1207:
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
	jz .1209
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
	jnz .2805.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2805.31:
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
	jnz .2806.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2806.32:
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
	jnz .2807.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2807.25:
	jmp .1165
.1209:
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
	jz .1211
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
	jnz .2808.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2808.33:
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
	jnz .2809.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2809.34:
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
	jnz .2810.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2810.26:
	jmp .1165
.1211:
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
	jz .1213
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
	jnz .2811.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2811.35:
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
	jnz .2812.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2812.36:
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
	jnz .2813.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2813.27:
	jmp .1165
.1213:
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
	jz .1215
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
	jnz .2814.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2814.37:
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
	jnz .2815.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2815.38:
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
	jnz .2816.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2816.28:
	jmp .1165
.1215:
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
	jz .1217
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
	jnz .2817.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2817.39:
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
	jnz .2818.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2818.40:
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
	jnz .2819.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2819.29:
	jmp .1165
.1217:
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
	jz .1219
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
	jnz .2820.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2820.41:
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
	jnz .2821.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2821.42:
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
	jnz .2822.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2822.30:
	jmp .1165
.1219:
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
	jz .1221
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
	jnz .2823.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2823.43:
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
	jnz .2824.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2824.44:
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
	jnz .2825.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2825.31:
	jmp .1165
.1221:
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
	jz .1223
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
	jnz .2826.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2826.45:
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
	jnz .2827.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2827.46:
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
	jnz .2828.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2828.47:
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
	jnz .2829.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2829.32:
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
	jnz .2830.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2830.33:
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
	jnz .2831.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2831.34:
	jmp .1165
.1223:
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
	jz .1225
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
	jnz .2832.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2832.6:
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
	jnz .2833.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2833.35:
	jmp .1165
.1225:
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
	jz .1227
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
	jnz .2834.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2834.48:
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
	jnz .2835.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2835.49:
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
	jnz .2836.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2836.50:
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
	jnz .2837.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2837.51:
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
	jnz .2838.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2838.36:
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
	jnz .2839.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2839.37:
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
	jnz .2840.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2840.38:
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
	jnz .2841.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s75
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2841.39:
	jmp .1165
.1227:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1228:
.1165:
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
.1242:
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
	jz .1229
	mov rbx, _s216
	mov rsi, 57
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
.1229:
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
.1231:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1232
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2842.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2842.4:
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
	jnz .2843.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2843.5:
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
	jz .1233
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
	jnz .2844.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2844.2:
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
	jnz .2845.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2845.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 1080]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1235
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1080], rbx
.1235:
	jmp .1237
.1233:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1080]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1238
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1240
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2846.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2846.1:
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
	jmp .1241
.1240:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 11
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1244
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
	jnz .2847.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2847.52:
	mov rbx, 0
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1245
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
	jz .1247
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1249
.1247:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2848
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2848:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1249:
.1245:
	jmp .1241
.1244:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 12
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1251
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
	jz .1252
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1254
.1252:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2849
	mov eax, 1
	mov edi, 2
	mov rsi, _s220
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2849:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1254:
	jmp .1241
.1251:
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
	jnz .2850
	mov eax, 1
	mov edi, 2
	mov rsi, _s223
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.2850:
.1255:
.1241:
.1238:
.1237:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1072], rsi
	jmp .1231
.1232:
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2851
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2851:
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
	jnz .2852
	mov eax, 1
	mov edi, 2
	mov rsi, _s399
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2852:
	mov rsi, [_gfwrite_buffer.len]
	add rbx, rsi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1256
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
	jnz .2853.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s400
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2853.1:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
.1256:
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
	jz .1258
	mov rbx, _s441
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1258:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1261
	mov rbx, _s442
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1261:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1263
	mov rbx, _s443
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1263:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1265
	mov rbx, _s444
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1265:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1267
	mov rbx, _s445
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1267:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1269
	mov rbx, _s446
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1269:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1271
	mov rbx, _s447
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1271:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1272:
.1259:
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
.1273:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1274
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
	jmp .1273
.1274:
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
	jz .1275
	mov rbx, _s307
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1275:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1278
	mov rbx, _s308
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1278:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1280
	mov rbx, _s309
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1280:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1282
	mov rbx, _s310
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1282:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1284
	mov rbx, _s143
	mov rsi, 2
	push rbx
	push rsi
	jmp .1276
.1284:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1286
	mov rbx, _s311
	mov rsi, 2
	push rbx
	push rsi
	jmp .1276
.1286:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1288
	mov rbx, _s312
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1288:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1290
	mov rbx, _s313
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1290:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1292
	mov rbx, _s314
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1292:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1294
	mov rbx, _s315
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1294:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1296
	mov rbx, _s316
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1296:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1298
	mov rbx, _s317
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1298:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1300
	mov rbx, _s318
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1300:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1302
	mov rbx, _s319
	mov rsi, 3
	push rbx
	push rsi
	jmp .1276
.1302:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2854
	mov eax, 1
	mov edi, 2
	mov rsi, _s431
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2854:
	push rbx
	push rsi
.1303:
.1276:
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
	jz .1304
	mov rbx, _s548
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1304:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1307
	mov rbx, _s549
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1307:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1309
	mov rbx, _s550
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1309:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1311
	mov rbx, _s551
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1313
	mov rbx, _s552
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1313:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1315
	mov rbx, _s553
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1315:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1317
	mov rbx, _s554
	mov rsi, 4
	push rbx
	push rsi
	jmp .1305
.1317:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1319
	mov rbx, _s555
	mov rsi, 4
	push rbx
	push rsi
	jmp .1305
.1319:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1321
	mov rbx, _s556
	mov rsi, 4
	push rbx
	push rsi
	jmp .1305
.1321:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1323
	mov rbx, _s557
	mov rsi, 4
	push rbx
	push rsi
	jmp .1305
.1323:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1325
	mov rbx, _s558
	mov rsi, 4
	push rbx
	push rsi
	jmp .1305
.1325:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1327
	mov rbx, _s559
	mov rsi, 4
	push rbx
	push rsi
	jmp .1305
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1329
	mov rbx, _s560
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1329:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1331
	mov rbx, _s561
	mov rsi, 3
	push rbx
	push rsi
	jmp .1305
.1331:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2855
	mov eax, 1
	mov edi, 2
	mov rsi, _s562
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2855:
	push rbx
	push rsi
.1332:
.1305:
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
	jz .1333
	mov rbx, _s532
	mov rsi, 2
	push rbx
	push rsi
	jmp .1334
.1333:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1336
	mov rbx, _s533
	mov rsi, 2
	push rbx
	push rsi
	jmp .1334
.1336:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1338
	mov rbx, _s534
	mov rsi, 2
	push rbx
	push rsi
	jmp .1334
.1338:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1340
	mov rbx, _s535
	mov rsi, 2
	push rbx
	push rsi
	jmp .1334
.1340:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1342
	mov rbx, _s536
	mov rsi, 3
	push rbx
	push rsi
	jmp .1334
.1342:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1344
	mov rbx, _s537
	mov rsi, 3
	push rbx
	push rsi
	jmp .1334
.1344:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1346
	mov rbx, _s538
	mov rsi, 4
	push rbx
	push rsi
	jmp .1334
.1346:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1348
	mov rbx, _s539
	mov rsi, 4
	push rbx
	push rsi
	jmp .1334
.1348:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1350
	mov rbx, _s540
	mov rsi, 4
	push rbx
	push rsi
	jmp .1334
.1350:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1352
	mov rbx, _s541
	mov rsi, 4
	push rbx
	push rsi
	jmp .1334
.1352:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1354
	mov rbx, _s542
	mov rsi, 4
	push rbx
	push rsi
	jmp .1334
.1354:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1356
	mov rbx, _s543
	mov rsi, 4
	push rbx
	push rsi
	jmp .1334
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1358
	mov rbx, _s544
	mov rsi, 2
	push rbx
	push rsi
	jmp .1334
.1358:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1360
	mov rbx, _s545
	mov rsi, 2
	push rbx
	push rsi
	jmp .1334
.1360:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2856
	mov eax, 1
	mov edi, 2
	mov rsi, _s546
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2856:
	push rbx
	push rsi
.1361:
.1334:
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
	jz .1362
	mov rbx, _s498
	mov rsi, 2
	push rbx
	push rsi
	jmp .1363
.1362:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1365
	mov rbx, _s499
	mov rsi, 2
	push rbx
	push rsi
	jmp .1363
.1365:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1367
	mov rbx, _s500
	mov rsi, 3
	push rbx
	push rsi
	jmp .1363
.1367:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1369
	mov rbx, _s501
	mov rsi, 3
	push rbx
	push rsi
	jmp .1363
.1369:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1371
	mov rbx, _s502
	mov rsi, 3
	push rbx
	push rsi
	jmp .1363
.1371:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1373
	mov rbx, _s503
	mov rsi, 3
	push rbx
	push rsi
	jmp .1363
.1373:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1375
	mov rbx, _s504
	mov rsi, 4
	push rbx
	push rsi
	jmp .1363
.1375:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1377
	mov rbx, _s505
	mov rsi, 4
	push rbx
	push rsi
	jmp .1363
.1377:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1379
	mov rbx, _s506
	mov rsi, 4
	push rbx
	push rsi
	jmp .1363
.1379:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1381
	mov rbx, _s507
	mov rsi, 4
	push rbx
	push rsi
	jmp .1363
.1381:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1383
	mov rbx, _s508
	mov rsi, 4
	push rbx
	push rsi
	jmp .1363
.1383:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1385
	mov rbx, _s509
	mov rsi, 4
	push rbx
	push rsi
	jmp .1363
.1385:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1387
	mov rbx, _s510
	mov rsi, 2
	push rbx
	push rsi
	jmp .1363
.1387:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1389
	mov rbx, _s511
	mov rsi, 2
	push rbx
	push rsi
	jmp .1363
.1389:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2857
	mov eax, 1
	mov edi, 2
	mov rsi, _s512
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2857:
	push rbx
	push rsi
.1390:
.1363:
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
	mov rbx, _s307
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
	jz .1391
	mov rbx, 0
	push rbx
	jmp .1392
.1391:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s308
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
	jz .1394
	mov rbx, 11
	push rbx
	jmp .1392
.1394:
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
	jz .1396
	mov rbx, 1
	push rbx
	jmp .1392
.1396:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s310
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
	jz .1398
	mov rbx, 2
	push rbx
	jmp .1392
.1398:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s143
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
	jz .1400
	mov rbx, 3
	push rbx
	jmp .1392
.1400:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s311
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
	jz .1402
	mov rbx, 4
	push rbx
	jmp .1392
.1402:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s312
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
	jz .1404
	mov rbx, 5
	push rbx
	jmp .1392
.1404:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s313
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
	jz .1406
	mov rbx, 6
	push rbx
	jmp .1392
.1406:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s314
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
	jz .1408
	mov rbx, 7
	push rbx
	jmp .1392
.1408:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s315
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
	jz .1410
	mov rbx, 8
	push rbx
	jmp .1392
.1410:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s316
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
	jz .1412
	mov rbx, 9
	push rbx
	jmp .1392
.1412:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s317
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
	jz .1414
	mov rbx, 10
	push rbx
	jmp .1392
.1414:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s318
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
	jz .1416
	mov rbx, 12
	push rbx
	jmp .1392
.1416:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s319
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
	jz .1418
	mov rbx, 13
	push rbx
	jmp .1392
.1418:
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1419:
.1392:
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
	jnz .2858
	mov eax, 1
	mov edi, 2
	mov rsi, _s432
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2858:
	mov rsi, [_grallocator_stack.len]
	mov rdi, 2048
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2859
	mov eax, 1
	mov edi, 2
	mov rsi, _s433
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2859:
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
	jnz .2860
	mov eax, 1
	mov edi, 2
	mov rsi, _s460
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2860:
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
.1427:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1428
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
	jz .1429
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1429:
	pop rbx
	inc rbx
	push rbx
	jmp .1427
.1428:
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
.1431:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1432
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
	jz .1433
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1433:
	pop rbx
	inc rbx
	push rbx
	jmp .1431
.1432:
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
.1435:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1436
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
	jnz .2861.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2861.1:
	mov r8, qword _grallocator_mask
	add rsi, r8
	mov r8, 0
	mov byte [rsi], r8b
	mov rsi, _s430
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
	jmp .1435
.1436:
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
.1437:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1438
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s430
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
	jmp .1437
.1438:
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
.1441:
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
	jz .1439
	add rsp, 8
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2862
	mov eax, 1
	mov edi, 2
	mov rsi, _s428
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2862:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_stack_deep_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1441
.1439:
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
	jnz .2863.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s488
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2863.1:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1442
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
	jnz .2864.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2864.1:
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
	jnz .2865.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2865.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s435
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
	mov rbx, _s436
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
	jz .1444
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1444:
.1442:
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
	jz .1446
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	jmp .1448
.1446:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s461
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
.1448:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2866.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2866.2:
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
	jnz .2867.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s488
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2867.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1449
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1449:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1451
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
	jz .1453
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1453:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2868.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2868.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s435
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
	mov rbx, _s436
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
	jmp .1455
.1451:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2869.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s488
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2869.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .2870
	mov eax, 1
	mov edi, 2
	mov rsi, _s489
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2870:
	mov rbx, _s461
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
.1455:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2871.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2871.3:
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
	jz .1456
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1458
.1456:
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
	jnz .2872.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2872.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s461
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
.1458:
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
	jnz .2873.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2873.5:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s435
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
	mov rbx, _s436
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
	jnz .2874.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2874.6:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s435
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
	mov rbx, _s436
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
	jnz .2875.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2875.7:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s435
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
	mov rbx, _s436
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
	jnz .2876
	mov eax, 1
	mov edi, 2
	mov rsi, _s328
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2876:
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
.1459:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1460
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
	jz .1461
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1461:
	pop rbx
	inc rbx
	push rbx
	jmp .1459
.1460:
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
	jz .1463
	mov rbx, [_gpos]
	mov rsi, _s306
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
.1463:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1465
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2877.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2877.12:
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
	jz .1467
.1469:
	mov rbx, 1
	test rbx, rbx
	jz .1470
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2878.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2878.13:
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
	jz .1471
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2879.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2879.14:
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
	jz .1473
	mov rbx, [_gpos]
	mov rsi, _s320
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
.1473:
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
	jz .1475
	mov rbx, [_gpos]
	mov rsi, _s321
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
.1475:
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
	jmp .1477
.1471:
	mov rbx, [_gpos]
	mov rsi, _s322
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
.1477:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1478
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
	jz .1480
	jmp .1470
.1480:
	jmp .1482
.1478:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s323
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
.1482:
	jmp .1469
.1470:
.1467:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2880.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2880.15:
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
	jz .1483
.1485:
	mov rbx, 1
	test rbx, rbx
	jz .1486
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1487
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
	jz .1489
	jmp .1486
.1489:
	jmp .1491
.1487:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s323
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
.1491:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2881.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2881.16:
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
	jz .1492
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2882.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2882.17:
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
	jz .1494
	mov rbx, [_gpos]
	mov rsi, _s320
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
.1494:
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
	jz .1496
	mov rbx, [_gpos]
	mov rsi, _s324
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
.1496:
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
	jmp .1498
.1492:
	mov rbx, [_gpos]
	mov rsi, _s322
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
.1498:
	jmp .1485
.1486:
.1483:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2883.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2883.18:
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
	jz .1499
	mov rbx, [_gpos]
	mov rsi, _s325
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
.1499:
.1465:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gpos]
	inc rsi
	mov rdi, 40
	add rbx, rdi
	mov dword [rbx], esi
.1501:
	mov rbx, 1
	test rbx, rbx
	jz .1502
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1503
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1505
	jmp .1502
.1505:
	jmp .1507
.1503:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s326
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
.1507:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2884.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2884.19:
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
	jz .1508
	mov rbx, [_gpos]
	mov rsi, _s327
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
.1508:
	jmp .1501
.1502:
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
	jz .1510
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1510:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1512:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1513
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2885.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2885.2:
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
	jz .1514
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1514:
	pop rbx
	inc rbx
	push rbx
	jmp .1512
.1513:
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
	jz .1516
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1516:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1518:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1519
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2886.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2886.1:
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
	jz .1520
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
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
	jz .1522
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1522:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, [_gvar_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1524:
	mov rbx, 1
	test rbx, rbx
	jz .1525
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2887.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2887.1:
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
	jz .1526
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1526:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .1528
	jmp .1525
.1528:
	pop rbx
	dec rbx
	push rbx
	jmp .1524
.1525:
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
.1537:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1538
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2888.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2888.1:
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
	jz .1539
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1539:
	pop rbx
	inc rbx
	push rbx
	jmp .1537
.1538:
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
	jnz .2889
	mov eax, 1
	mov edi, 2
	mov rsi, _s300
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2889:
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
	jnz .2890
	mov eax, 1
	mov edi, 2
	mov rsi, _s277
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2890:
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
	jz .1541
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2891.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2891.1:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2892.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2892.2:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1543
.1541:
	mov rbx, 0
	push rbx
.1543:
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
	jnz .2893.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2893.20:
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
	jz .1544
	mov rbx, [_gpos]
	mov rsi, _s183
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
	jnz .2894.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2894.2:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gvar_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s184
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
	jmp .1546
.1544:
	add rsp, 8
.1546:
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
	jz .1547
	mov rbx, [_gpos]
	mov rsi, _s186
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
	jnz .2895.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2895.3:
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
	jnz .2896.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2896.6:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s188
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
	jmp .1549
.1547:
	add rsp, 8
.1549:
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
	jz .1550
	mov rbx, [_gpos]
	mov rsi, _s190
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
	jnz .2897.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2897.2:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gcfunctions
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s188
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
	jmp .1552
.1550:
	add rsp, 8
.1552:
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
	jz .1553
	mov rbx, [_gpos]
	mov rsi, _s231
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
.1553:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2898.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2898.21:
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
	jz .1555
	mov rbx, [_gpos]
	mov rsi, _s232
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
.1555:
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
	jz .1557
	mov rbx, [_gpos]
	mov rsi, _s233
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
.1557:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1559
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1560
.1559:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1562
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
	jz .1563
	mov rbx, [_gpos]
	mov rsi, _s234
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
.1563:
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
	jnz .2899.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2899.22:
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
	jnz .2900.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2900.23:
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
	jz .1565
	mov rbx, [_gpos]
	mov rsi, _s235
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
.1565:
	jmp .1560
.1562:
	mov rbx, [_gpos]
	mov rsi, _s236
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
.1567:
.1560:
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
	jz .1568
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s237
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
.1568:
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
	jnz .2901.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2901.24:
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
	mov r11, _s238
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
	jz .1570
	mov rbx, [_gfunction_attributes]
	mov rsi, 2
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1572
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s239
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
.1572:
	mov rbx, [_gfunction_attributes]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1574
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, _s240
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
.1574:
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
	jz .1576
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s241
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
.1576:
	mov rbx, [_gfunctions.len]
	mov [_gmain_fn_idx], rbx
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .1578
.1570:
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
	jz .1579
	mov rbx, 1
	push rbx
	jmp .1581
.1579:
	mov rbx, 0
	push rbx
.1581:
.1578:
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
	jnz .2902
	mov eax, 1
	mov edi, 2
	mov rsi, _s243
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2902:
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
	jz .1582
	mov rbx, [_gpos]
	mov rsi, _s271
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
.1582:
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
	jz .1584
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2903.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2903.25:
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
	jnz .2904.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2904.26:
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
	jz .1586
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
.1586:
.1584:
	mov rbx, [_gpos]
	mov rsi, _s272
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
	jz .1588
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s273
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
	jnz .2905.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2905.27:
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
	mov rbx, _s64
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
	jmp .1590
.1588:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s274
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
.1590:
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
	jnz .2906.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2906.28:
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
	jz .1591
	mov rbx, [_gpos]
	mov rsi, _s181
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
.1591:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2907.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2907.29:
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
	jz .1593
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2908.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2908.3:
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
	jz .1595
	mov rbx, 1
	push rbx
	jmp .1597
.1595:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2909.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2909.3:
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
.1597:
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
	jz .1598
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1600
	mov rbx, [_gpos]
	mov rsi, _s203
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
.1600:
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
	jmp .1602
.1598:
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
	jz .1603
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1605
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
	jz .1607
	mov rbx, [_gpos]
	mov rsi, _s204
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
.1607:
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
	jz .1609
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
	jmp .1611
.1609:
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
.1611:
	jmp .1606
.1605:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1613
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
	jz .1614
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
	jmp .1616
.1614:
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
.1616:
	jmp .1606
.1613:
	mov rbx, 0
	test rbx, rbx
	jnz .2910
	mov eax, 1
	mov edi, 2
	mov rsi, _s205
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2910:
.1617:
.1606:
	jmp .1604
.1603:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1619
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1620
	mov rbx, [_gpos]
	mov rsi, _s206
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
	jmp .1621
.1620:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1623
	mov rbx, [_gpos]
	mov rsi, _s207
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
.1623:
.1621:
	jmp .1604
.1619:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1625
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1626
	mov rbx, [_gpos]
	mov rsi, _s208
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
	jmp .1627
.1626:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1629
	mov rbx, [_gpos]
	mov rsi, _s209
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
.1629:
.1627:
	jmp .1604
.1625:
	mov rbx, 0
	test rbx, rbx
	jnz .2911
	mov eax, 1
	mov edi, 2
	mov rsi, _s210
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2911:
.1630:
.1604:
	add rsp, 8
.1602:
	jmp .1631
.1593:
	mov rbx, [_gpos]
	mov rsi, _s211
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
.1631:
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
	jnz .2912.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2912.30:
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
	jz .1632
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1632:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2913.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2913.4:
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
	jz .1634
	mov rbx, [_gpos]
	mov rsi, _s192
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
.1634:
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
	jnz .2914.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2914.31:
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
	jz .1636
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_var_interaction
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1637
.1636:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1639
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2915.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2915.32:
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
	jmp .1637
.1639:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1641
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
	jz .1642
	mov rbx, [_gpos]
	mov rsi, _s212
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
.1642:
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
	jmp .1637
.1641:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1645
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
	jmp .1637
.1645:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1647
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
	jmp .1637
.1647:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1649
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
	jmp .1637
.1649:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1651
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
	jmp .1637
.1651:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1653
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
	jmp .1637
.1653:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1655
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
	jmp .1637
.1655:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1657
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
	jmp .1637
.1657:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1659
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
	jmp .1637
.1659:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1661
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
	jmp .1637
.1661:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1663
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
	jmp .1637
.1663:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1665
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
	jmp .1637
.1665:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1667
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
	jmp .1637
.1667:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1669
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
	jmp .1637
.1669:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1671
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
	jmp .1637
.1671:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1673
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
	jmp .1637
.1673:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1675
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
	jnz .2916.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2916.1:
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
	jnz .2917.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2917.2:
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
	jnz .2918.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2918.4:
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
	jnz .2919.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2919.5:
	jmp .1637
.1675:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1677
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
	jnz .2920.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s214
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2920.1:
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
	jnz .2921.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2921.6:
	jmp .1637
.1677:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1679
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
	jnz .2922.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s197
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2922.4:
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
	jnz .2923.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2923.7:
	jmp .1637
.1679:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1681
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
	jnz .2924.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s197
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.2924.5:
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
	jnz .2925.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2925.8:
	jmp .1637
.1681:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1683
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
	jnz .2926.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2926.3:
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
	jnz .2927.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2927.4:
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
	jnz .2928.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2928.5:
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
	jnz .2929.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2929.9:
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
	jnz .2930.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2930.10:
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
	jnz .2931.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2931.11:
	jmp .1637
.1683:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1685
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
	jnz .2932.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2932.6:
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
	jnz .2933.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2933.7:
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
	jnz .2934.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2934.8:
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
	jnz .2935.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2935.9:
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
	jnz .2936.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2936.12:
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
	jnz .2937.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2937.13:
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
	jnz .2938.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2938.14:
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
	jnz .2939.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s200
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2939.15:
	jmp .1637
.1685:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1687
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
	jmp .1637
.1687:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1689
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
	jmp .1637
.1689:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1691
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
	jmp .1637
.1691:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1693
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
	jmp .1637
.1693:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1695
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
	jmp .1637
.1695:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1697
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
	jmp .1637
.1697:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1699
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
	jmp .1637
.1699:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1701
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
	jmp .1637
.1701:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1703
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
	jmp .1637
.1703:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1705
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
	jmp .1637
.1705:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1707
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
	jmp .1637
.1707:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1708:
.1637:
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
.1709:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1710
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2940.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2940.2:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2941.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2941.4:
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
	jz .1712
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2942.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2942.3:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2943.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2943.5:
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
	jz .1714
	pop rbx
	mov rsi, rbx
	mov rdi, [_gpos]
	dec rdi
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1716
	pop rbx
	inc rbx
	mov rsi, _s285
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
	jmp .1718
.1716:
	add rsp, 8
.1718:
	jmp .1719
.1714:
	add rsp, 8
.1719:
	mov rbx, 1
	push rbx
	jmp .1720
.1712:
	mov rbx, 0
	push rbx
.1720:
	jmp .1721
.1710:
	mov rbx, 0
	push rbx
.1721:
	pop rbx
	test rbx, rbx
	jz .1722
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	jmp .1709
.1722:
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
	jz .1723
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
	jz .1725
	mov rbx, [_gpos]
	mov rsi, _s269
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
.1725:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1727
	mov rbx, 11
	push rbx
	jmp .1729
.1727:
	mov rbx, 12
	push rbx
.1729:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
.1723:
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
	jnz .2944.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2944.4:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2945.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2945.6:
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
	jz .1730
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
.1730:
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
	jz .1732
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
	jnz .2946.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2946.7:
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
	jz .1734
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
	jz .1736
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
	jnz .2947.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2947.8:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s288
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
	jmp .1737
.1736:
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
	jz .1739
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
	jnz .2948.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2948.9:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s289
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
.1739:
.1737:
.1734:
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
	jnz .2949
	mov eax, 1
	mov edi, 2
	mov rsi, _s290
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2949:
	jmp .1733
.1732:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1741
	mov rbx, qword [_rs_p]
	add rbx, 41
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .2950.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2950.5:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2951.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2951.7:
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
	jmp .1733
.1741:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1743
	jmp .1733
.1743:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1745
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1746
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
.1746:
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
	jz .1748
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s291
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
	jmp .1749
.1748:
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
	jz .1751
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s292
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
.1751:
.1749:
	jmp .1733
.1745:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1753
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
	jnz .2952.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2952.33:
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
	jz .1754
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
	jz .1756
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1758
.1756:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
.1758:
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
	jz .1759
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s293
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
.1759:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2953.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2953.34:
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
	jz .1761
	mov rbx, [_gpos]
	mov rsi, _s269
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
.1761:
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
	jmp .1755
.1754:
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
	jnz .2954.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2954.35:
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
	jz .1764
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
	jz .1765
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1767
.1765:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
.1767:
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
	jmp .1755
.1764:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1769
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
.1769:
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
	jz .1771
	mov rbx, [_gpos]
	mov rsi, _s294
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
.1771:
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
.1768:
.1755:
	jmp .1733
.1753:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1774
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
	jnz .2955.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2955.36:
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
	jz .1775
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
	jnz .2956.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2956.37:
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
	jz .1777
	mov rbx, 6
	push rbx
	jmp .1778
.1777:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1780
	mov rbx, 5
	push rbx
	jmp .1778
.1780:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .2957
	mov eax, 1
	mov edi, 2
	mov rsi, _s295
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.2957:
	push rbx
.1781:
.1778:
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
	jz .1782
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
.1782:
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
	jz .1784
	mov rbx, [_gpos]
	mov rsi, _s296
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
.1784:
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
	jnz .2958.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2958.38:
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
	jz .1786
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1788
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s293
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
.1788:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2959.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2959.39:
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
	jz .1790
	mov rbx, [_gpos]
	mov rsi, _s269
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
.1790:
.1786:
	jmp .1792
.1775:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1793
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
.1793:
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
	jz .1795
	mov rbx, [_gpos]
	mov rsi, _s294
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
.1795:
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
.1792:
	jmp .1733
.1774:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1798
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1799
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
.1799:
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
	jz .1801
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s297
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
	jmp .1802
.1801:
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
	jz .1804
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s298
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
.1804:
.1802:
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
	jz .1805
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
.1805:
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1733
.1798:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s299
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
.1807:
.1733:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1808
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
.1808:
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
	jz .1810
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2960.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2960.6:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2961.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2961.8:
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
	jz .1812
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
	jz .1814
	mov rbx, [_gpos]
	mov rsi, _s286
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
.1814:
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
	jmp .1813
.1812:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1817
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .2962.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2962.7:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2963.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2963.9:
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
	jz .1818
	mov rbx, [_gpos]
	mov rsi, _s287
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
.1818:
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
	jmp .1813
.1817:
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
.1820:
.1813:
	add rsp, 8
	jmp .1821
.1810:
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
.1821:
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
	jz .1822
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1822:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1824:
	mov rbx, 1
	test rbx, rbx
	jz .1825
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2964.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2964.10:
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
	jz .1826
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1826:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1828
	jmp .1825
.1828:
	pop rbx
	dec rbx
	push rbx
	jmp .1824
.1825:
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
	jnz .2965.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2965.40:
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
	jz .1830
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
	jz .1832
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
	jz .1834
	mov rbx, [_gpos]
	mov rsi, _s275
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
.1834:
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
	jz .1836
	mov rbx, [_gfunction_context]
	mov rsi, 30
	add rbx, rsi
	mov rsi, [_glabel_c]
	mov rdi, rsi
	inc rdi
	mov [_glabel_c], rdi
	mov dword [rbx], esi
.1836:
.1832:
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
	jz .1838
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2966.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2966.4:
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
	jz .1840
	mov rbx, [_gpos]
	mov rsi, _s276
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
.1840:
.1838:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2967.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2967.5:
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
	jz .1842
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
.1842:
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
	jnz .2968.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2968.6:
	mov rbx, 48
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1844
	mov rbx, [_gpos]
	mov rsi, _s196
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
.1844:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2969.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2969.7:
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
	jnz .2970.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2970.8:
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
.1830:
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
	jz .1846
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
	jnz .2971.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2971.3:
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
	jz .1848
	mov rbx, [_gpos]
	mov rsi, _s196
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
.1848:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2972.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2972.4:
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
	jnz .2973.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2973.5:
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
	jz .1850
	mov rbx, 0
	push rbx
	jmp .1852
.1850:
	mov rbx, 1
	push rbx
.1852:
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
.1846:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1853
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
	jz .1855
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2974.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2974.5:
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
	jz .1857
	mov rbx, 1
	push rbx
	jmp .1859
.1857:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2975.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2975.11:
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
.1859:
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
	jz .1860
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1862
	mov rbx, [_gpos]
	mov rsi, _s278
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
.1862:
.1860:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1864
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1866
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
	jmp .1868
.1866:
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
.1868:
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
	jmp .1865
.1864:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1870
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
	jz .1871
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
	jmp .1873
.1871:
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
.1873:
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
	jmp .1865
.1870:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1875
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
	jmp .1865
.1875:
	mov rbx, 0
	test rbx, rbx
	jnz .2976
	mov eax, 1
	mov edi, 2
	mov rsi, _s279
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2976:
.1876:
.1865:
	add rsp, 8
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.1855:
.1853:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1877
	mov rbx, [_gpos]
	mov rsi, _s280
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
.1877:
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
	jz .1879
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
	jz .1881
	mov rbx, [_gpos]
	mov rsi, _s179
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
.1881:
.1879:
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
.1883:
	mov rbx, 1
	test rbx, rbx
	jz .1884
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2977.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2977.12:
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
	jz .1885
	jmp .1884
	jmp .1886
.1885:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1888
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1888:
.1886:
	add rsp, 8
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1889
	jmp .1884
.1889:
	pop rbx
	dec rbx
	push rbx
	jmp .1883
.1884:
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
	jnz .2978.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2978.41:
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
	jz .1891
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
	jmp .1892
.1891:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1894
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1892
.1894:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1896
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_name
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1892
.1896:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1898
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
	jz .1899
	mov rbx, [_gpos]
	mov rsi, _s281
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
.1899:
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
	jz .1901
	mov rbx, [_gpos]
	mov rsi, _s282
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
.1901:
	jmp .1892
.1898:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1904
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1905
	mov rbx, [_gpos]
	mov rsi, _s283
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
.1905:
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
	jmp .1892
.1904:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1908
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1909
	mov rbx, [_gpos]
	mov rsi, _s284
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
.1909:
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
	jz .1911
	mov rbx, [_gpos]
	mov rsi, _s284
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
.1911:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2979.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2979.13:
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
	jmp .1892
.1908:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1914
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1915
	mov rbx, [_gpos]
	mov rsi, _s284
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
.1915:
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
	jz .1917
	mov rbx, [_gpos]
	mov rsi, _s284
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
.1917:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2980.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2980.14:
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
	jmp .1892
.1914:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1920
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_open_l_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1892
.1920:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1922
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_close_r_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1892
.1922:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1924
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1925
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
	jz .1927
	mov rbx, 0
	test rbx, rbx
	jnz .2981
	mov eax, 1
	mov edi, 2
	mov rsi, _s301
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2981:
.1927:
.1925:
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
	jz .1929
	mov rbx, [_gpos]
	mov rsi, _s302
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
	jmp .1930
.1929:
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
	jz .1932
	mov rbx, [_gpos]
	mov rsi, _s303
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
.1932:
.1930:
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
	jmp .1892
.1924:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1934
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
	jz .1935
	mov rbx, [_gpos]
	mov rsi, _s304
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
.1935:
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2982.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2982.42:
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
	jz .1937
	mov rbx, [_gpos]
	mov rsi, _s305
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
.1937:
	jmp .1892
.1934:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1940
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
	jnz .2983.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2983.43:
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
	jnz .2984.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2984.44:
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
	jmp .1892
.1940:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1942
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
	jmp .1892
.1942:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1944
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
	jmp .1892
.1944:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1946
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
	jmp .1892
.1946:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1948
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
	jmp .1892
.1948:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1950
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
	jmp .1892
.1950:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1952
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
	jmp .1892
.1952:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1954
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
	jmp .1892
.1954:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1956
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
	jmp .1892
.1956:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1958
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
	jmp .1892
.1958:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1960
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
	jmp .1892
.1960:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1962
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
	jmp .1892
.1962:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1964
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
	jmp .1892
.1964:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1966
	mov rbx, [_gpos]
	mov rsi, _s329
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
	jmp .1967
.1966:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1969
	mov rbx, [_gpos]
	mov rsi, _s330
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
.1969:
.1967:
	mov rbx, 0
	test rbx, rbx
	jnz .2985
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 79
	syscall
	mov rdi, 1
	jmp _exit
.2985:
.1965:
.1892:
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
.1970:
	mov rbx, 1
	test rbx, rbx
	jz .1971
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1972
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1974
	jmp .1971
.1974:
	jmp .1976
.1972:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s194
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
.1976:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2986.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2986.45:
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
	jz .1977
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2987.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2987.46:
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
	jz .1979
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2988.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2988.9:
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
	jz .1981
	mov rbx, [_gpos]
	mov rsi, _s195
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
.1981:
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
	jnz .2989.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2989.10:
	mov rsi, 48
	imul rdi, rsi
	mov rsi, qword _gfunctions
	add rdi, rsi
	mov edi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .1983
	mov rbx, [_gpos]
	mov rsi, _s196
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
.1983:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2990.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2990.11:
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
	jnz .2991.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2991.12:
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
	jmp .1985
.1979:
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
	jz .1986
	mov rbx, [_gpos]
	mov rsi, _s202
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
.1986:
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
.1985:
	jmp .1988
.1977:
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
	jz .1989
	mov rbx, [_gpos]
	mov rsi, _s215
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
.1989:
.1988:
	jmp .1970
.1971:
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
	jz .1991
	mov rbx, [_gpos]
	mov rsi, _s225
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
.1991:
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
	jz .1993
	mov rbx, [_gpos]
	mov rsi, _s226
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
.1993:
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
	jnz .2992.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 92
	syscall
	mov rdi, 1
	jmp _exit
.2992.53:
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
	jnz .2993
	mov eax, 1
	mov edi, 2
	mov rsi, _s227
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.2993:
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
	jnz .2994.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2994.47:
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
	jz .1995
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1997
	mov rbx, [_gpos]
	mov rsi, _s193
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
.1997:
	jmp .1996
.1995:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2000
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.eval_const_expr
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1996
.2000:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2002
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
	jz .2003
	mov rbx, [_gpos]
	mov rsi, _s212
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
.2003:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	push rbx
	jmp .1996
.2002:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2006
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2995.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2995.48:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	jmp .1996
.2006:
	mov rbx, [_gpos]
	mov rsi, _s228
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
.2007:
.1996:
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
	jnz .2996.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2996.49:
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
	jz .2008
	mov rbx, 1
	push rbx
	jmp .2009
.2008:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2011
	mov rbx, 2
	push rbx
	jmp .2009
.2011:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .2997
	mov eax, 1
	mov edi, 2
	mov rsi, _s180
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.2997:
	push rbx
.2012:
.2009:
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
	jz .2013
	mov rbx, [_gpos]
	mov rsi, _s181
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
.2013:
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
	jz .2015
	mov rbx, [_gpos]
	mov rsi, _s191
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
.2015:
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
	jz .2017
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2019
	mov rbx, [_gpos]
	mov rsi, _s229
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
.2019:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	push rsi
.2017:
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
	jz .2021
	mov rbx, [_gfunction_context]
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .2023
.2021:
	mov rbx, 0
	push rbx
.2023:
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
	jnz .2998.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2998.50:
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
	jz .2024
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
.2024:
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
	jz .2026
	mov rbx, [_gpos]
	mov rsi, _s245
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
.2026:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2999.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2999.51:
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
	jz .2028
	mov rbx, [_gpos]
	mov rsi, _s246
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
.2028:
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
	jnz .3000.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3000.52:
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
	jz .2030
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3001.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3001.53:
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
	jz .2032
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2033
.2032:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2035
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2033
.2035:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2037
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2033
.2037:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2039
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2033
.2039:
	mov rbx, [_gpos]
	mov rsi, _s250
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
.2040:
.2033:
	add rsp, 8
.2030:
	mov rbx, [_gpos]
	mov rsi, _s251
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
	jz .2041
	mov rbx, [_gpos]
	mov rsi, _s247
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
.2041:
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
	jz .2043
	mov rbx, [_gpos]
	mov rsi, _s248
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
.2043:
.2045:
	mov rbx, 1
	test rbx, rbx
	jz .2046
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2047
	mov rbx, 6
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2049
	jmp .2046
.2049:
	jmp .2051
.2047:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s249
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
.2051:
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
	jz .2052
	mov rbx, [_gpos]
	mov rsi, _s252
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
.2052:
	jmp .2045
.2046:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2054
	mov rbx, [_gpos]
	mov rsi, _s249
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
.2054:
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
	jnz .3002.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3002.54:
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
	jz .2056
	mov rbx, _s253
	mov rsi, 4
	mov rdi, qword [rsp + 0]
	mov r8, rsi
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
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
	sete bl
	test rbx, rbx
	jz .2058
	mov rbx, [_gpos]
	mov rsi, _s254
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
.2058:
	mov rbx, 0
	push rbx
	jmp .2060
.2056:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.one_cextern_arg
	mov [_rs_p], rsp
	mov rsp, rbp
.2060:
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
.2061:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2062
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2063
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3003.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3003.8:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3004.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3004.15:
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
	jz .2065
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2067:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2068
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3005.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3005.55:
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
	jz .2069
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2070
.2069:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2072
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2072:
.2070:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2073
	jmp .2068
.2073:
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2067
.2068:
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
	jz .2075
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3006.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3006.9:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3007.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3007.16:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s178
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
.2075:
.2065:
.2063:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3008.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3008.56:
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
	jz .2077
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
	jmp .2078
.2077:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2080
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
	jz .2081
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
	jmp .2083
.2081:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
.2083:
	jmp .2078
.2080:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2085
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
	jmp .2078
.2085:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2087
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
	jz .2088
	mov rbx, [_gpos]
	mov rsi, _s256
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
.2088:
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
	jz .2090
	mov rbx, [_gpos]
	mov rsi, _s257
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
.2090:
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
	jz .2092
	mov rbx, [_gpos]
	mov rsi, _s257
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
.2092:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .2094
	mov rbx, 12
	push rbx
	jmp .2096
.2094:
	mov rbx, 11
	push rbx
.2096:
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2078
.2087:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2098
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3009.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3009.57:
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
	jz .2100
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2101
.2100:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2103
	jmp .2101
.2103:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2105
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
	jz .2106
	mov rbx, [_gpos]
	mov rsi, _s259
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
.2106:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3010.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3010.58:
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
	jz .2108
	mov rbx, [_gpos]
	mov rsi, _s264
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
.2108:
	mov rbx, [_gfunction_attributes]
	pop rsi
	or rsi, rbx
	mov [_gfunction_attributes], rsi
	jmp .2101
.2105:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2111
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
	jz .2112
	mov rbx, [_gpos]
	mov rsi, _s265
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
.2112:
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
	jz .2114
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3011.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3011.59:
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
	jnz .3012.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3012.60:
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
	jz .2116
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3013.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3013.61:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.2116:
.2114:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2118
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
	jnz .3014.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3014.62:
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
	mov rbx, _s266
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
	jz .2120
	mov rbx, _s267
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
	mov rbx, _s268
	mov rsi, 1
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2120:
	mov rbx, 1
	mov rsi, _s29
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
.2118:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2122
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov [_gpos], rbx
.2122:
	jmp .2101
.2111:
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
	jnz .3015.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3015.10:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r9, [_gscope_context.len]
	xor r10, r10
	cmp rdi, r9
	setb r10b
	test r10, r10
	jnz .3016.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3016.17:
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
	jz .2125
	mov rbx, qword [_rs_p]
	add rbx, 64
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3017.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3017.11:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3018.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3018.18:
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
	jmp .2101
.2125:
	mov rbx, [_gpos]
	mov rsi, _s270
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
.2126:
.2101:
	add rsp, 8
	jmp .2127
.2098:
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
	jz .2128
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.2128:
.2127:
.2097:
.2078:
	add rsp, 8
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2061
.2062:
	mov rbx, qword [_rs_p]
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3019
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3019:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2130
	mov rbx, [_gtoken_stream.len]
	dec rbx
	mov rsi, _s333
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
.2130:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2132
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3020.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3020.12:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3021.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3021.19:
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
	jz .2134
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3022.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s176
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3022.13:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3023.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s177
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3023.20:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s178
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
	jmp .2136
.2134:
	mov rbx, 0
	test rbx, rbx
	jnz .3024
	mov eax, 1
	mov edi, 2
	mov rsi, _s334
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3024:
.2136:
.2132:
	mov rbx, [_gmain_fn_idx]
	mov rsi, 18446744073709551615
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2137
	mov rbx, _s335
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
.2137:
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
	jnz .3025
	mov eax, 1
	mov edi, 2
	mov rsi, _s389
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3025:
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
	jnz .3026.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3026.10:
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
.2139:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2140
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3027.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s388
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3027.1:
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
	jz .2141
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.2141:
	pop rbx
	inc rbx
	push rbx
	jmp .2139
.2140:
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
.2173:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3028.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3028.13:
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
	jz .2143
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
	jz .2145
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_ginlined_functions]
	inc rbx
	mov [_ginlined_functions], rbx
.2145:
	jmp .2147
.2143:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .3029
	mov eax, 1
	mov edi, 2
	mov rsi, _s387
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3029:
.2147:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.2148:
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
	jz .2149
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3030.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3030.11:
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
	jnz .3031.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3031.12:
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
	jz .2150
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3032.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3032.14:
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
	jz .2152
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2154:
	mov rbx, 1
	test rbx, rbx
	jz .2155
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
	jnz .3033.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3033.13:
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
	jnz .3034.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3034.14:
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
	jz .2156
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .2158
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2158:
	jmp .2157
.2156:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2161
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2162
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2162:
	jmp .2157
.2161:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2165
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3035.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3035.15:
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
	jmp .2155
	jmp .2157
.2165:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2167
	jmp .2155
.2167:
.2166:
.2157:
	jmp .2154
.2155:
	add rsp, 8
.2152:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3036.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3036.16:
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
	jz .2169
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3037.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3037.17:
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
	jnz .3038.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3038.15:
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
	jz .2171
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.2171:
.2169:
	jmp .2151
.2150:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2175
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
	jz .2176
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
.2176:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3039.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3039.18:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
	jmp .2151
.2175:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2179
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2180
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3040.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3040.19:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rbx, 39
	mov dword [rsi], ebx
	jmp .2182
.2180:
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
	jnz .3041.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3041.20:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.2182:
.2179:
.2151:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .2148
.2149:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3042.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3042.21:
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
	jnz .3043
	mov eax, 1
	mov edi, 2
	mov rsi, _s390
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3043:
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
	jz .2183
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
.2183:
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
	jz .2185
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
.2185:
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
	mov rbx, _s436
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
	jz .2191
	mov rbx, 2
	push rbx
	jmp .2192
.2191:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2194
	mov rbx, 1
	push rbx
	jmp .2192
.2194:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2196
	mov rbx, 12
	push rbx
	jmp .2192
.2196:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2198
	mov rbx, 11
	push rbx
	jmp .2192
.2198:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2200
	mov rbx, 3
	push rbx
	jmp .2192
.2200:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2202
	mov rbx, 4
	push rbx
	jmp .2192
.2202:
	mov rbx, 18446744073709551615
	mov rsi, 0
	test rsi, rsi
	jnz .3044
	mov eax, 1
	mov edi, 2
	mov rsi, _s563
	mov rdx, 74
	syscall
	mov rdi, 1
	jmp _exit
.3044:
	push rbx
.2203:
.2192:
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
	jnz .3045.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3045.6:
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
	jz .2204
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	dec rsi
	push rsi
.2206:
	mov rbx, 1
	test rbx, rbx
	jz .2207
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
	jz .2208
	jmp .2207
.2208:
	pop rbx
	dec rbx
	push rbx
	jmp .2206
.2207:
	add rsp, 8
.2204:
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
	jnz .3046.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s488
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3046.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jnz .3047
	mov eax, 1
	mov edi, 2
	mov rsi, _s564
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3047:
	mov rbx, _s419
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
	mov rbx, _s420
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
	mov rbx, _s459
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
	mov rbx, _s449
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
	mov rbx, _s450
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
	jz .2210
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
	jnz .3048.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3048.8:
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
	jz .2212
	mov rbx, _s565
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
	jmp .2213
.2212:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2215
	mov rbx, _s566
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
.2215:
.2213:
	add rsp, 8
.2210:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
gen_range:
	sub rsp, 184
	mov [_rs_p], rsp
	mov rsp, rbp
.2267:
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
.2216:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .2217
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3049.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3049.22:
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
	jz .2218
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3050.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3050.23:
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
	jnz .3051.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3051.16:
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
	jz .2220
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
	jz .2222
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
	jmp .2224
.2222:
	mov rbx, 1
	push rbx
.2224:
	jmp .2225
.2220:
	mov rbx, 1
	push rbx
.2225:
	jmp .2226
.2218:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 8
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .2227
	mov rbx, 1
	push rbx
	jmp .2229
.2227:
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
.2229:
.2226:
	pop rbx
	test rbx, rbx
	jz .2230
	mov rbx, 0
	push rbx
.2232:
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
	jz .2233
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
	jnz .3052.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s76
	mov rdx, 95
	syscall
	mov rdi, 1
	jmp _exit
.3052.7:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .2232
.2233:
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
	jz .2234
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3053.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3053.24:
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
	jnz .3054.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3054.63:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s437
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
	mov rbx, _s438
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
	jnz .3055.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s71
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.3055.6:
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
	mov rbx, _s268
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
.2234:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3056.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3056.25:
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
	jnz .3057.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3057.26:
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
	jz .2236
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
	jmp .2237
.2236:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2239
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3058
	mov eax, 1
	mov edi, 2
	mov rsi, _s439
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3058:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3059.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3059.17:
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
	jz .2240
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2242
.2240:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	and rdi, rsi
	test rdi, rdi
	jz .2243
	mov rbx, _s440
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
.2243:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s72
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
	jz .2245
	mov rbx, _s448
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
.2245:
	mov rbx, _s449
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
	mov rbx, _s450
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
	jz .2247
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
.2247:
	add rsp, 8
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2249
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3060.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s187
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3060.27:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s272
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
	jz .2251
	mov rbx, _s452
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
	jmp .2253
.2251:
	mov rbx, _s424
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
.2253:
	mov rbx, _s453
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
	mov rbx, _s454
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
	jnz .3061.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s388
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3061.2:
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
	mov rbx, _s455
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
	mov rbx, _s426
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
.2249:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2242:
	jmp .2237
.2239:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2255
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
	jz .2256
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2258
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
.2258:
	mov rbx, _s456
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
	jmp .2260
.2256:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3062.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3062.18:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, _s419
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
	mov rbx, _s420
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
	jz .2261
	mov rbx, _s457
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
.2261:
	mov rbx, _s458
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
.2260:
	jmp .2237
.2255:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2264
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3063.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s185
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3063.19:
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
	jz .2265
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
	jmp .2268
.2265:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s419
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
	mov rbx, _s420
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
	mov rbx, _s459
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
	mov rbx, _s449
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
	mov rbx, _s450
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
.2268:
	jmp .2237
.2264:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2270
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
	mov rbx, _s462
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
	mov rbx, _s436
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
	mov rbx, _s463
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
	jz .2271
	mov rbx, _s452
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
	jmp .2273
.2271:
	mov rbx, _s424
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
.2273:
	mov rbx, _s464
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
	mov rbx, _s455
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
	mov rbx, _s454
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
	jnz .3064.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s388
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3064.3:
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
	mov rbx, _s426
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
	mov rbx, _s466
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
	jnz .3065.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3065.4:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2270:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2275
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s467
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
	jmp .2237
.2275:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2277
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2237
.2277:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2279
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s468
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
	jz .2280
	mov rbx, _s469
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
	mov rbx, _s436
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
.2280:
	jmp .2237
.2279:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2283
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
	jnz .3066.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3066.9:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rbx, _s435
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
	mov rbx, _s470
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
.2284:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2285
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
	mov rdi, _s471
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
	mov rbx, _s472
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
	mov rbx, _s473
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
	jnz .3067.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3067.5:
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
	jmp .2284
.2285:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3068.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3068.6:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2283:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2287
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
	jnz .3069.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3069.10:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 144], rbx
	mov rbx, _s435
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
	mov rbx, _s470
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
.2288:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2289
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
	mov rbx, _s474
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
	mov rbx, _s472
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
	mov rbx, _s475
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
	jmp .2288
.2289:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3070.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3070.7:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2287:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2291
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s476
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
	jnz .3071.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3071.6:
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
	jmp .2237
.2291:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2293
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3072.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3072.7:
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
	jz .2294
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 152], rsi
	mov rbx, _s477
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
	jnz .3073.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3073.8:
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
	mov rbx, _s473
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
	jmp .2296
.2294:
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
	jnz .3074.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3074.11:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 152], rbx
	mov rbx, _s435
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
	mov rbx, _s478
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
	jnz .3075.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3075.9:
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
.2297:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2298
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
	mov rbx, _s471
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
	mov rbx, _s472
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
	mov rbx, _s473
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
	jnz .3076.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3076.8:
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
	jmp .2297
.2298:
	add rsp, 8
.2296:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3077.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3077.9:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2293:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2300
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3078.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3078.10:
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
	jnz .3079.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3079.12:
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
	jz .2301
	mov rbx, _s435
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
	mov rbx, _s479
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
	jnz .3080.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3080.11:
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
	mov rbx, _s475
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
	jnz .3081.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3081.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2303
.2301:
	mov rbx, _s435
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
	mov rbx, _s478
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
	jnz .3082.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3082.12:
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
.2304:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2305
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
	mov rbx, _s474
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
	mov rbx, _s472
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
	mov rbx, _s475
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
	jmp .2304
.2305:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3083.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3083.10:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
.2303:
	jmp .2237
.2300:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2307
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
	jnz .3084.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3084.14:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s435
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
	mov rbx, _s480
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
	mov rbx, _s435
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
	mov rbx, _s481
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
	mov rbx, _s475
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
	jnz .3085.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3085.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2307:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2309
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
	jnz .3086.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3086.16:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s435
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
	mov rbx, _s480
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
	mov rbx, _s469
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
	mov rbx, _s482
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
	jnz .3087.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3087.17:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2309:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2311
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
	jnz .3088.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3088.18:
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
	jnz .3089.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3089.19:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s435
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
	mov rbx, _s480
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
	mov rbx, _s435
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
	mov rbx, _s481
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
	mov rbx, _s475
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
	mov rbx, _s469
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
	mov rbx, _s482
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
	mov rbx, _s483
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
	mov rbx, _s481
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
	mov rbx, _s472
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
	mov rbx, _s484
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
	jnz .3090.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3090.20:
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
	jnz .3091.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3091.11:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2311:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2313
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
	mov rbx, _s462
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
	mov rbx, _s436
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
	mov rbx, _s485
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
	jnz .3092.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3092.12:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2313:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2315
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s456
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
	jmp .2237
.2315:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2317
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
	mov rdi, _s486
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
	jnz .3093.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3093.21:
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
	jnz .3094.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3094.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2317:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2319
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
	mov rdi, _s358
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
	jnz .3095.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3095.22:
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
	jnz .3096.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3096.14:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2319:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2321
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
	mov rdi, _s487
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
	jnz .3097.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3097.23:
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
	jnz .3098.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3098.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2321:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2323
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
	mov rbx, _s490
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
	mov rbx, _s491
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
	jnz .3099.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3099.24:
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
	jnz .3100.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3100.16:
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
	jnz .3101.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3101.17:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2323:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2325
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
	mov rbx, _s490
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
	mov rbx, _s491
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
	jnz .3102.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3102.25:
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
	jnz .3103.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3103.18:
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
	jnz .3104.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3104.19:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2325:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2327
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
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
	mov rbp, rsp
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
	jmp .2237
.2327:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2329
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s493
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
	jmp .2237
.2329:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2331
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
	jnz .3105.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3105.26:
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
	mov rbx, _s490
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
	mov rbx, _s491
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
	jnz .3106.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3106.20:
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
	jnz .3107.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3107.27:
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
	jnz .3108.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3108.28:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2331:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2333
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
	mov rbx, _s494
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
	mov rbx, _s495
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
	jnz .3109.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3109.29:
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
	jnz .3110.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3110.21:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2333:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2335
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
	mov rbx, _s496
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
	mov rbx, _s495
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
	jnz .3111.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3111.30:
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
	jnz .3112.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3112.22:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2335:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2337
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s462
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
	mov rbx, _s436
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
	mov rbx, _s497
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
	jnz .3113.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3113.31:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2337:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2339
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
	mov rdi, _s513
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
	jnz .3114.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3114.32:
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
	jnz .3115.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3115.23:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2339:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2341
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
	mov rdi, _s514
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
	jnz .3116.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3116.33:
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
	jnz .3117.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3117.24:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2341:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2343
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s515
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
	jnz .3118.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3118.34:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2343:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2345
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
	mov rdi, _s516
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
	jnz .3119.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3119.35:
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
	jnz .3120.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3120.25:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2237
.2345:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2347
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
	jnz .3121.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3121.36:
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
	jnz .3122.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3122.37:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2347:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2349
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
	jmp .2237
.2349:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2351
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2352
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
	mov rbx, _s517
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
	mov rbx, _s475
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
	jmp .2354
.2352:
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
.2354:
	jmp .2237
.2351:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2356
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2357
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
	mov rbx, _s517
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
	mov rbx, _s475
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
	jmp .2359
.2357:
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
.2359:
	jmp .2237
.2356:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2361
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
	jnz .3123.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3123.38:
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
	jnz .3124.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3124.39:
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
	jnz .3125.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3125.40:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2361:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2363
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
	jnz .3126.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3126.41:
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
	jnz .3127.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3127.42:
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
	jnz .3128.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3128.43:
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
	jnz .3129.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3129.44:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2363:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2365
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2366
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
	jnz .3130.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3130.26:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2368
.2366:
	mov rbx, _s518
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
.2368:
	jmp .2237
.2365:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2370
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
	jnz .3131.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3131.45:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s497
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
	jnz .3132.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3132.46:
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
	jnz .3133.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3133.27:
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
	jnz .3134.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3134.28:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2370:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2372
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
	jnz .3135.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3135.47:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s521
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
	jnz .3136.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3136.48:
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
	jnz .3137.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3137.29:
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
	jnz .3138.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3138.30:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2372:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2374
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
	jnz .3139.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3139.49:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s522
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
	jnz .3140.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3140.50:
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
	jnz .3141.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3141.31:
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
	jnz .3142.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3142.32:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2374:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2376
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
	jnz .3143.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3143.51:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s523
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
	jnz .3144.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3144.52:
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
	jnz .3145.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3145.33:
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
	jnz .3146.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3146.34:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2376:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2378
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
	jnz .3147.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3147.53:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s524
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
	jnz .3148.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3148.54:
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
	jnz .3149.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3149.35:
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
	jnz .3150.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3150.36:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2378:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2380
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
	jnz .3151.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3151.55:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s525
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
	jnz .3152.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3152.56:
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
	jnz .3153.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3153.37:
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
	jnz .3154.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3154.38:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2380:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2382
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
	jnz .3155.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3155.57:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s526
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
	jnz .3156.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3156.58:
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
	jnz .3157.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3157.39:
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
	jnz .3158.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3158.40:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2382:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2384
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
	jnz .3159.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3159.59:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s527
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
	jnz .3160.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3160.60:
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
	jnz .3161.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3161.41:
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
	jnz .3162.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3162.42:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2384:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2386
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
	jnz .3163.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3163.61:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s528
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
	jnz .3164.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3164.62:
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
	jnz .3165.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3165.43:
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
	jnz .3166.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3166.44:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2386:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2388
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
	jnz .3167.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3167.63:
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
	mov rbx, _s436
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
	mov rbx, _s520
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
	mov rbx, _s436
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
	mov rbx, _s529
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
	jnz .3168.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3168.64:
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
	jnz .3169.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3169.45:
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
	jnz .3170.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3170.46:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2388:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2390
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
	mov rbx, _s530
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
	mov rbx, _s473
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
	jnz .3171.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3171.47:
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
	jnz .3172.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3172.48:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2390:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2392
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
	mov rbx, _s531
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
	mov rbx, _s473
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
	jnz .3173.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3173.49:
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
	jnz .3174.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3174.50:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2392:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2394
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
	mov rbx, _s547
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
	mov rbx, _s473
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
	jnz .3175.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3175.51:
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
	jnz .3176.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3176.52:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2394:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2396
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
	mov rbx, _s471
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
	mov rbx, _s473
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
	jnz .3177.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3177.53:
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
	jnz .3178.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3178.54:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2396:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2398
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
	jnz .3179.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3179.65:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
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
	mov rbx, _s436
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
	mov rbx, _s435
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
	mov rbx, _s481
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
	mov rbx, _s475
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
	jnz .3180.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3180.66:
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
	jnz .3181.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3181.55:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2398:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2400
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
	jnz .3182.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3182.67:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
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
	mov rbx, _s436
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
	mov rbx, _s435
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
	mov rbx, _s481
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
	mov rbx, _s475
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
	jnz .3183.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3183.68:
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
	jnz .3184.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3184.56:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2237
.2400:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2402
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s435
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
	mov rbx, _s481
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
	mov rbx, _s475
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
	jnz .3185.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3185.69:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2402:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
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
	mov rbx, _s435
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
	mov rbx, _s481
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
	mov rbx, _s475
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
	jnz .3186.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3186.70:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2237
.2404:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2406
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_cextern_function
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2237
.2406:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2408
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_ginline_asms.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3187.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s567
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3187.1:
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
	jz .2409
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 32
	add rdi, rbx
	mov edi, [rdi]
	add rsi, rdi
	push rsi
.2411:
	mov rbx, 1
	test rbx, rbx
	jz .2412
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
	jz .2413
	jmp .2412
.2413:
	jmp .2411
.2412:
	add rsp, 8
.2409:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov esi, [rsi]
	push rsi
.2415:
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
	jz .2416
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
	jnz .3188.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s163
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3188.64:
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
	jmp .2415
.2416:
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
	jz .2417
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
.2419:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2420
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
	jnz .3189.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s434
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3189.71:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	inc rbx
	push rbx
	jmp .2419
.2420:
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
.2421:
	mov rbx, 1
	test rbx, rbx
	jz .2422
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
	jz .2423
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3190.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s429
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3190.57:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2425
.2423:
	add rsp, 8
.2425:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .2426
	jmp .2422
.2426:
	jmp .2421
.2422:
	add rsp, 8
.2417:
	jmp .2237
.2408:
	mov rbx, 0
	test rbx, rbx
	jnz .3191
	mov eax, 1
	mov edi, 2
	mov rsi, _s568
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3191:
.2428:
.2237:
	add rsp, 8
.2230:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2216
.2217:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2429
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
.2429:
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
	jz .2431
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.2431:
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
	jz .2433
	mov rbx, _s574
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
.2433:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2435
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
	jz .2437
	mov rbx, _s575
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
	jmp .2439
.2437:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2439:
.2435:
	mov rbx, 1
	push rbx
.2440:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .2441
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
	jz .2442
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2444
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2446
.2444:
	mov rbx, _s576
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
.2446:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .2447
.2442:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2448
	mov rbx, _s577
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
	jmp .2450
.2448:
	mov rbx, _s436
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
.2450:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2447:
	pop rbx
	inc rbx
	push rbx
	jmp .2440
.2441:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2451
	mov rbx, _s575
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.2451:
	mov rbx, _s578
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
	jz .2453
	mov rbx, _s398
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
	test rsi, rsi
	jz .2455
	mov rbx, _s401
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
	mov rbx, _s402
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
	mov rbx, _s403
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
	mov rbx, _s404
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
.2457:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2458
	mov rbx, _s405
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
	jnz .3192.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3192.7:
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
	jmp .2457
.2458:
	add rsp, 8
	jmp .2459
.2455:
	mov rbx, _s406
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
	jz .2460
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
	jmp .2462
.2460:
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
.2462:
	mov rbx, _s407
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
	mov rbx, _s408
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
.2459:
	jmp .2454
.2453:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2464
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2465
	mov rbx, _s409
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
	mov rbx, _s268
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
.2465:
	mov rbx, _s410
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
	mov rbx, _s411
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
	mov rbx, _s412
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
.2467:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2468
	mov rbx, _s413
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
	jnz .3193.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s189
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3193.8:
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
	jmp .2467
.2468:
	add rsp, 8
	jmp .2454
.2464:
	mov rbx, 0
	test rbx, rbx
	jnz .3194
	mov eax, 1
	mov edi, 2
	mov rsi, _s414
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3194:
.2469:
.2454:
	mov rbx, _s415
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
	jz .2470
	mov rbx, _s416
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
	jmp .2472
.2470:
	mov rbx, _s417
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
.2472:
	mov rbx, _s418
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
	mov rbx, _s419
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
	mov rbx, _s420
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
	mov rbx, _s421
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
	mov rbx, _s422
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
	mov rbx, _s423
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
	jz .2473
	mov rbx, _s424
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
	jmp .2475
.2473:
	mov rbx, _s425
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
.2475:
	mov rbx, _s426
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
	mov rbx, _s427
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
	jz .2476
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2478
	mov rbx, _s569
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
	jmp .2480
.2478:
	mov rbx, _s570
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
.2480:
	jmp .2477
.2476:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2482
	mov rbx, _s571
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
	jmp .2477
.2482:
	mov rbx, 0
	test rbx, rbx
	jnz .3195
	mov eax, 1
	mov edi, 2
	mov rsi, _s572
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3195:
.2483:
.2477:
	mov rbx, 0
	push rbx
.2484:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2485
	pop rbx
	mov rsi, rbx
	mov rdi, _s467
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
	mov rbx, _s573
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
	jnz .3196.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s388
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3196.4:
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
	jmp .2484
.2485:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2486
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2488
	mov rbx, _s579
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
	jmp .2490
.2488:
	mov rbx, _s580
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
.2490:
	jmp .2487
.2486:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2492
	mov rbx, _s581
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
	jmp .2487
.2492:
	mov rbx, 0
	test rbx, rbx
	jnz .3197
	mov eax, 1
	mov edi, 2
	mov rsi, _s582
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3197:
.2493:
.2487:
	mov rbx, 0
	push rbx
.2494:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2495
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3198.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s182
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3198.13:
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
	jz .2496
	mov rbx, _s447
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
	jz .2498
	mov rbx, _s583
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2499
.2498:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2501
	mov rbx, _s584
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2499
.2501:
	mov rbx, 0
	test rbx, rbx
	jnz .3199
	mov eax, 1
	mov edi, 2
	mov rsi, _s585
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3199:
.2502:
.2499:
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
.2496:
	pop rbx
	inc rbx
	push rbx
	jmp .2494
.2495:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2503
	mov rbx, _s586
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
	mov rbx, _s587
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
	mov rbx, _s588
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
	jmp .2504
.2503:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2506
	mov rbx, _s589
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
	jmp .2504
.2506:
	mov rbx, 0
	test rbx, rbx
	jnz .3200
	mov eax, 1
	mov edi, 2
	mov rsi, _s592
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3200:
.2507:
.2504:
	mov rbx, _s593
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
	jnz .3201.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s400
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3201.2:
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
	jmp .3202.1
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3203.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3203.1:
.3202.1:
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
	mov rsi, 67
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
	mov rbx, _s21
	mov rsi, 44
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
	mov rdi, _s46
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
	jz .2508
	mov rbx, 1
	mov [_gbackend_type], rbx
	jmp .2509
.2508:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s47
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
	jz .2511
	mov rbx, 2
	mov [_gbackend_type], rbx
	jmp .2509
.2511:
	mov rbx, _s48
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
.2512:
.2509:
	add rsp, 8
	add rsp, 8
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
	jz .2513
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s751
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
	mov rbx, _s61
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
.2513:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2515
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2515:
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
	jz .2517
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
	mov rdi, _s601
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
.2517:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2519
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s46
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
	mov rdi, _s602
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s603
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s46
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
	jmp .2520
.2519:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2522
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s47
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
	mov rdi, _s22
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
	mov rdi, _s753
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s754
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	test rdi, rdi
	jz .2523
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s755
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s36
	mov qword [rbx], rdi
	push rsi
.2523:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, 0
	mov qword [rsi], rbx
	mov rbx, _s47
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
.2522:
.2520:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2525
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 304]
	mov rdi, qword [rbx + 312]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2527
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s756
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
	mov rdi, _s22
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
	mov rbx, _s756
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
	jmp .2529
.2527:
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s757
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s758
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
	mov rbx, _s757
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
.2529:
.2525:
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
	jz .2530
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2532
	mov rbx, _s23
	mov rsi, 27
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
	jmp .2533
.2532:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2535
	mov rbx, _s30
	mov rsi, 28
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
	jmp .2533
.2535:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2537
	mov rbx, _s31
	mov rsi, 36
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
	jmp .2533
.2537:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2539
	mov rbx, _s32
	mov rsi, 19
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
.2539:
.2533:
.2530:
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
	jz .2540
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
.2540:
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
	jmp .3204.2
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3205.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3205.2:
.3204.2:
	mov [_gtarget_os], rbx
	mov rbx, 1
	push rbx
.2542:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2543
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
	mov rbx, _s22
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
	jz .2544
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2546
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2546:
	mov rbx, 1
	mov [_gargparse_mode], rbx
	jmp .2545
.2544:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s33
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
	jz .2549
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2550
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2550:
	mov rbx, 2
	mov [_gargparse_mode], rbx
	jmp .2545
.2549:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s34
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
	jz .2553
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2554
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2554:
	mov rbx, 3
	mov [_gargparse_mode], rbx
	jmp .2545
.2553:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s35
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
	jz .2557
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2558
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2558:
	mov rbx, 4
	mov [_gargparse_mode], rbx
	jmp .2545
.2557:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s36
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
	jz .2561
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2562
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2562:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2564
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2564:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2561:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s37
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
	jz .2567
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2568
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2568:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2570
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
.2570:
	mov rbx, qword _gverbose_mode
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2567:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s38
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
	jz .2573
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2574
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2574:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .2545
.2573:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s39
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
	jz .2577
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2578
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2578:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2580
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
.2580:
	mov rbx, qword _gobject_file
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2577:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s40
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s41
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
	pop rsi
	or rsi, rbx
	test rsi, rsi
	jz .2583
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
	jmp .2545
.2583:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s42
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
	jz .2585
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
	jz .2586
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2586:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2585:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s43
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
	jz .2589
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2590
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2590:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2592
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
.2592:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2589:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s44
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
	pop rbx
	test rbx, rbx
	jz .2595
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2596
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2596:
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2598
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
.2598:
	mov rbx, qword _gtrace_calls
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2595:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s45
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
	test rbx, rbx
	jz .2601
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2602
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2602:
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2604
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
.2604:
	mov rbx, qword _gstrip_assert
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2545
.2601:
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2607
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2609
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
.2609:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 43], rsi
	jmp .2608
.2607:
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2612
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2613
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
.2613:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 27], rsi
	jmp .2608
.2612:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2616
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
	jmp .2608
.2616:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2618
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
	jz .2619
	mov rbx, _s51
	mov rsi, 20
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
.2619:
	pop rbx
	mov [_gtarget_os], rbx
	jmp .2608
.2618:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2622
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
	jz .2623
	mov rbx, _s52
	mov rsi, 37
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
.2623:
	pop rbx
	mov [_geval.recurse_depth], rbx
	jmp .2608
.2622:
	mov rbx, 0
	test rbx, rbx
	jnz .3206
	mov eax, 1
	mov edi, 2
	mov rsi, _s53
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.3206:
.2625:
.2608:
	mov rbx, 0
	mov [_gargparse_mode], rbx
.2606:
.2545:
	pop rbx
	inc rbx
	push rbx
	jmp .2542
.2543:
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
	jz .2626
	mov rbx, _s54
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, _s29
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
.2626:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2628
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2630
	mov rbx, _s55
	mov rsi, 3
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
	jmp .2632
.2630:
	mov rbx, _s56
	mov rsi, 5
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
.2632:
	jmp .2633
.2628:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, _s57
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
	jz .2634
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.2634:
.2633:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2636
	mov rbx, qword _gobject_file
	mov rsi, 1
	mov byte [rbx], sil
.2636:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2638
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s60
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2638:
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
	mov rbx, _s158
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
	jz .2640
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2640:
	mov rbx, [_gtarget_os]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2642
	mov rbx, _s169
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
	jmp .2643
.2642:
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2645
	mov rbx, _s171
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
	jmp .2643
.2645:
	mov rbx, 0
	test rbx, rbx
	jnz .3207
	mov eax, 1
	mov edi, 2
	mov rsi, _s172
	mov rdx, 70
	syscall
	mov rdi, 1
	jmp _exit
.3207:
.2646:
.2643:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2647
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s173
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
	mov rbx, _s174
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2647:
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
	mov rbx, _s336
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
	jz .2649
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s337
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
	mov rbx, _s338
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2649:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2651
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2651:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2653
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s386
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2653:
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
	mov rbx, _s391
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
	jz .2655
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s392
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
	mov rbx, _s393
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
	mov rbx, _s59
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
	mov rbx, _s394
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2655:
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2657
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
	mov rdi, _s395
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
	jmp .2659
.2657:
	mov rbx, 1
	mov [_gfwrite_buffer.fd_loc], rbx
.2659:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2660
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s396
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
	mov rbx, _s397
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2660:
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
	mov rbx, _s594
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
	jz .2662
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2662:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2664
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s595
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
	jz .2666
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s596
	mov rsi, 14
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
	jmp .2668
.2666:
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s597
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2668:
.2664:
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
	jz .2669
	mov rbx, _s67
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
.2669:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2671
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s598
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2671:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2673
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s599
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2673:
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
	mov rbx, _s759
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
	jz .2675
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s760
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2675:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2677
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
.2679:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2680
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
	jmp .2679
.2680:
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
	jz .2681
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s59
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
	mov rbx, _s761
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
	mov rbx, _s61
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
		syscall
.2681:
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
	jz .2683
	mov rbx, _s762
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
.2683:
.2677:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
segment readable
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
_s20: db "	                        at runtime. Will not trace inlined calls.", 10, 0
_s21: db "	-h, --help              Show this message", 10, 10, 0
_s22: db "-o", 0
_s23: db "supply output file for `-o`", 0
_s24: db "[1m", 0
_s25: db "[31m", 0
_s26: db "FATAL: ", 0
_s27: db "[39m", 0
_s28: db "[22m", 0
_s29: db 10, 0
_s30: db "supply backend type for `-b`", 0
_s31: db "supply integer for `-comptime-depth`", 0
_s32: db "supply os for `-os`", 0
_s33: db "-b", 0
_s34: db "-comptime-depth", 0
_s35: db "-os", 0
_s36: db "-g", 0
_s37: db "-v", 0
_s38: db "-r", 0
_s39: db "-c", 0
_s40: db "--help", 0
_s41: db "-h", 0
_s42: db "-dump-ir", 0
_s43: db "-dump-tok", 0
_s44: db "-trace-calls", 0
_s45: db "-unsafe", 0
_s46: db "fasm", 0
_s47: db "nasm", 0
_s48: db "unknown backend", 0
_s49: db "linux", 0
_s50: db "freebsd", 0
_s51: db "unknown OS for `-os`", 0
_s52: db "invalid integer for `-comptime-depth`", 0
_s53: db 27, "[1m", 27, "[31mstas.stas:339:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s54: db "supply stas file", 0
_s55: db "a.o", 0
_s56: db "a.out", 0
_s57: db "-", 0
_s58: db "[33m", 0
_s59: db "LOG:  ", 0
_s60: db "scanning file `", 0
_s61: db "`", 10, 0
_s62: db "FATAL: Failed to get current time", 0
_s63: db "FATAL: Failed to open file '", 0
_s64: db "'", 10, 0
_s65: db "FATAL: Failed to stat the file descriptor", 10, 0
_s66: db "FATAL: Could not mmap file '", 0
_s67: db "FATAL: Failed to close file descriptor", 10, 0
_s68: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s69: db 27, "[1m", 27, "[31msrc/formatting.stas:48:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s70: db "unterminated string literal", 0
_s71: db 27, "[1m", 27, "[31msrc/formatting.stas:36:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s72: db ":", 0
_s73: db ": ", 0
_s74: db 27, "[1m", 27, "[31mlib/array.stas:164:24: ", 27, "[39m", 27, "[22massertation failed, 'Array64.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s75: db 27, "[1m", 27, "[31mlib/array.stas:127:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64<<: append exceeded bounds in Array64'", 10, 0
_s76: db 27, "[1m", 27, "[31mlib/array.stas:123:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64[]: index out of bounds'", 10, 0
_s77: db " | ", 0
_s78: db "    ", 0
_s79: db "       ", 0
_s80: db "escape character does not exist", 0
_s81: db "unhandled escape character", 0
_s82: db "including file `", 0
_s83: db 27, "[1m", 27, "[31msrc/tokens.stas:391:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s84: db "unterminated character literal", 0
_s85: db "empty character literal", 0
_s86: db "character literals must contain a single character", 0
_s87: db "file to include is not a string", 0
_s88: db "9223372036854775808", 0
_s89: db "18446744073709551615", 0
_s90: db "number overflows", 0
_s91: db 27, "[1m", 27, "[31mlib/string.stas:296:17: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s92: db "include", 0
_s93: db "{", 0
_s94: db "}", 0
_s95: db "->", 0
_s96: db "fn", 0
_s97: db "const", 0
_s98: db "assert", 0
_s99: db "argc", 0
_s100: db "argv", 0
_s101: db "ret", 0
_s102: db "if", 0
_s103: db "else", 0
_s104: db "elif", 0
_s105: db "while", 0
_s106: db "break", 0
_s107: db "continue", 0
_s108: db "+", 0
_s109: db "*", 0
_s110: db "/", 0
_s111: db "%", 0
_s112: db "++", 0
_s113: db "--", 0
_s114: db "%%", 0
_s115: db ">>", 0
_s116: db "<<", 0
_s117: db "&", 0
_s118: db "|", 0
_s119: db "~", 0
_s120: db "!", 0
_s121: db "^", 0
_s122: db "swap", 0
_s123: db "dup", 0
_s124: db "over", 0
_s125: db "over2", 0
_s126: db "rot", 0
_s127: db "rot4", 0
_s128: db "drop", 0
_s129: db "=", 0
_s130: db "!=", 0
_s131: db ">", 0
_s132: db "<", 0
_s133: db ">=", 0
_s134: db "<=", 0
_s135: db ">s", 0
_s136: db "<s", 0
_s137: db ">=s", 0
_s138: db "<=s", 0
_s139: db "w8", 0
_s140: db "w16", 0
_s141: db "w32", 0
_s142: db "w64", 0
_s143: db "r8", 0
_s144: db "r16", 0
_s145: db "r32", 0
_s146: db "r64", 0
_s147: db "reserve", 0
_s148: db "auto", 0
_s149: db "pop", 0
_s150: db "addr", 0
_s151: db "envp", 0
_s152: db "sizeof", 0
_s153: db "cextern", 0
_s154: db "asm", 0
_s155: db "comptime", 0
_s156: db "?def", 0
_s157: db "unexpected EOF when parsing file to include", 0
_s158: db "scanning took ", 0
_s159: db "[34m", 0
_s160: db "TIME: ", 0
_s161: db ".", 0
_s162: db " ms", 10, 0
_s163: db 27, "[1m", 27, "[31msrc/tokens.stas:376:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s164: db "name", 0
_s165: db "string_lit", 0
_s166: db "number_lit", 0
_s167: db 27, "[1m", 27, "[31msrc/tokens.stas:210:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s168: db " -> ", 0
_s169: db "TARGET_LINUX", 0
_s170: db 27, "[1m", 27, "[31msrc/parserdefs.stas:356:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s171: db "TARGET_FREEBSD", 0
_s172: db 27, "[1m", 27, "[31mstas.stas:388:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s173: db "parsing ", 0
_s174: db " tokens", 10, 0
_s175: db 27, "[1m", 27, "[31mlib/array.stas:397:24: ", 27, "[39m", 27, "[22massertation failed, 'Array32.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s176: db 27, "[1m", 27, "[31msrc/parserdefs.stas:399:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s177: db 27, "[1m", 27, "[31msrc/parserdefs.stas:365:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s178: db "unclosed conditional scope", 0
_s179: db "forbidden word in const function", 0
_s180: db 27, "[1m", 27, "[31msrc/parser.stas:1448:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s181: db "expected variable name", 0
_s182: db 27, "[1m", 27, "[31msrc/parserdefs.stas:330:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s183: db "name is already an existing variable", 0
_s184: db "variable declared here", 0
_s185: db 27, "[1m", 27, "[31msrc/parserdefs.stas:410:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s186: db "name is already an existing function", 0
_s187: db 27, "[1m", 27, "[31msrc/parserdefs.stas:294:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s188: db "function declared here", 0
_s189: db 27, "[1m", 27, "[31msrc/parserdefs.stas:648:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s190: db "name is already an existing C extern function", 0
_s191: db "unexpected EOF in variable declaration", 0
_s192: db "referenced variable is not a constant", 0
_s193: db "unknown constant name", 0
_s194: db "unexpected EOF when parsing constant expression", 0
_s195: db "const expressions can only call const functions", 0
_s196: db "not enough values to consume for function call", 0
_s197: db 27, "[1m", 27, "[31mlib/array.stas:356:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32[]: index out of bounds'", 10, 0
_s198: db "backtrace", 0
_s199: db "not enough values to consume for operation", 0
_s200: db 27, "[1m", 27, "[31mlib/array.stas:360:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32<<: append exceeded bounds in Array32'", 10, 0
_s201: db 27, "[1m", 27, "[31msrc/parserdefs.stas:308:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s202: db "unknown variable name or const function", 0
_s203: db "cannot get the size of a constant", 0
_s204: db "not enought values on the stack to pop into an automatic variable", 0
_s205: db 27, "[1m", 27, "[31msrc/parser.stas:411:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s206: db "cannot pop into a buffer", 0
_s207: db "cannot get address of a buffer, buffer is already an address", 0
_s208: db "cannot edit a constant", 0
_s209: db "cannot get address of a constant as it does not reside in memory", 0
_s210: db 27, "[1m", 27, "[31msrc/parser.stas:426:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s211: db "unknown variable", 0
_s212: db "expected constant name", 0
_s213: db 27, "[1m", 27, "[31mlib/array.stas:368:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.pop: array is empty'", 10, 0
_s214: db 27, "[1m", 27, "[31mlib/array.stas:364:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.top: array is empty'", 10, 0
_s215: db "unsupported token inside a constant expression", 0
_s216: db "comptime constant functions recursion depth limit reached", 0
_s217: db 27, "[1m", 27, "[31mlib/array.stas:135:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.pop: array is empty'", 10, 0
_s218: db 27, "[1m", 27, "[31mlib/array.stas:452:27: ", 27, "[39m", 27, "[22massertation failed, 'Array32.search_kv?: array length is not multiple of two'", 10, 0
_s219: db 27, "[1m", 27, "[31msrc/eval.stas:220:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s220: db 27, "[1m", 27, "[31msrc/eval.stas:229:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s221: db 27, "[1m", 27, "[31mlib/array.stas:111:16: ", 27, "[39m", 27, "[22massertation failed, '&Array64.top: array is empty'", 10, 0
_s222: db 27, "[1m", 27, "[31mlib/array.stas:131:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.top: array is empty'", 10, 0
_s223: db 27, "[1m", 27, "[31msrc/eval.stas:234:30: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s224: db 27, "[1m", 27, "[31msrc/eval.stas:240:19: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s225: db "constant expression must contain a value", 0
_s226: db "more than one unhandled value on left on the constant expression", 0
_s227: db 27, "[1m", 27, "[31msrc/parser.stas:1410:37: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s228: db "expected value, constant name, expression scope, or `?def`", 0
_s229: db "auto variables cannot have a size of zero", 0
_s230: db 27, "[1m", 27, "[31msrc/parserdefs.stas:344:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s231: db "function name must not be an intrinsic", 0
_s232: db "a function name cannot begin with an an underscore", 0
_s233: db "unexpected EOF in function declaration", 0
_s234: db "function return and argument counts must be numbers", 0
_s235: db "new scope must proceed after function header", 0
_s236: db "unexpected token in function declaration", 0
_s237: db "function attributes conflict", 0
_s238: db "main", 0
_s239: db "the main function is not inlinable", 0
_s240: db "the main function may not be const", 0
_s241: db "the main function must accept and return zero values", 0
_s242: db 27, "[1m", 27, "[31msrc/parserdefs.stas:432:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s243: db 27, "[1m", 27, "[31msrc/parser.stas:276:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s244: db 27, "[1m", 27, "[31msrc/parserdefs.stas:381:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s245: db "expected name of constant", 0
_s246: db "unexpected EOF when parsing const expression", 0
_s247: db "external C functions can only be used when compiling with `-c`", 0
_s248: db "expected name of external C function", 0
_s249: db "unexpected EOF when parsing external C function", 0
_s250: db "argument size specification must be 8, 16, 32 or 64", 0
_s251: db "unexpected keyword inside C function arguments, expected a number", 0
_s252: db "external C functions with more than 6 arguments are not supported", 0
_s253: db "void", 0
_s254: db "unexpected name, expected number or 'void'", 0
_s255: db 27, "[1m", 27, "[31msrc/parserdefs.stas:674:34: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s256: db "unexpected EOF in comptime declaration", 0
_s257: db "expected if block after comptime", 0
_s258: db 27, "[1m", 27, "[31msrc/parserdefs.stas:394:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s259: db "expected name as function attribute", 0
_s260: db "noinline", 0
_s261: db "inline", 0
_s262: db "noreturn", 0
_s263: db "noeval", 0
_s264: db "unknown function attribute", 0
_s265: db "a scope must follow a static assert to open an expression", 0
_s266: db "static assertation failed", 0
_s267: db ", '", 0
_s268: db "'", 0
_s269: db "a scope must come after an else statement", 0
_s270: db "unknown toplevel token", 0
_s271: db "no value on stack to consume for assertion", 0
_s272: db 0
_s273: db "assertation failed, '", 0
_s274: db "assertation failed", 10, 0
_s275: db "inline functions cannot call themselves", 0
_s276: db "const functions cannot call non const functions", 0
_s277: db 27, "[1m", 27, "[31msrc/parser.stas:148:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s278: db "const functions can only invoke constant variables", 0
_s279: db 27, "[1m", 27, "[31msrc/parser.stas:1113:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s280: db "unknown function or variable", 0
_s281: db "no value on stack to consume for if statement", 0
_s282: db "a scope must come after an if statement", 0
_s283: db "cannot declare a while loop inside an existing while loop header", 0
_s284: db "not inside while loop body", 0
_s285: db "unreachable code", 0
_s286: db "no value on stack to consume for while header", 0
_s287: db "no value on stack to consume for else if statement", 0
_s288: db "unhandled data on the stack", 0
_s289: db "not enough values on the stack on function return", 0
_s290: db 27, "[1m", 27, "[31msrc/parser.stas:711:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s291: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s292: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s293: db "unexpected EOF when parsing else statement", 0
_s294: db "the stack must remain the same with single branches", 0
_s295: db 27, "[1m", 27, "[31msrc/parser.stas:827:10: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s296: db "the stack must remain the same each with else if branch", 0
_s297: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s298: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s299: db "block expects body, an unhandled elif or while keyword may be causing this", 0
_s300: db 27, "[1m", 27, "[31msrc/parser.stas:139:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s301: db 27, "[1m", 27, "[31msrc/parser.stas:1237:7: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for const functions'", 10, 0
_s302: db "unhandled data on the stack for early return", 0
_s303: db "not enough values on the stack on early return", 0
_s304: db "a number must appear after the arrow assert operator", 0
_s305: db "a scope must come after the arrow assert operator", 0
_s306: db "unexpected EOF in assembly invocation", 0
_s307: db "rbx", 0
_s308: db "rcx", 0
_s309: db "rsi", 0
_s310: db "rdi", 0
_s311: db "r9", 0
_s312: db "r10", 0
_s313: db "r11", 0
_s314: db "r12", 0
_s315: db "r13", 0
_s316: db "r14", 0
_s317: db "r15", 0
_s318: db "rdx", 0
_s319: db "rax", 0
_s320: db "name is not a 64 bit register", 0
_s321: db "64 bit register is already on the argument list", 0
_s322: db "unexpected token, expected 64 bit register string", 0
_s323: db "unexpected EOF when parsing register list", 0
_s324: db "64 bit register is already on the return list", 0
_s325: db "new scope must proceed after assembly invocation", 0
_s326: db "unexpected EOF when parsing inline assembly body", 0
_s327: db "expected assembly string", 0
_s328: db 27, "[1m", 27, "[31msrc/asm.stas:35:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s329: db "cannot define a function inside a function", 0
_s330: db "must proceed after an if statement or chained `elif`", 0
_s331: db 27, "[1m", 27, "[31msrc/parser.stas:1330:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s332: db 27, "[1m", 27, "[31msrc/parser.stas:1761:28: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s333: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s334: db 27, "[1m", 27, "[31msrc/parser.stas:1771:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s335: db "no main function", 0
_s336: db "parsing took ", 0
_s337: db " functions, ", 0
_s338: db " labels", 10, 0
_s339: db "tok[]	data	inst", 10, 10, 0
_s340: db "	", 0
_s341: db "push_str", 0
_s342: db "push_num", 0
_s343: db "push_local_addr", 0
_s344: db "pop_local_stack_var", 0
_s345: db "push_local_stack_var", 0
_s346: db "push_global_var_name", 0
_s347: db "pop_global_stack_var", 0
_s348: db "push_global_stack_var", 0
_s349: db "push_argc", 0
_s350: db "push_argv", 0
_s351: db "do_cond_jmp", 0
_s352: db "do_jmp", 0
_s353: db "label", 0
_s354: db "fn_prelude", 0
_s355: db "fn_leave", 0
_s356: db "fn_call", 0
_s357: db "plus", 0
_s358: db "sub", 0
_s359: db "mul", 0
_s360: db "div", 0
_s361: db "mod", 0
_s362: db "inc", 0
_s363: db "dec", 0
_s364: db "divmod", 0
_s365: db "shr", 0
_s366: db "shl", 0
_s367: db "not", 0
_s368: db "b_and", 0
_s369: db "b_or", 0
_s370: db "b_not", 0
_s371: db "b_xor", 0
_s372: db "equ", 0
_s373: db "nequ", 0
_s374: db "gt", 0
_s375: db "lt", 0
_s376: db "gte", 0
_s377: db "lte", 0
_s378: db "s_gt", 0
_s379: db "s_lt", 0
_s380: db "s_gte", 0
_s381: db "s_lte", 0
_s382: db "push_envp", 0
_s383: db "c_fn_call", 0
_s384: db "asm_invoc", 0
_s385: db 27, "[1m", 27, "[31msrc/parserdefs.stas:273:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s386: db "dce pass started", 10, 0
_s387: db 27, "[1m", 27, "[31msrc/dce.stas:61:34: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s388: db 27, "[1m", 27, "[31msrc/dce.stas:21:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s389: db 27, "[1m", 27, "[31msrc/dce.stas:11:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s390: db 27, "[1m", 27, "[31msrc/dce.stas:142:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s391: db "dce took ", 0
_s392: db " used functions, of which ", 0
_s393: db " are eligible for inline", 10, 0
_s394: db " string literals", 10, 0
_s395: db ".tmp", 0
_s396: db "generating code from ", 0
_s397: db " IR instructions", 10, 0
_s398: db "use64", 0
_s399: db 27, "[1m", 27, "[31msrc/write.stas:16:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s400: db 27, "[1m", 27, "[31msrc/write.stas:9:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s401: db "format ELF64", 0
_s402: db "section '.text' executable align 16", 0
_s403: db "public _start", 0
_s404: db "public _exit", 0
_s405: db "extrn ", 0
_s406: db "format ELF64 executable ", 0
_s407: db "segment readable executable", 0
_s408: db "entry _start", 0
_s409: db "%line 0+0 '", 0
_s410: db "[BITS 64]", 0
_s411: db "[global _start]", 0
_s412: db "[section .text]", 0
_s413: db "[extern ", 0
_s414: db 27, "[1m", 27, "[31msrc/gen.stas:879:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s415: db "_start:", 0
_s416: db "	mov [_arg_p], rdi", 0
_s417: db "	mov [_arg_p], rsp", 0
_s418: db "	mov qword [_rs_p], _rs_top", 0
_s419: db "	mov rbp, rsp", 0
_s420: db "	mov rsp, [_rs_p]", 0
_s421: db "	call main", 0
_s422: db "	xor rdi, rdi", 0
_s423: db "_exit:", 0
_s424: db "	mov eax, 1", 0
_s425: db "	mov eax, 60", 0
_s426: db "	syscall", 0
_s427: db "	nop", 0
_s428: db 27, "[1m", 27, "[31msrc/x86.stas:323:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s429: db 27, "[1m", 27, "[31msrc/x86.stas:248:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s430: db "	push ", 0
_s431: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s432: db 27, "[1m", 27, "[31msrc/x86.stas:207:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s433: db 27, "[1m", 27, "[31msrc/x86.stas:208:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s434: db 27, "[1m", 27, "[31msrc/x86.stas:254:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s435: db "	mov ", 0
_s436: db ", ", 0
_s437: db "%line ", 0
_s438: db "+0 '", 0
_s439: db 27, "[1m", 27, "[31msrc/gen.stas:180:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s440: db "public ", 0
_s441: db "_a", 0
_s442: db "_b", 0
_s443: db "_c", 0
_s444: db "_d", 0
_s445: db "_e", 0
_s446: db "_f", 0
_s447: db "_g", 0
_s448: db "	sub rsp, ", 0
_s449: db "	mov [_rs_p], rsp", 0
_s450: db "	mov rsp, rbp", 0
_s451: db "[35m", 0
_s452: db "	mov eax, 4", 0
_s453: db "	mov rdi, 2", 0
_s454: db "	mov rdx, ", 0
_s455: db "	mov rsi, _s", 0
_s456: db "	jmp ", 0
_s457: db "	add rsp, ", 0
_s458: db "	ret", 0
_s459: db "	call ", 0
_s460: db 27, "[1m", 27, "[31msrc/x86.stas:215:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s461: db "	pop ", 0
_s462: db "	test ", 0
_s463: db "	jnz ", 0
_s464: db "	mov edi, 2", 0
_s465: db "	mov rdi, 1", 0
_s466: db "	jmp _exit", 0
_s467: db "_s", 0
_s468: db "qword [_rs_p]", 0
_s469: db "	add ", 0
_s470: db ", qword [_rs_p]", 0
_s471: db "	mov qword [", 0
_s472: db " + ", 0
_s473: db "], ", 0
_s474: db "qword [", 0
_s475: db "]", 0
_s476: db "qword _g", 0
_s477: db "	mov [_g", 0
_s478: db ", _g", 0
_s479: db ", [_g", 0
_s480: db ", qword [_arg_p]", 0
_s481: db ", [", 0
_s482: db ", 8", 0
_s483: db "	lea ", 0
_s484: db " * 8 + 8]", 0
_s485: db "	jz ", 0
_s486: db "add", 0
_s487: db "imul", 0
_s488: db 27, "[1m", 27, "[31msrc/x86.stas:260:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s489: db 27, "[1m", 27, "[31msrc/x86.stas:406:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s490: db "	xor rdx, rdx", 0
_s491: db "	div ", 0
_s492: db "	inc ", 0
_s493: db "	dec ", 0
_s494: db "	shr ", 0
_s495: db ", cl", 0
_s496: db "	shl ", 0
_s497: db "	sete ", 0
_s498: db "bl", 0
_s499: db "cl", 0
_s500: db "sil", 0
_s501: db "dil", 0
_s502: db "r8b", 0
_s503: db "r9b", 0
_s504: db "r10b", 0
_s505: db "r11b", 0
_s506: db "r12b", 0
_s507: db "r13b", 0
_s508: db "r14b", 0
_s509: db "r15b", 0
_s510: db "dl", 0
_s511: db "al", 0
_s512: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s513: db "and", 0
_s514: db "or", 0
_s515: db "	not ", 0
_s516: db "xor", 0
_s517: db "qword [rsp + ", 0
_s518: db "	add rsp, 8", 0
_s519: db "	xor ", 0
_s520: db "	cmp ", 0
_s521: db "	setne ", 0
_s522: db "	seta ", 0
_s523: db "	setb ", 0
_s524: db "	setae ", 0
_s525: db "	setbe ", 0
_s526: db "	setg ", 0
_s527: db "	setl ", 0
_s528: db "	setge ", 0
_s529: db "	setle ", 0
_s530: db "	mov byte [", 0
_s531: db "	mov word [", 0
_s532: db "bx", 0
_s533: db "cx", 0
_s534: db "si", 0
_s535: db "di", 0
_s536: db "r8w", 0
_s537: db "r9w", 0
_s538: db "r10w", 0
_s539: db "r11w", 0
_s540: db "r12w", 0
_s541: db "r13w", 0
_s542: db "r14w", 0
_s543: db "r15w", 0
_s544: db "dx", 0
_s545: db "ax", 0
_s546: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s547: db "	mov dword [", 0
_s548: db "ebx", 0
_s549: db "ecx", 0
_s550: db "esi", 0
_s551: db "edi", 0
_s552: db "r8d", 0
_s553: db "r9d", 0
_s554: db "r10d", 0
_s555: db "r11d", 0
_s556: db "r12d", 0
_s557: db "r13d", 0
_s558: db "r14d", 0
_s559: db "r15d", 0
_s560: db "edx", 0
_s561: db "eax", 0
_s562: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s563: db 27, "[1m", 27, "[31msrc/gen.stas:68:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s564: db 27, "[1m", 27, "[31msrc/gen.stas:101:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s565: db "	and rax, 0xFF", 0
_s566: db "	and rax, 0xFFFF", 0
_s567: db 27, "[1m", 27, "[31msrc/asm.stas:23:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s568: db 27, "[1m", 27, "[31msrc/gen.stas:757:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s569: db "section '.rodata' align 8", 0
_s570: db "segment readable", 0
_s571: db "[section .rodata]", 0
_s572: db 27, "[1m", 27, "[31msrc/gen.stas:917:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s573: db ": db ", 0
_s574: db "0", 10, 0
_s575: db 34, 0
_s576: db ", ", 34, 0
_s577: db 34, ", ", 0
_s578: db ", 0", 10, 0
_s579: db "section '.bss' writeable align 8", 0
_s580: db "segment readable writeable", 0
_s581: db "[section .bss]", 0
_s582: db 27, "[1m", 27, "[31msrc/gen.stas:941:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s583: db ": rb ", 0
_s584: db ": resb ", 0
_s585: db 27, "[1m", 27, "[31msrc/gen.stas:956:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s586: db "_arg_p: rq 1", 0
_s587: db "_rs_p: rq 1", 0
_s588: db "_rs: rb ", 0
_s589: db "_arg_p: resq 1", 0
_s590: db "_rs_p: resq 1", 0
_s591: db "_rs: resb ", 0
_s592: db 27, "[1m", 27, "[31msrc/gen.stas:973:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s593: db "_rs_top:", 0
_s594: db "gen took ", 0
_s595: db "generated ", 0
_s596: db " KiBs of code", 10, 0
_s597: db " bytes of code", 10, 0
_s598: db "wrote code to `", 0
_s599: db "executing assembler backend `", 0
_s600: db 27, "[1m", 27, "[31mstas.stas:21:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s601: db ".o", 0
_s602: db "-m", 0
_s603: db "1048576", 0
_s604: db "PATH", 0
_s605: db 27, "[1m", 27, "[31mlib/os.stas:384:16: ", 27, "[39m", 27, "[22massertation failed, '", 34, "PATH", 34, " enviroment variable not found'", 10, 0
_s606: db 27, "[1m", 27, "[31mlib/salloc.stas:7:40: ", 27, "[39m", 27, "[22massertation failed, 'salloc.guard_size: static buffer length exceeded'", 10, 0
_s607: db 27, "[1m", 27, "[31mlib/salloc.stas:18:26: ", 27, "[39m", 27, "[22massertation failed, 'salloc.rewind: cannot rewind allocation stack to higher length'", 10, 0
_s608: db 27, "[1m", 27, "[31mlib/os.stas:492:12: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `fork` invocation failed'", 10, 0
_s609: db "/dev/null", 0
_s610: db 27, "[1m", 27, "[31mlib/os.stas:498:57: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: opening `/dev/null` failed'", 10, 0
_s611: db 27, "[1m", 27, "[31mlib/os.stas:502:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stdout with `dup2`'", 10, 0
_s612: db 27, "[1m", 27, "[31mlib/os.stas:505:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stderr with `dup2`'", 10, 0
_s613: db "EPERM: Operation not permitted", 10, 0
_s614: db "ENOENT: No such file or directory", 10, 0
_s615: db "ESRCH: No such process", 10, 0
_s616: db "EINTR: Interrupted system call", 10, 0
_s617: db "EIO: Input/output error", 10, 0
_s618: db "ENXIO: No such device or address", 10, 0
_s619: db "E2BIG: Argument list too long", 10, 0
_s620: db "ENOEXEC: Exec format error", 10, 0
_s621: db "EBADF: Bad file descriptor", 10, 0
_s622: db "ECHILD: No child processes", 10, 0
_s623: db "EAGAIN: Resource temporarily unavailable", 10, 0
_s624: db "ENOMEM: Cannot allocate memory", 10, 0
_s625: db "EACCES: Permission denied", 10, 0
_s626: db "EFAULT: Bad address", 10, 0
_s627: db "ENOTBLK: Block device required", 10, 0
_s628: db "EBUSY: Device or resource busy", 10, 0
_s629: db "EEXIST: File exists", 10, 0
_s630: db "EXDEV: Invalid cross-device link", 10, 0
_s631: db "ENODEV: No such device", 10, 0
_s632: db "ENOTDIR: Not a directory", 10, 0
_s633: db "EISDIR: Is a directory", 10, 0
_s634: db "EINVAL: Invalid argument", 10, 0
_s635: db "ENFILE: Too many open files in system", 10, 0
_s636: db "EMFILE: Too many open files", 10, 0
_s637: db "ENOTTY: Inappropriate ioctl for device", 10, 0
_s638: db "ETXTBSY: Text file busy", 10, 0
_s639: db "EFBIG: File too large", 10, 0
_s640: db "ENOSPC: No space left on device", 10, 0
_s641: db "ESPIPE: Illegal seek", 10, 0
_s642: db "EROFS: Read-only file system", 10, 0
_s643: db "EMLINK: Too many links", 10, 0
_s644: db "EPIPE: Broken pipe", 10, 0
_s645: db "EDOM: Numerical argument out of domain", 10, 0
_s646: db "ERANGE: Numerical result out of range", 10, 0
_s647: db "EDEADLK: Resource deadlock avoided", 10, 0
_s648: db "ENAMETOOLONG: File name too long", 10, 0
_s649: db "ENOLCK: No locks available", 10, 0
_s650: db "ENOSYS: Function not implemented", 10, 0
_s651: db "ENOTEMPTY: Directory not empty", 10, 0
_s652: db "ELOOP: Too many levels of symbolic links", 10, 0
_s653: db "EWOULDBLOCK: Resource temporarily unavailable", 10, 0
_s654: db "ENOMSG: No message of desired type", 10, 0
_s655: db "EIDRM: Identifier removed", 10, 0
_s656: db "EREMOTE: Object is remote", 10, 0
_s657: db "ENOLINK: Link has been severed", 10, 0
_s658: db "EPROTO: Protocol error", 10, 0
_s659: db "EMULTIHOP: Multihop attempted", 10, 0
_s660: db "EBADMSG: Bad message", 10, 0
_s661: db "EOVERFLOW: Value too large for defined data type", 10, 0
_s662: db "EILSEQ: Invalid or incomplete multibyte or wide character", 10, 0
_s663: db "EUSERS: Too many users", 10, 0
_s664: db "ENOTSOCK: Socket operation on non-socket", 10, 0
_s665: db "EDESTADDRREQ: Destination address required", 10, 0
_s666: db "EMSGSIZE: Message too long", 10, 0
_s667: db "EPROTOTYPE: Protocol wrong type for socket", 10, 0
_s668: db "ENOPROTOOPT: Protocol not available", 10, 0
_s669: db "EPROTONOSUPPORT: Protocol not supported", 10, 0
_s670: db "ESOCKTNOSUPPORT: Socket type not supported", 10, 0
_s671: db "EOPNOTSUPP: Operation not supported", 10, 0
_s672: db "EPFNOSUPPORT: Protocol family not supported", 10, 0
_s673: db "EAFNOSUPPORT: Address family not supported by protocol", 10, 0
_s674: db "EADDRINUSE: Address already in use", 10, 0
_s675: db "EADDRNOTAVAIL: Cannot assign requested address", 10, 0
_s676: db "ENETDOWN: Network is down", 10, 0
_s677: db "ENETUNREACH: Network is unreachable", 10, 0
_s678: db "ENETRESET: Network dropped connection on reset", 10, 0
_s679: db "ECONNABORTED: Software caused connection abort", 10, 0
_s680: db "ECONNRESET: Connection reset by peer", 10, 0
_s681: db "ENOBUFS: No buffer space available", 10, 0
_s682: db "EISCONN: Transport endpoint is already connected", 10, 0
_s683: db "ENOTCONN: Transport endpoint is not connected", 10, 0
_s684: db "ESHUTDOWN: Cannot send after transport endpoint shutdown", 10, 0
_s685: db "ETOOMANYREFS: Too many references: cannot splice", 10, 0
_s686: db "ETIMEDOUT: Connection timed out", 10, 0
_s687: db "ECONNREFUSED: Connection refused", 10, 0
_s688: db "EHOSTDOWN: Host is down", 10, 0
_s689: db "EHOSTUNREACH: No route to host", 10, 0
_s690: db "EALREADY: Operation already in progress", 10, 0
_s691: db "EINPROGRESS: Operation now in progress", 10, 0
_s692: db "ESTALE: Stale file handle", 10, 0
_s693: db "EDQUOT: Disk quota exceeded", 10, 0
_s694: db "ECANCELED: Operation canceled", 10, 0
_s695: db "EOWNERDEAD: Owner died", 10, 0
_s696: db "ENOTRECOVERABLE: State not recoverable", 10, 0
_s697: db "ENOTSUP: Operation not supported", 10, 0
_s698: db "ECHRNG: Channel number out of range", 10, 0
_s699: db "EL2NSYNC: Level 2 not synchronized", 10, 0
_s700: db "EL3HLT: Level 3 halted", 10, 0
_s701: db "EL3RST: Level 3 reset", 10, 0
_s702: db "ELNRNG: Link number out of range", 10, 0
_s703: db "EUNATCH: Protocol driver not attached", 10, 0
_s704: db "ENOCSI: No CSI structure available", 10, 0
_s705: db "EL2HLT: Level 2 halted", 10, 0
_s706: db "EBADE: Invalid exchange", 10, 0
_s707: db "EBADR: Invalid request descriptor", 10, 0
_s708: db "EXFULL: Exchange full", 10, 0
_s709: db "ENOANO: No anode", 10, 0
_s710: db "EBADRQC: Invalid request code", 10, 0
_s711: db "EBADSLT: Invalid slot", 10, 0
_s712: db "EDEADLOCK: Resource deadlock avoided", 10, 0
_s713: db "EBFONT: Bad font file format", 10, 0
_s714: db "ENOSTR: Device not a stream", 10, 0
_s715: db "ENODATA: No data available", 10, 0
_s716: db "ETIME: Timer expired", 10, 0
_s717: db "ENOSR: Out of streams resources", 10, 0
_s718: db "ENONET: Machine is not on the network", 10, 0
_s719: db "ENOPKG: Package not installed", 10, 0
_s720: db "EADV: Advertise error", 10, 0
_s721: db "ESRMNT: Srmount error", 10, 0
_s722: db "ECOMM: Communication error on send", 10, 0
_s723: db "EDOTDOT: RFS specific error", 10, 0
_s724: db "ENOTUNIQ: Name not unique on network", 10, 0
_s725: db "EBADFD: File descriptor in bad state", 10, 0
_s726: db "EREMCHG: Remote address changed", 10, 0
_s727: db "ELIBACC: Can not access a needed shared library", 10, 0
_s728: db "ELIBBAD: Accessing a corrupted shared library", 10, 0
_s729: db "ELIBSCN: ib section in a.out corrupted", 10, 0
_s730: db "ELIBMAX: Attempting to link in too many shared libraries", 10, 0
_s731: db "ELIBEXEC: Cannot exec a shared library directly", 10, 0
_s732: db "ERESTART: Interrupted system call should be restarted", 10, 0
_s733: db "ESTRPIPE: Streams pipe error", 10, 0
_s734: db "EUCLEAN: Structure needs cleaning", 10, 0
_s735: db "ENOTNAM: Not a XENIX named type file", 10, 0
_s736: db "ENAVAIL: No XENIX semaphores available", 10, 0
_s737: db "EISNAM: Is a named type file", 10, 0
_s738: db "EREMOTEIO: Remote I/O error", 10, 0
_s739: db "ENOMEDIUM: No medium found", 10, 0
_s740: db "EMEDIUMTYPE: Wrong medium type", 10, 0
_s741: db "ENOKEY: Required key not available", 10, 0
_s742: db "EKEYEXPIRED: Key has expired", 10, 0
_s743: db "EKEYREVOKED: Key has been revoked", 10, 0
_s744: db "EKEYREJECTED: Key was rejected by service", 10, 0
_s745: db "ERFKILL: Operation not possible due to RF-kill", 10, 0
_s746: db "EHWPOISON: Memory page has hardware error", 10, 0
_s747: db "ERRNO: Unknown", 10, 0
_s748: db 27, "[1m", 27, "[31mlib/os.stas:515:10: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `execve` invocation failed'", 10, 0
_s749: db 27, "[1m", 27, "[31mlib/os.stas:522:16: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `wait4` invocation failed'", 10, 0
_s750: db "execute_child?: child process was terminated by signal ", 0
_s751: db "Failed to execute process `", 0
_s752: db "`", 0
_s753: db "-O0", 0
_s754: db "-felf64", 0
_s755: db "-Fdwarf", 0
_s756: db "ld", 0
_s757: db "chmod", 0
_s758: db "+x", 0
_s759: db "backend took ", 0
_s760: db "created binary `", 0
_s761: db "execve binary `", 0
_s762: db "FATAL: Could not execve file", 10, 0
segment readable writeable
_galloc_buffer.len: rb 8
_galloc_buffer.data: rb 16384
_grand.state: rb 8
_grand.buffer: rb 8
_grand.bytes_left: rb 8
_gstrip_assert: rb 1
_gobject_file: rb 1
_gdebug_symbols: rb 1
_gverbose_mode: rb 1
_gtrace_calls: rb 1
_gbackend_type: rb 8
_gtarget_os: rb 8
_gstring_buffer.len: rb 8
_gstring_buffer: rb 8388608
_gopened_files.len: rb 8
_gopened_files: rb 3072
_gtoken_stream: rb 1835008
_gtoken_stream.len: rb 8
_gtimespec_start: rb 16
_gfunctions.len: rb 8
_gfunctions: rb 98304
_gir_stream.len: rb 8
_gir_stream: rb 524288
_gvar_context.len: rb 8
_gvar_context: rb 24576
_gscope_context.len: rb 8
_gscope_context: rb 16384
_gpos: rb 8
_gcfunctions.len: rb 8
_gcfunctions: rb 7168
_geval.recurse_depth: rb 8
_gfwrite_buffer.len: rb 8
_gfwrite_buffer: rb 10240
_gfwrite_buffer.fd_loc: rb 8
_grallocator_mask: rb 14
_grallocator_stack.len: rb 8
_grallocator_stack: rb 2048
_ginline_asms.len: rb 8
_ginline_asms: rb 12288
_glabel_c: rb 8
_gmain_fn_idx: rb 8
_gfunction_context: rb 8
_gfunction_context_idx: rb 8
_gfunction_attributes: rb 8
_gsp_array_data_const: rb 4096
_gconst_stack_data: rb 8192
_gsp_array_data: rb 4096
_gdce.max_stack_frame: rb 8
_gslits.len: rb 8
_gslits: rb 8192
_gused_functions: rb 8
_ginlined_functions: rb 8
_gargparse_mode: rb 8
_arg_p: rq 1
_rs_p: rq 1
_rs: rb 65536
_rs_top:
