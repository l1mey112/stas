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
	jz .20
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
.20:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 28], rbx
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
	jmp .22
.23:
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
	jz .24
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
.24:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 44], rbx
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
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
	jmp .26
.27:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .28
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	sub rsi, rdi
	push rsi
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
	jmp .30
.31:
	add rsp, 8
.28:
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
	jz .32
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
.32:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 44], rbx
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
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
	jmp .34
.35:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 44]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .36
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 44]
	sub rsi, rdi
	push rsi
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
	jmp .38
.39:
	add rsp, 8
.36:
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
memeq:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.52:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .53
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
	jz .54
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.54:
	pop rbx
	pop rsi
	pop rdi
	inc rdi
	push rbx
	push rsi
	push rdi
	jmp .52
.53:
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
.59:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .60
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
	jmp .59
.60:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memset:
	mov [_rs_p], rsp
	mov rsp, rbp
.61:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .62
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
	jmp .61
.62:
	add rsp, 8
	add rsp, 8
	add rsp, 8
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
	jz .65
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.65:
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
	jz .67
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.67:
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
	jz .69
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.69:
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
	jz .71
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.71:
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
	jz .77
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
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
	jnz .2787
	mov eax, 1
	mov edi, 2
	mov rsi, _s224
	mov rdx, 166
	syscall
	mov rdi, 1
	jmp _exit
.2787:
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
	jz .87
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.87:
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
	jz .89
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.89:
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
	jz .91
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.91:
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
	jz .93
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.93:
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
	jnz .2788
	mov eax, 1
	mov edi, 2
	mov rsi, _s330
	mov rdx, 166
	syscall
	mov rdi, 1
	jmp _exit
.2788:
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
	jnz .2789
	mov eax, 1
	mov edi, 2
	mov rsi, _s373
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2789:
	mov rbx, 0
	push rbx
.105:
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
	jz .106
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
	jnz .2790.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s352
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2790.1:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	pop rdi
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .107
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
	jnz .2791.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s352
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2791.2:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.107:
	pop rbx
	inc rbx
	push rbx
	jmp .105
.106:
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
	jz .115
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
.115:
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
.117:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .118
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
	jz .119
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
.119:
	pop rbx
	inc rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .117
.118:
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
	jz .121
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
.121:
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
	jz .123
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
.123:
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
.125:
	mov rbx, 1
	test rbx, rbx
	jz .126
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
	jz .127
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
.127:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .129
	jmp .126
.129:
	jmp .125
.126:
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
	jz .131
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
.131:
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
	jz .139
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
.139:
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
	jz .56.1
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
	jmp .58.1
.56.1:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.1:
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
	jz .147
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.147:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rsi
	push rbx
.149:
	mov rbx, 1
	test rbx, rbx
	jz .150
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
	jz .151
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.151:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .153
	jmp .150
.153:
	jmp .149
.150:
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
	jz .155
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.155:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [rsp + 8]
	pop rsi
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.157:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .158
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
	jz .159
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.159:
	pop rbx
	inc rbx
	push rbx
	jmp .157
.158:
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
.161:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .162
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
	jz .163
	pop rbx
	dec rbx
	push rbx
	jmp .165
.163:
	jmp .162
.165:
	jmp .161
.162:
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
	jz .166
	mov rbx, 39
	push rbx
	jmp .167
.166:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .169
	mov rbx, 34
	push rbx
	jmp .167
.169:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .171
	mov rbx, 92
	push rbx
	jmp .167
.171:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .173
	mov rbx, 7
	push rbx
	jmp .167
.173:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .175
	mov rbx, 8
	push rbx
	jmp .167
.175:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .177
	mov rbx, 12
	push rbx
	jmp .167
.177:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .179
	mov rbx, 10
	push rbx
	jmp .167
.179:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .181
	mov rbx, 13
	push rbx
	jmp .167
.181:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .183
	mov rbx, 9
	push rbx
	jmp .167
.183:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .185
	mov rbx, 11
	push rbx
	jmp .167
.185:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .187
	mov rbx, 96
	push rbx
	jmp .167
.187:
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.188:
.167:
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
	jz .198
	mov rbx, _s245
	mov rsi, 19
	push rbx
	push rsi
	jmp .200
.198:
	mov rbx, _s246
	mov rsi, 20
	push rbx
	push rsi
.200:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, rsi
	seta dil
	push rbx
	test rdi, rdi
	jz .201
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
	jmp .202
.201:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .204
	mov rbx, qword [rsp + 8]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, 0
	push rbx
.205:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .206
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
	jz .207
	jmp .206
.207:
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
	jz .209
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.209:
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
	jmp .205
.206:
	add rsp, 8
.204:
.202:
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
.211:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .212
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
	jz .213
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
.213:
	mov rbx, 48
	pop rsi
	sub rsi, rbx
	pop rbx
	add rbx, rsi
	pop rsi
	inc rsi
	push rbx
	push rsi
	jmp .211
.212:
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
	jz .215
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
.215:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 21
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.217:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .218
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
	jmp .217
.218:
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
	jz .222
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.222:
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
.63.1:
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
	jz .64.1
	pop rbx
	inc rbx
	push rbx
	jmp .63.1
.64.1:
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
.224:
	mov rbx, 1
	test rbx, rbx
	jz .225
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, rdi
	push rbx
	push rsi
	push rdi
	push r8
.63.2:
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
	jz .64.2
	pop rbx
	inc rbx
	push rbx
	jmp .63.2
.64.2:
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
	jz .226
	jmp .225
	jmp .228
.226:
	mov rbx, 32
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.228:
	jmp .224
.225:
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
.229:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .230
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
	jz .231
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .233
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .235
.233:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .236
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
	jnz .2792.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2792.1:
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
	jnz .2793.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2793.2:
	pop rbx
	pop rsi
	dec rsi
	push rsi
	push rbx
	jmp .238
.236:
	jmp .230
.238:
.235:
	pop rbx
	mov rsi, rbx
	inc rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 16], rsi
	push rbx
.231:
	pop rbx
	inc rbx
	push rbx
	jmp .229
.230:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .239
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .241
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
	jnz .2794.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2794.3:
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
	jnz .2795.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2795.4:
.241:
.239:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
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
	jnz .2796.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2796.1:
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
	jnz .2797.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2797.2:
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
.243:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .244
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, rdi
	push rbx
	push rsi
	push rdi
	push r8
.63.3:
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
	jz .64.3
	pop rbx
	inc rbx
	push rbx
	jmp .63.3
.64.3:
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
	jz .245
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
.245:
	add rsp, 8
	add rsp, 8
	mov rbx, 8
	pop rsi
	add rsi, rbx
	push rsi
	jmp .243
.244:
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
	jz .249
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.249:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rbx
	test r8, r8
	jz .251
	pop rbx
	not rbx
	inc rbx
	push rbx
.251:
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
	jz .253
	mov rbx, _s34
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.253:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .256
	mov rbx, _s35
	mov rsi, 34
	push rbx
	push rsi
	jmp .254
.256:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .258
	mov rbx, _s36
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.258:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .260
	mov rbx, _s37
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.260:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .262
	mov rbx, _s38
	mov rsi, 24
	push rbx
	push rsi
	jmp .254
.262:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .264
	mov rbx, _s39
	mov rsi, 33
	push rbx
	push rsi
	jmp .254
.264:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .266
	mov rbx, _s40
	mov rsi, 30
	push rbx
	push rsi
	jmp .254
.266:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .268
	mov rbx, _s41
	mov rsi, 27
	push rbx
	push rsi
	jmp .254
.268:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .270
	mov rbx, _s42
	mov rsi, 27
	push rbx
	push rsi
	jmp .254
.270:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .272
	mov rbx, _s43
	mov rsi, 27
	push rbx
	push rsi
	jmp .254
.272:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .274
	mov rbx, _s44
	mov rsi, 41
	push rbx
	push rsi
	jmp .254
.274:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .276
	mov rbx, _s45
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.276:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .278
	mov rbx, _s46
	mov rsi, 26
	push rbx
	push rsi
	jmp .254
.278:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .280
	mov rbx, _s47
	mov rsi, 20
	push rbx
	push rsi
	jmp .254
.280:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .282
	mov rbx, _s48
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.282:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .284
	mov rbx, _s49
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.284:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .286
	mov rbx, _s50
	mov rsi, 20
	push rbx
	push rsi
	jmp .254
.286:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .288
	mov rbx, _s51
	mov rsi, 33
	push rbx
	push rsi
	jmp .254
.288:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .290
	mov rbx, _s52
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.290:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .292
	mov rbx, _s53
	mov rsi, 25
	push rbx
	push rsi
	jmp .254
.292:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .294
	mov rbx, _s54
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.294:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .296
	mov rbx, _s55
	mov rsi, 25
	push rbx
	push rsi
	jmp .254
.296:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .298
	mov rbx, _s56
	mov rsi, 38
	push rbx
	push rsi
	jmp .254
.298:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .300
	mov rbx, _s57
	mov rsi, 28
	push rbx
	push rsi
	jmp .254
.300:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .302
	mov rbx, _s58
	mov rsi, 39
	push rbx
	push rsi
	jmp .254
.302:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .304
	mov rbx, _s59
	mov rsi, 24
	push rbx
	push rsi
	jmp .254
.304:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .306
	mov rbx, _s60
	mov rsi, 22
	push rbx
	push rsi
	jmp .254
.306:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .308
	mov rbx, _s61
	mov rsi, 32
	push rbx
	push rsi
	jmp .254
.308:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .310
	mov rbx, _s62
	mov rsi, 21
	push rbx
	push rsi
	jmp .254
.310:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .312
	mov rbx, _s63
	mov rsi, 29
	push rbx
	push rsi
	jmp .254
.312:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .314
	mov rbx, _s64
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.314:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .316
	mov rbx, _s65
	mov rsi, 19
	push rbx
	push rsi
	jmp .254
.316:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .318
	mov rbx, _s66
	mov rsi, 39
	push rbx
	push rsi
	jmp .254
.318:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .320
	mov rbx, _s67
	mov rsi, 38
	push rbx
	push rsi
	jmp .254
.320:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .322
	mov rbx, _s68
	mov rsi, 35
	push rbx
	push rsi
	jmp .254
.322:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .324
	mov rbx, _s69
	mov rsi, 33
	push rbx
	push rsi
	jmp .254
.324:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .326
	mov rbx, _s70
	mov rsi, 27
	push rbx
	push rsi
	jmp .254
.326:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .328
	mov rbx, _s71
	mov rsi, 33
	push rbx
	push rsi
	jmp .254
.328:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .330
	mov rbx, _s72
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.330:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .332
	mov rbx, _s73
	mov rsi, 41
	push rbx
	push rsi
	jmp .254
.332:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .334
	mov rbx, _s74
	mov rsi, 46
	push rbx
	push rsi
	jmp .254
.334:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .336
	mov rbx, _s75
	mov rsi, 35
	push rbx
	push rsi
	jmp .254
.336:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .338
	mov rbx, _s76
	mov rsi, 26
	push rbx
	push rsi
	jmp .254
.338:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .340
	mov rbx, _s77
	mov rsi, 26
	push rbx
	push rsi
	jmp .254
.340:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .342
	mov rbx, _s78
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.342:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .344
	mov rbx, _s79
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.344:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .346
	mov rbx, _s80
	mov rsi, 30
	push rbx
	push rsi
	jmp .254
.346:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .348
	mov rbx, _s81
	mov rsi, 21
	push rbx
	push rsi
	jmp .254
.348:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .350
	mov rbx, _s82
	mov rsi, 49
	push rbx
	push rsi
	jmp .254
.350:
	pop rbx
	mov rsi, rbx
	mov rdi, 84
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .352
	mov rbx, _s83
	mov rsi, 58
	push rbx
	push rsi
	jmp .254
.352:
	pop rbx
	mov rsi, rbx
	mov rdi, 87
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .354
	mov rbx, _s84
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.354:
	pop rbx
	mov rsi, rbx
	mov rdi, 88
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .356
	mov rbx, _s85
	mov rsi, 41
	push rbx
	push rsi
	jmp .254
.356:
	pop rbx
	mov rsi, rbx
	mov rdi, 89
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .358
	mov rbx, _s86
	mov rsi, 43
	push rbx
	push rsi
	jmp .254
.358:
	pop rbx
	mov rsi, rbx
	mov rdi, 90
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .360
	mov rbx, _s87
	mov rsi, 27
	push rbx
	push rsi
	jmp .254
.360:
	pop rbx
	mov rsi, rbx
	mov rdi, 91
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .362
	mov rbx, _s88
	mov rsi, 43
	push rbx
	push rsi
	jmp .254
.362:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .364
	mov rbx, _s89
	mov rsi, 36
	push rbx
	push rsi
	jmp .254
.364:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .366
	mov rbx, _s90
	mov rsi, 40
	push rbx
	push rsi
	jmp .254
.366:
	pop rbx
	mov rsi, rbx
	mov rdi, 94
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .368
	mov rbx, _s91
	mov rsi, 43
	push rbx
	push rsi
	jmp .254
.368:
	pop rbx
	mov rsi, rbx
	mov rdi, 95
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .370
	mov rbx, _s92
	mov rsi, 36
	push rbx
	push rsi
	jmp .254
.370:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .372
	mov rbx, _s93
	mov rsi, 44
	push rbx
	push rsi
	jmp .254
.372:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .374
	mov rbx, _s94
	mov rsi, 55
	push rbx
	push rsi
	jmp .254
.374:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .376
	mov rbx, _s95
	mov rsi, 35
	push rbx
	push rsi
	jmp .254
.376:
	pop rbx
	mov rsi, rbx
	mov rdi, 99
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .378
	mov rbx, _s96
	mov rsi, 47
	push rbx
	push rsi
	jmp .254
.378:
	pop rbx
	mov rsi, rbx
	mov rdi, 100
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .380
	mov rbx, _s97
	mov rsi, 26
	push rbx
	push rsi
	jmp .254
.380:
	pop rbx
	mov rsi, rbx
	mov rdi, 101
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .382
	mov rbx, _s98
	mov rsi, 36
	push rbx
	push rsi
	jmp .254
.382:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .384
	mov rbx, _s99
	mov rsi, 47
	push rbx
	push rsi
	jmp .254
.384:
	pop rbx
	mov rsi, rbx
	mov rdi, 103
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .386
	mov rbx, _s100
	mov rsi, 47
	push rbx
	push rsi
	jmp .254
.386:
	pop rbx
	mov rsi, rbx
	mov rdi, 104
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .388
	mov rbx, _s101
	mov rsi, 37
	push rbx
	push rsi
	jmp .254
.388:
	pop rbx
	mov rsi, rbx
	mov rdi, 105
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .390
	mov rbx, _s102
	mov rsi, 35
	push rbx
	push rsi
	jmp .254
.390:
	pop rbx
	mov rsi, rbx
	mov rdi, 106
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .392
	mov rbx, _s103
	mov rsi, 49
	push rbx
	push rsi
	jmp .254
.392:
	pop rbx
	mov rsi, rbx
	mov rdi, 107
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .394
	mov rbx, _s104
	mov rsi, 46
	push rbx
	push rsi
	jmp .254
.394:
	pop rbx
	mov rsi, rbx
	mov rdi, 108
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .396
	mov rbx, _s105
	mov rsi, 57
	push rbx
	push rsi
	jmp .254
.396:
	pop rbx
	mov rsi, rbx
	mov rdi, 109
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .398
	mov rbx, _s106
	mov rsi, 49
	push rbx
	push rsi
	jmp .254
.398:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .400
	mov rbx, _s107
	mov rsi, 32
	push rbx
	push rsi
	jmp .254
.400:
	pop rbx
	mov rsi, rbx
	mov rdi, 111
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .402
	mov rbx, _s108
	mov rsi, 33
	push rbx
	push rsi
	jmp .254
.402:
	pop rbx
	mov rsi, rbx
	mov rdi, 112
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .404
	mov rbx, _s109
	mov rsi, 24
	push rbx
	push rsi
	jmp .254
.404:
	pop rbx
	mov rsi, rbx
	mov rdi, 113
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .406
	mov rbx, _s110
	mov rsi, 31
	push rbx
	push rsi
	jmp .254
.406:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .408
	mov rbx, _s111
	mov rsi, 40
	push rbx
	push rsi
	jmp .254
.408:
	pop rbx
	mov rsi, rbx
	mov rdi, 115
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .410
	mov rbx, _s112
	mov rsi, 39
	push rbx
	push rsi
	jmp .254
.410:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .412
	mov rbx, _s113
	mov rsi, 26
	push rbx
	push rsi
	jmp .254
.412:
	pop rbx
	mov rsi, rbx
	mov rdi, 122
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .414
	mov rbx, _s114
	mov rsi, 28
	push rbx
	push rsi
	jmp .254
.414:
	pop rbx
	mov rsi, rbx
	mov rdi, 125
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .416
	mov rbx, _s115
	mov rsi, 30
	push rbx
	push rsi
	jmp .254
.416:
	pop rbx
	mov rsi, rbx
	mov rdi, 130
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .418
	mov rbx, _s116
	mov rsi, 23
	push rbx
	push rsi
	jmp .254
.418:
	pop rbx
	mov rsi, rbx
	mov rdi, 131
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .420
	mov rbx, _s117
	mov rsi, 39
	push rbx
	push rsi
	jmp .254
.420:
	pop rbx
	mov rsi, rbx
	mov rdi, 95
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .422
	mov rbx, _s118
	mov rsi, 33
	push rbx
	push rsi
	jmp .254
.422:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .424
	mov rbx, _s119
	mov rsi, 36
	push rbx
	push rsi
	jmp .425
.424:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .427
	mov rbx, _s120
	mov rsi, 35
	push rbx
	push rsi
	jmp .425
.427:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .429
	mov rbx, _s121
	mov rsi, 23
	push rbx
	push rsi
	jmp .425
.429:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .431
	mov rbx, _s122
	mov rsi, 22
	push rbx
	push rsi
	jmp .425
.431:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .433
	mov rbx, _s123
	mov rsi, 33
	push rbx
	push rsi
	jmp .425
.433:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .435
	mov rbx, _s124
	mov rsi, 38
	push rbx
	push rsi
	jmp .425
.435:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .437
	mov rbx, _s125
	mov rsi, 35
	push rbx
	push rsi
	jmp .425
.437:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .439
	mov rbx, _s126
	mov rsi, 23
	push rbx
	push rsi
	jmp .425
.439:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .441
	mov rbx, _s127
	mov rsi, 24
	push rbx
	push rsi
	jmp .425
.441:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .443
	mov rbx, _s128
	mov rsi, 34
	push rbx
	push rsi
	jmp .425
.443:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .445
	mov rbx, _s129
	mov rsi, 22
	push rbx
	push rsi
	jmp .425
.445:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .447
	mov rbx, _s130
	mov rsi, 17
	push rbx
	push rsi
	jmp .425
.447:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .449
	mov rbx, _s131
	mov rsi, 30
	push rbx
	push rsi
	jmp .425
.449:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .451
	mov rbx, _s132
	mov rsi, 22
	push rbx
	push rsi
	jmp .425
.451:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .453
	mov rbx, _s133
	mov rsi, 37
	push rbx
	push rsi
	jmp .425
.453:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .455
	mov rbx, _s134
	mov rsi, 29
	push rbx
	push rsi
	jmp .425
.455:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .457
	mov rbx, _s135
	mov rsi, 28
	push rbx
	push rsi
	jmp .425
.457:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .459
	mov rbx, _s136
	mov rsi, 27
	push rbx
	push rsi
	jmp .425
.459:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .461
	mov rbx, _s137
	mov rsi, 21
	push rbx
	push rsi
	jmp .425
.461:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .463
	mov rbx, _s138
	mov rsi, 32
	push rbx
	push rsi
	jmp .425
.463:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .465
	mov rbx, _s139
	mov rsi, 38
	push rbx
	push rsi
	jmp .425
.465:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .467
	mov rbx, _s140
	mov rsi, 30
	push rbx
	push rsi
	jmp .425
.467:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .469
	mov rbx, _s141
	mov rsi, 22
	push rbx
	push rsi
	jmp .425
.469:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .471
	mov rbx, _s142
	mov rsi, 22
	push rbx
	push rsi
	jmp .425
.471:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .473
	mov rbx, _s143
	mov rsi, 35
	push rbx
	push rsi
	jmp .425
.473:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .475
	mov rbx, _s144
	mov rsi, 28
	push rbx
	push rsi
	jmp .425
.475:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .477
	mov rbx, _s145
	mov rsi, 37
	push rbx
	push rsi
	jmp .425
.477:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .479
	mov rbx, _s146
	mov rsi, 37
	push rbx
	push rsi
	jmp .425
.479:
	pop rbx
	mov rsi, rbx
	mov rdi, 78
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .481
	mov rbx, _s147
	mov rsi, 32
	push rbx
	push rsi
	jmp .425
.481:
	pop rbx
	mov rsi, rbx
	mov rdi, 79
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .483
	mov rbx, _s148
	mov rsi, 48
	push rbx
	push rsi
	jmp .425
.483:
	pop rbx
	mov rsi, rbx
	mov rdi, 80
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .485
	mov rbx, _s149
	mov rsi, 46
	push rbx
	push rsi
	jmp .425
.485:
	pop rbx
	mov rsi, rbx
	mov rdi, 81
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .487
	mov rbx, _s150
	mov rsi, 39
	push rbx
	push rsi
	jmp .425
.487:
	pop rbx
	mov rsi, rbx
	mov rdi, 82
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .489
	mov rbx, _s151
	mov rsi, 57
	push rbx
	push rsi
	jmp .425
.489:
	pop rbx
	mov rsi, rbx
	mov rdi, 83
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .491
	mov rbx, _s152
	mov rsi, 48
	push rbx
	push rsi
	jmp .425
.491:
	pop rbx
	mov rsi, rbx
	mov rdi, 85
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .493
	mov rbx, _s153
	mov rsi, 54
	push rbx
	push rsi
	jmp .425
.493:
	pop rbx
	mov rsi, rbx
	mov rdi, 86
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .495
	mov rbx, _s154
	mov rsi, 29
	push rbx
	push rsi
	jmp .425
.495:
	pop rbx
	mov rsi, rbx
	mov rdi, 117
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .497
	mov rbx, _s155
	mov rsi, 34
	push rbx
	push rsi
	jmp .425
.497:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .499
	mov rbx, _s156
	mov rsi, 37
	push rbx
	push rsi
	jmp .425
.499:
	pop rbx
	mov rsi, rbx
	mov rdi, 119
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .501
	mov rbx, _s157
	mov rsi, 39
	push rbx
	push rsi
	jmp .425
.501:
	pop rbx
	mov rsi, rbx
	mov rdi, 120
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .503
	mov rbx, _s158
	mov rsi, 29
	push rbx
	push rsi
	jmp .425
.503:
	pop rbx
	mov rsi, rbx
	mov rdi, 121
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .505
	mov rbx, _s159
	mov rsi, 28
	push rbx
	push rsi
	jmp .425
.505:
	pop rbx
	mov rsi, rbx
	mov rdi, 123
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .507
	mov rbx, _s160
	mov rsi, 27
	push rbx
	push rsi
	jmp .425
.507:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .509
	mov rbx, _s161
	mov rsi, 31
	push rbx
	push rsi
	jmp .425
.509:
	pop rbx
	mov rsi, rbx
	mov rdi, 126
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .511
	mov rbx, _s162
	mov rsi, 35
	push rbx
	push rsi
	jmp .425
.511:
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .513
	mov rbx, _s163
	mov rsi, 29
	push rbx
	push rsi
	jmp .425
.513:
	pop rbx
	mov rsi, rbx
	mov rdi, 128
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .515
	mov rbx, _s164
	mov rsi, 34
	push rbx
	push rsi
	jmp .425
.515:
	pop rbx
	mov rsi, rbx
	mov rdi, 129
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .517
	mov rbx, _s165
	mov rsi, 42
	push rbx
	push rsi
	jmp .425
.517:
	pop rbx
	mov rsi, rbx
	mov rdi, 132
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .519
	mov rbx, _s166
	mov rsi, 47
	push rbx
	push rsi
	jmp .425
.519:
	pop rbx
	mov rsi, rbx
	mov rdi, 133
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .521
	mov rbx, _s167
	mov rsi, 42
	push rbx
	push rsi
	jmp .425
.521:
	mov rbx, _s168
	mov rsi, 15
	push rbx
	push rsi
.522:
.425:
.423:
.254:
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
	jz .523
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.523:
	mov rbx, _s765
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
	jnz .2798
	mov eax, 1
	mov edi, 2
	mov rsi, _s766
	mov rdx, 130
	syscall
	mov rdi, 1
	jmp _exit
.2798:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
.525:
	mov rbx, 1
	test rbx, rbx
	jz .526
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
	jz .527
	add rsp, 8
	add rsp, 8
	jmp .526
	jmp .529
.527:
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
	jz .530
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.530:
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
	jnz .2799.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2799.1:
	mov [_galloc_buffer.len], rsi
.529:
	add rsp, 8
	add rsp, 8
	jmp .525
.526:
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
	jz .532
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.532:
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
	jz .534
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.534:
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
	jz .536
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.536:
	pop rbx
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .538
	mov rbx, 1
	push rbx
	jmp .540
.538:
	mov rbx, 0
	push rbx
.540:
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
	jnz .2800.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2800.3:
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
	jnz .2801
	mov eax, 1
	mov edi, 2
	mov rsi, _s172
	mov rdx, 105
	syscall
	mov rdi, 1
	jmp _exit
.2801:
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
	jnz .2802.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2802.2:
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
	jnz .2803
	mov eax, 1
	mov edi, 2
	mov rsi, _s174
	mov rdx, 133
	syscall
	mov rdi, 1
	jmp _exit
.2803:
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
	jz .541
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	jmp .543
.541:
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
	jz .544
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.544:
.543:
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
	jnz .2804
	mov eax, 1
	mov edi, 2
	mov rsi, _s767
	mov rdx, 134
	syscall
	mov rdi, 1
	jmp _exit
.2804:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .546
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	or rsi, rdi
	test rsi, rsi
	jz .548
	mov rbx, 18446744073709551516
	mov rsi, _s768
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
	jnz .2805
	mov eax, 1
	mov edi, 2
	mov rsi, _s769
	mov rdx, 136
	syscall
	mov rdi, 1
	jmp _exit
.2805:
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	test rsi, rsi
	jz .550
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
	jnz .2806
	mov eax, 1
	mov edi, 2
	mov rsi, _s770
	mov rdx, 144
	syscall
	mov rdi, 1
	jmp _exit
.2806:
.550:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	test rsi, rsi
	jz .552
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
	jnz .2807
	mov eax, 1
	mov edi, 2
	mov rsi, _s771
	mov rdx, 144
	syscall
	mov rdi, 1
	jmp _exit
.2807:
.552:
.548:
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
	jz .554
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	jmp .556
.554:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
.556:
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
	jz .247.1
	pop rbx
	not rbx
	inc rbx
	push rbx
.247.1:
	mov rbx, 2
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .557
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.557:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2808
	mov eax, 1
	mov edi, 2
	mov rsi, _s772
	mov rdx, 136
	syscall
	mov rdi, 1
	jmp _exit
.2808:
	jmp .559
.546:
.560:
	mov rbx, 1
	test rbx, rbx
	jz .561
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
	jnz .2809
	mov eax, 1
	mov edi, 2
	mov rsi, _s773
	mov rdx, 135
	syscall
	mov rdi, 1
	jmp _exit
.2809:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 127
	and rsi, rbx
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .562
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
	jz .564
	mov rbx, 60
	mov rax, rbx
	pop rdi
	syscall
	jmp .566
.564:
	add rsp, 8
.566:
	jmp .561
	jmp .563
.562:
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
	jz .568
	mov rbx, _s774
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
.568:
.563:
	jmp .560
.561:
.559:
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
	jnz .2810.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2810.3:
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
	jnz .2811.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s170
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2811.4:
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
	jz .569
	mov rbx, 47
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
.569:
.571:
	mov rbx, 1
	test rbx, rbx
	jz .572
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
	jz .573
	add rsp, 8
	add rsp, 8
	jmp .574
.573:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s235
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
	jz .56.2
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
	jmp .58.2
.56.2:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.2:
	pop rbx
	test rbx, rbx
	jz .576
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	add rsp, 8
	add rsp, 8
	jmp .574
.576:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s232
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
	jz .56.3
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
	jmp .58.3
.56.3:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.3:
	pop rbx
	test rbx, rbx
	jz .578
	add rsp, 8
	add rsp, 8
	jmp .574
.578:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .580
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	add rsp, 8
	add rsp, 8
	jmp .582
.580:
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
	jnz .2812.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2812.5:
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
	jnz .2813.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2813.6:
.582:
.579:
.574:
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
	jz .583
	jmp .572
.583:
	jmp .571
.572:
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
	jz .585
	mov rbx, 0
	push rbx
.587:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 56]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .588
	mov rbx, _s235
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
	jz .589
	jmp .588
.589:
	mov rbx, _s233
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
	jmp .587
.588:
	add rsp, 8
.585:
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
	jz .591
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
.593:
	mov rbx, 1
	test rbx, rbx
	jz .594
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
	jnz .2814.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2814.1:
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
	jnz .2815.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2815.2:
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
	jz .595
	jmp .594
	jmp .597
.595:
	mov rbx, _s233
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
.597:
	jmp .593
.594:
	add rsp, 8
	jmp .598
.591:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, qword _galloc_buffer.data
	mov rdi, [_galloc_buffer.len]
	add rbx, rdi
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .599
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .601
	mov rbx, _s233
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
	jmp .603
.601:
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
.603:
.599:
.598:
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
	jnz .2816.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s173
	mov rdx, 152
	syscall
	mov rdi, 1
	jmp _exit
.2816.4:
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
	jz .606
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
.606:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2817
	mov eax, 1
	mov edi, 2
	mov rsi, _s237
	mov rdx, 122
	syscall
	mov rdi, 1
	jmp _exit
.2817:
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
	jz .608
	add rsp, 8
	add rsp, 8
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.608:
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
	jz .610
	add rsp, 8
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.610:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .612
	add rsp, 8
	mov rbx, _s233
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.612:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
fd.stat_size?:
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
	setne sil
	test rsi, rsi
	jz .614
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
.614:
	mov rbx, qword [_rs_p]
	mov rsi, 48
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
create_new_file_fd?:
	sub rsp, 24
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
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setl dil
	test rdi, rdi
	jz .616
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	not rsi
	inc rsi
	mov rbx, 13
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .618
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.618:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2818
	mov eax, 1
	mov edi, 2
	mov rsi, _s552
	mov rdx, 136
	syscall
	mov rdi, 1
	jmp _exit
.2818:
.616:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 1
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
read_file?:
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
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setl dil
	test rdi, rdi
	jz .620
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	not rsi
	inc rsi
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .622
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
.622:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2819
	mov eax, 1
	mov edi, 2
	mov rsi, _s214
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2819:
.620:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd.stat_size?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2820
	mov eax, 1
	mov edi, 2
	mov rsi, _s215
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2820:
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
	jz .624
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
	setg dil
	test rdi, rdi
	jnz .2821
	mov eax, 1
	mov edi, 2
	mov rsi, _s216
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2821:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rax
	push rsi
	jmp .626
.624:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.626:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 3
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	sete sil
	test rsi, rsi
	jnz .2822
	mov eax, 1
	mov edi, 2
	mov rsi, _s217
	mov rdx, 137
	syscall
	mov rdi, 1
	jmp _exit
.2822:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
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
	jz .627
	mov rbx, _s195
	mov rsi, 4
	push rbx
	push rsi
	jmp .628
.627:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .630
	mov rbx, _s196
	mov rsi, 4
	push rbx
	push rsi
	jmp .628
.630:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2823
	mov eax, 1
	mov edi, 2
	mov rsi, _s761
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.2823:
	push rbx
	push rsi
.631:
.628:
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
	jz .56.4
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
	jmp .58.4
.56.4:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.4:
	pop rbx
	test rbx, rbx
	jz .632
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .633
.632:
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
	jz .56.5
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
	jmp .58.5
.56.5:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.5:
	pop rbx
	test rbx, rbx
	jz .635
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	jmp .633
.635:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.636:
.633:
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
	jz .637
	mov rbx, _s1
	mov rsi, 5
	push rbx
	push rsi
	jmp .638
.637:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .640
	mov rbx, _s2
	mov rsi, 7
	push rbx
	push rsi
	jmp .638
.640:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2824
	mov eax, 1
	mov edi, 2
	mov rsi, _s3
	mov rdx, 71
	syscall
	mov rdi, 1
	jmp _exit
.2824:
	push rbx
	push rsi
.641:
.638:
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
	jz .642
	mov rbx, 0
	mov rsi, 1
	push rbx
	push rsi
	jmp .643
.642:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .645
	mov rbx, 9
	mov rsi, 1
	push rbx
	push rsi
	jmp .643
.645:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.646:
.643:
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
	jnz .2825.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2825.1:
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
	jnz .2826.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2826.2:
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
	jnz .2827.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2827.3:
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
	jnz .2828.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2828.4:
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
	jz .647
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.647:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, 8388608
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2829.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2829.5:
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
	jnz .2830.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s219
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2830.6:
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
	mov rbx, _s209
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
	jnz .2831
	mov eax, 1
	mov edi, 2
	mov rsi, _s220
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2831:
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
.649:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gopened_files.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .650
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gopened_files.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2832.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2832.1:
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
	jz .56.6
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
	jmp .58.6
.56.6:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.6:
	pop rbx
	test rbx, rbx
	jz .651
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.651:
	pop rbx
	inc rbx
	push rbx
	jmp .649
.650:
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
	jz .653
	mov rbx, _s319
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.653:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .656
	mov rbx, _s320
	mov rsi, 10
	push rbx
	push rsi
	jmp .654
.656:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .658
	mov rbx, _s321
	mov rsi, 10
	push rbx
	push rsi
	jmp .654
.658:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .660
	mov rbx, _s250
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.660:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .662
	mov rbx, _s251
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.662:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .664
	mov rbx, _s252
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.664:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .666
	mov rbx, _s253
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.666:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .668
	mov rbx, _s254
	mov rsi, 5
	push rbx
	push rsi
	jmp .654
.668:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .670
	mov rbx, _s255
	mov rsi, 6
	push rbx
	push rsi
	jmp .654
.670:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .672
	mov rbx, _s256
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.672:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .674
	mov rbx, _s257
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.674:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .676
	mov rbx, _s258
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.676:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .678
	mov rbx, _s259
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.678:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .680
	mov rbx, _s260
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.680:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .682
	mov rbx, _s261
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.682:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .684
	mov rbx, _s262
	mov rsi, 5
	push rbx
	push rsi
	jmp .654
.684:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .686
	mov rbx, _s263
	mov rsi, 5
	push rbx
	push rsi
	jmp .654
.686:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .688
	mov rbx, _s264
	mov rsi, 8
	push rbx
	push rsi
	jmp .654
.688:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .690
	mov rbx, _s265
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.690:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .692
	mov rbx, _s206
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.692:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .694
	mov rbx, _s266
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.694:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .696
	mov rbx, _s233
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.696:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .698
	mov rbx, _s267
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.698:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .700
	mov rbx, _s268
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.700:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .702
	mov rbx, _s269
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.702:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .704
	mov rbx, _s270
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.704:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .706
	mov rbx, _s271
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.706:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .708
	mov rbx, _s272
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.708:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .710
	mov rbx, _s273
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.710:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .712
	mov rbx, _s274
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.712:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .714
	mov rbx, _s275
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.714:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .716
	mov rbx, _s276
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.716:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .718
	mov rbx, _s277
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.718:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .720
	mov rbx, _s278
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.720:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .722
	mov rbx, _s279
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.722:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .724
	mov rbx, _s280
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.724:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .726
	mov rbx, _s281
	mov rsi, 5
	push rbx
	push rsi
	jmp .654
.726:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .728
	mov rbx, _s282
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.728:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .730
	mov rbx, _s283
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.730:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .732
	mov rbx, _s284
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.732:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .734
	mov rbx, _s285
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.734:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .736
	mov rbx, _s286
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.736:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .738
	mov rbx, _s287
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.738:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .740
	mov rbx, _s288
	mov rsi, 1
	push rbx
	push rsi
	jmp .654
.740:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .742
	mov rbx, _s289
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.742:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .744
	mov rbx, _s290
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.744:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .746
	mov rbx, _s291
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.746:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .748
	mov rbx, _s292
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.748:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .750
	mov rbx, _s293
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.750:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .752
	mov rbx, _s294
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.752:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .754
	mov rbx, _s295
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.754:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .756
	mov rbx, _s296
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.756:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .758
	mov rbx, _s297
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.758:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .760
	mov rbx, _s298
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.760:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .762
	mov rbx, _s299
	mov rsi, 2
	push rbx
	push rsi
	jmp .654
.762:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .764
	mov rbx, _s300
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.764:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .766
	mov rbx, _s301
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.766:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .768
	mov rbx, _s302
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.768:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .770
	mov rbx, _s303
	mov rsi, 7
	push rbx
	push rsi
	jmp .654
.770:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .772
	mov rbx, _s304
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.772:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .774
	mov rbx, _s305
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.774:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .776
	mov rbx, _s306
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.776:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .778
	mov rbx, _s307
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.778:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .780
	mov rbx, _s308
	mov rsi, 6
	push rbx
	push rsi
	jmp .654
.780:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .782
	mov rbx, _s309
	mov rsi, 7
	push rbx
	push rsi
	jmp .654
.782:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .784
	mov rbx, _s310
	mov rsi, 3
	push rbx
	push rsi
	jmp .654
.784:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .786
	mov rbx, _s311
	mov rsi, 8
	push rbx
	push rsi
	jmp .654
.786:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .788
	mov rbx, _s312
	mov rsi, 4
	push rbx
	push rsi
	jmp .654
.788:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2833
	mov eax, 1
	mov edi, 2
	mov rsi, _s322
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2833:
	push rbx
	push rsi
.789:
.654:
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
	jz .56.7
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
	jmp .58.7
.56.7:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.7:
	pop rbx
	test rbx, rbx
	jz .790
	mov rbx, 4
	push rbx
	jmp .791
.790:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s251
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
	jz .56.8
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
	jmp .58.8
.56.8:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.8:
	pop rbx
	test rbx, rbx
	jz .793
	mov rbx, 5
	push rbx
	jmp .791
.793:
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
	jz .56.9
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
	jmp .58.9
.56.9:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.9:
	pop rbx
	test rbx, rbx
	jz .795
	mov rbx, 6
	push rbx
	jmp .791
.795:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s253
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
	jz .56.10
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
	jmp .58.10
.56.10:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.10:
	pop rbx
	test rbx, rbx
	jz .797
	mov rbx, 7
	push rbx
	jmp .791
.797:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s254
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
	jz .56.11
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
	jmp .58.11
.56.11:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.11:
	pop rbx
	test rbx, rbx
	jz .799
	mov rbx, 9
	push rbx
	jmp .791
.799:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s255
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
	jz .56.12
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
	jmp .58.12
.56.12:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.12:
	pop rbx
	test rbx, rbx
	jz .801
	mov rbx, 10
	push rbx
	jmp .791
.801:
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
	jz .56.13
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
	jmp .58.13
.56.13:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.13:
	pop rbx
	test rbx, rbx
	jz .803
	mov rbx, 11
	push rbx
	jmp .791
.803:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s257
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
	jz .56.14
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
	jmp .58.14
.56.14:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.14:
	pop rbx
	test rbx, rbx
	jz .805
	mov rbx, 12
	push rbx
	jmp .791
.805:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s258
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
	jz .56.15
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
	jmp .58.15
.56.15:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.15:
	pop rbx
	test rbx, rbx
	jz .807
	mov rbx, 13
	push rbx
	jmp .791
.807:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s259
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
	jz .56.16
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
	jmp .58.16
.56.16:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.16:
	pop rbx
	test rbx, rbx
	jz .809
	mov rbx, 15
	push rbx
	jmp .791
.809:
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
	jz .56.17
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
	jmp .58.17
.56.17:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.17:
	pop rbx
	test rbx, rbx
	jz .811
	mov rbx, 16
	push rbx
	jmp .791
.811:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s261
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
	jz .56.18
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
	jmp .58.18
.56.18:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.18:
	pop rbx
	test rbx, rbx
	jz .813
	mov rbx, 17
	push rbx
	jmp .791
.813:
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
	jz .56.19
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
	jmp .58.19
.56.19:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.19:
	pop rbx
	test rbx, rbx
	jz .815
	mov rbx, 18
	push rbx
	jmp .791
.815:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s263
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
	jz .56.20
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
	jmp .58.20
.56.20:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.20:
	pop rbx
	test rbx, rbx
	jz .817
	mov rbx, 19
	push rbx
	jmp .791
.817:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s264
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
	jz .56.21
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
	jmp .58.21
.56.21:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.21:
	pop rbx
	test rbx, rbx
	jz .819
	mov rbx, 20
	push rbx
	jmp .791
.819:
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
	jz .56.22
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
	jmp .58.22
.56.22:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.22:
	pop rbx
	test rbx, rbx
	jz .821
	mov rbx, 21
	push rbx
	jmp .791
.821:
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
	jz .56.23
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
	jmp .58.23
.56.23:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.23:
	pop rbx
	test rbx, rbx
	jz .823
	mov rbx, 22
	push rbx
	jmp .791
.823:
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
	jz .56.24
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
	jmp .58.24
.56.24:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.24:
	pop rbx
	test rbx, rbx
	jz .825
	mov rbx, 23
	push rbx
	jmp .791
.825:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s233
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
	jz .56.25
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
	jmp .58.25
.56.25:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.25:
	pop rbx
	test rbx, rbx
	jz .827
	mov rbx, 24
	push rbx
	jmp .791
.827:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s267
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
	jz .56.26
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
	jmp .58.26
.56.26:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.26:
	pop rbx
	test rbx, rbx
	jz .829
	mov rbx, 25
	push rbx
	jmp .791
.829:
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
	jz .56.27
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
	jmp .58.27
.56.27:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.27:
	pop rbx
	test rbx, rbx
	jz .831
	mov rbx, 26
	push rbx
	jmp .791
.831:
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
	jz .56.28
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
	jmp .58.28
.56.28:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.28:
	pop rbx
	test rbx, rbx
	jz .833
	mov rbx, 27
	push rbx
	jmp .791
.833:
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
	jz .56.29
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
	jmp .58.29
.56.29:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.29:
	pop rbx
	test rbx, rbx
	jz .835
	mov rbx, 28
	push rbx
	jmp .791
.835:
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
	jz .56.30
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
	jmp .58.30
.56.30:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.30:
	pop rbx
	test rbx, rbx
	jz .837
	mov rbx, 29
	push rbx
	jmp .791
.837:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s272
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
	jz .56.31
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
	jmp .58.31
.56.31:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.31:
	pop rbx
	test rbx, rbx
	jz .839
	mov rbx, 30
	push rbx
	jmp .791
.839:
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
	jz .56.32
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
	jmp .58.32
.56.32:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.32:
	pop rbx
	test rbx, rbx
	jz .841
	mov rbx, 31
	push rbx
	jmp .791
.841:
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
	jz .56.33
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
	jmp .58.33
.56.33:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.33:
	pop rbx
	test rbx, rbx
	jz .843
	mov rbx, 32
	push rbx
	jmp .791
.843:
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
	jz .56.34
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
	jmp .58.34
.56.34:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.34:
	pop rbx
	test rbx, rbx
	jz .845
	mov rbx, 33
	push rbx
	jmp .791
.845:
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
	jz .56.35
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
	jmp .58.35
.56.35:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.35:
	pop rbx
	test rbx, rbx
	jz .847
	mov rbx, 70
	push rbx
	jmp .791
.847:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s277
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
	jz .56.36
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
	jmp .58.36
.56.36:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.36:
	pop rbx
	test rbx, rbx
	jz .849
	mov rbx, 34
	push rbx
	jmp .791
.849:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s278
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
	jz .56.37
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
	jmp .58.37
.56.37:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.37:
	pop rbx
	test rbx, rbx
	jz .851
	mov rbx, 35
	push rbx
	jmp .791
.851:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s279
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
	jz .56.38
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
	jmp .58.38
.56.38:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.38:
	pop rbx
	test rbx, rbx
	jz .853
	mov rbx, 36
	push rbx
	jmp .791
.853:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s280
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
	jz .56.39
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
	jmp .58.39
.56.39:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.39:
	pop rbx
	test rbx, rbx
	jz .855
	mov rbx, 37
	push rbx
	jmp .791
.855:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s281
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
	jz .56.40
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
	jmp .58.40
.56.40:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.40:
	pop rbx
	test rbx, rbx
	jz .857
	mov rbx, 38
	push rbx
	jmp .791
.857:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s282
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
	jz .56.41
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
	jmp .58.41
.56.41:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.41:
	pop rbx
	test rbx, rbx
	jz .859
	mov rbx, 39
	push rbx
	jmp .791
.859:
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
	jz .56.42
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
	jmp .58.42
.56.42:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.42:
	pop rbx
	test rbx, rbx
	jz .861
	mov rbx, 40
	push rbx
	jmp .791
.861:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s284
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
	jz .56.43
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
	jmp .58.43
.56.43:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.43:
	pop rbx
	test rbx, rbx
	jz .863
	mov rbx, 41
	push rbx
	jmp .791
.863:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s285
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
	jz .56.44
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
	jmp .58.44
.56.44:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.44:
	pop rbx
	test rbx, rbx
	jz .865
	mov rbx, 42
	push rbx
	jmp .791
.865:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s286
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
	jz .56.45
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
	jmp .58.45
.56.45:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.45:
	pop rbx
	test rbx, rbx
	jz .867
	mov rbx, 43
	push rbx
	jmp .791
.867:
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
	jz .56.46
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
	jmp .58.46
.56.46:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.46:
	pop rbx
	test rbx, rbx
	jz .869
	mov rbx, 44
	push rbx
	jmp .791
.869:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s288
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
	jz .56.47
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
	jmp .58.47
.56.47:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.47:
	pop rbx
	test rbx, rbx
	jz .871
	mov rbx, 45
	push rbx
	jmp .791
.871:
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
	jz .56.48
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
	jmp .58.48
.56.48:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.48:
	pop rbx
	test rbx, rbx
	jz .873
	mov rbx, 46
	push rbx
	jmp .791
.873:
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
	jz .56.49
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
	jmp .58.49
.56.49:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.49:
	pop rbx
	test rbx, rbx
	jz .875
	mov rbx, 47
	push rbx
	jmp .791
.875:
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
	jz .56.50
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
	jmp .58.50
.56.50:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.50:
	pop rbx
	test rbx, rbx
	jz .877
	mov rbx, 48
	push rbx
	jmp .791
.877:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s292
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
	jz .56.51
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
	jmp .58.51
.56.51:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.51:
	pop rbx
	test rbx, rbx
	jz .879
	mov rbx, 49
	push rbx
	jmp .791
.879:
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
	jz .56.52
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
	jmp .58.52
.56.52:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.52:
	pop rbx
	test rbx, rbx
	jz .881
	mov rbx, 50
	push rbx
	jmp .791
.881:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s294
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
	jz .56.53
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
	jmp .58.53
.56.53:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.53:
	pop rbx
	test rbx, rbx
	jz .883
	mov rbx, 51
	push rbx
	jmp .791
.883:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s295
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
	jz .56.54
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
	jmp .58.54
.56.54:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.54:
	pop rbx
	test rbx, rbx
	jz .885
	mov rbx, 52
	push rbx
	jmp .791
.885:
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
	jz .56.55
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
	jmp .58.55
.56.55:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.55:
	pop rbx
	test rbx, rbx
	jz .887
	mov rbx, 53
	push rbx
	jmp .791
.887:
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
	jz .56.56
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
	jmp .58.56
.56.56:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.56:
	pop rbx
	test rbx, rbx
	jz .889
	mov rbx, 54
	push rbx
	jmp .791
.889:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s298
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
	jz .56.57
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
	jmp .58.57
.56.57:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.57:
	pop rbx
	test rbx, rbx
	jz .891
	mov rbx, 55
	push rbx
	jmp .791
.891:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s299
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
	jz .56.58
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
	jmp .58.58
.56.58:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.58:
	pop rbx
	test rbx, rbx
	jz .893
	mov rbx, 56
	push rbx
	jmp .791
.893:
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
	jz .56.59
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
	jmp .58.59
.56.59:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.59:
	pop rbx
	test rbx, rbx
	jz .895
	mov rbx, 57
	push rbx
	jmp .791
.895:
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
	jz .56.60
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
	jmp .58.60
.56.60:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.60:
	pop rbx
	test rbx, rbx
	jz .897
	mov rbx, 58
	push rbx
	jmp .791
.897:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s302
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
	jz .56.61
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
	jmp .58.61
.56.61:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.61:
	pop rbx
	test rbx, rbx
	jz .899
	mov rbx, 59
	push rbx
	jmp .791
.899:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s303
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
	jz .56.62
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
	jmp .58.62
.56.62:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.62:
	pop rbx
	test rbx, rbx
	jz .901
	mov rbx, 67
	push rbx
	jmp .791
.901:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s304
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
	jz .56.63
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
	jmp .58.63
.56.63:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.63:
	pop rbx
	test rbx, rbx
	jz .903
	mov rbx, 68
	push rbx
	jmp .791
.903:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s305
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
	jz .56.64
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
	jmp .58.64
.56.64:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.64:
	pop rbx
	test rbx, rbx
	jz .905
	mov rbx, 69
	push rbx
	jmp .791
.905:
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
	jz .56.65
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
	jmp .58.65
.56.65:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.65:
	pop rbx
	test rbx, rbx
	jz .907
	mov rbx, 71
	push rbx
	jmp .791
.907:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s307
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
	jz .56.66
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
	jmp .58.66
.56.66:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.66:
	pop rbx
	test rbx, rbx
	jz .909
	mov rbx, 72
	push rbx
	jmp .791
.909:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s308
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
	jz .56.67
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
	jmp .58.67
.56.67:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.67:
	pop rbx
	test rbx, rbx
	jz .911
	mov rbx, 73
	push rbx
	jmp .791
.911:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s309
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
	jz .56.68
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
	jmp .58.68
.56.68:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.68:
	pop rbx
	test rbx, rbx
	jz .913
	mov rbx, 74
	push rbx
	jmp .791
.913:
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
	jz .56.69
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
	jmp .58.69
.56.69:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.69:
	pop rbx
	test rbx, rbx
	jz .915
	mov rbx, 75
	push rbx
	jmp .791
.915:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s311
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
	jz .56.70
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
	jmp .58.70
.56.70:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.70:
	pop rbx
	test rbx, rbx
	jz .917
	mov rbx, 76
	push rbx
	jmp .791
.917:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s312
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
	jz .56.71
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
	jmp .58.71
.56.71:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.71:
	pop rbx
	test rbx, rbx
	jz .919
	mov rbx, 77
	push rbx
	jmp .791
.919:
	mov rbx, 1
	push rbx
.920:
.791:
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
	jnz .2834
	mov eax, 1
	mov edi, 2
	mov rsi, _s240
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2834:
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
	jnz .2835.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2835.2:
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
	mov rsi, _s222
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
	mov rbx, _s222
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
	mov rbx, _s223
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
.921:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .922
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 9
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .923
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
	mov rbx, _s228
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
.923:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .921
.922:
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
	jz .925
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
.925:
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
	jnz .2836.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2836.3:
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
	jnz .2837.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2837.3:
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
	jz .927
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
	jnz .2838.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2838.4:
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
	jmp .929
.927:
	mov rbx, qword [_rs_p]
	add rbx, 72
	mov rsi, 0
	mov byte [rbx], sil
.929:
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
	jnz .2839.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2839.5:
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
	jnz .2840.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2840.6:
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
	mov rbx, _s227
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
	mov rbx, _s229
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
.930:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .931
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
	jmp .930
.931:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.932:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .933
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
	jmp .932
.933:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 72
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .934
	mov rbx, 62
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.934:
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
	jnz .2841.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2841.1:
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
.936:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .937
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2842.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2842.2:
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
	jz .938
	mov rbx, _s323
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
	jmp .939
.938:
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
	jz .941
	mov rbx, _s323
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
	jmp .939
.941:
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
	jz .943
	mov rbx, _s323
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
	jmp .939
.943:
	add rsp, 8
.944:
.939:
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
	jmp .936
.937:
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
	jz .945
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
	jmp .947
.945:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 24]
	push rsi
	push rdi
.947:
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
	jz .948
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
	jmp .950
.948:
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
	jz .951
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
.951:
.950:
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
	mov rbx, _s234
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
	jz .953
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.953:
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
	jnz .2843.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2843.4:
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
	mov rbx, _s222
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
	mov rbx, _s222
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
	mov rbx, _s223
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
	jnz .2844.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2844.3:
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
	jnz .2845.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2845.4:
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
	jnz .2846.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2846.5:
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
	jnz .2847.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2847.5:
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
	mov rbx, _s222
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
	mov rbx, _s222
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
	mov rbx, _s223
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
	mov rbx, _s610
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
	jnz .2848.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2848.6:
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
	jnz .2849.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2849.6:
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
	mov rbx, _s222
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
	mov rbx, _s222
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
	mov rbx, _s223
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
	mov rbx, _s315
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
	jz .958
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
	jz .960
	mov rbx, _s212
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
.960:
.958:
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
	jz .962
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.start_bold_time
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s316
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
	jz .964
	mov rbx, _s212
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
	mov rbx, _s232
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
	mov rbx, _s317
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
	jmp .966
.962:
	add rsp, 8
	add rsp, 8
.966:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.scan_file:
	sub rsp, 165
	mov [_rs_p], rsp
	mov rsp, rbp
.1023:
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
	jz .967
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
	ret
.967:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call read_file?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2850
	mov eax, 1
	mov edi, 2
	mov rsi, _s218
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.2850:
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
.969:
	mov rbx, 1
	test rbx, rbx
	jz .970
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
	jz .971
	jmp .970
.971:
.973:
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
	jz .189.1
	mov rbx, 1
	push rbx
	jmp .190.1
.189.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .192.1
	mov rbx, 1
	push rbx
	jmp .190.1
.192.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .194.1
	mov rbx, 1
	push rbx
	jmp .190.1
.194.1:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .196.1
	mov rbx, 1
	push rbx
	jmp .190.1
.196.1:
	mov rbx, 0
	push rbx
.197.1:
.190.1:
	pop rbx
	pop rsi
	test rbx, rbx
	jz .974
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .975
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .977
.975:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.977:
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
	jz .978
	jmp .974
.978:
	jmp .973
.974:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .980
	jmp .970
.980:
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
	jz .982
	mov rbx, 60
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .984
	mov rbx, 1
	push rbx
	jmp .986
.984:
	mov rbx, 0
	push rbx
.986:
	jmp .987
.982:
	add rsp, 8
	mov rbx, 0
	push rbx
.987:
	pop rbx
	pop rsi
	or rsi, rbx
	pop rbx
	or rbx, rsi
	test rbx, rbx
	jz .988
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
	jz .990
	add rsp, 8
	mov rbx, 62
	mov rsi, qword [_rs_p]
	mov qword [rsi + 92], rbx
	jmp .992
.990:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 92], rsi
.992:
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
.993:
	mov rbx, 1
	test rbx, rbx
	jz .994
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
	jz .995
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s221
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
.995:
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
	jz .997
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .999
.997:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.999:
	mov rbx, qword [_rs_p]
	add rbx, 108
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1000
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
	jz .1002
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s230
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
.1002:
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
	jmp .993
.1000:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 92]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1004
	jmp .994
.1004:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1006
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 1
	mov byte [rbx], sil
	jmp .993
.1006:
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
	jz .1008
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1008:
	jmp .993
.994:
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
	jz .1010
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s231
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
.1010:
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
	jz .1012
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
	jz .1014
	mov rbp, rsp
	mov rsp, [_rs_p]
	call find_file_to_include_stasdir
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1016
.1014:
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
.1016:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .1017
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
	mov rbx, _s236
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
.1017:
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
	jz .1019
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
	mov rbx, _s238
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
.1019:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1021
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s239
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.1021:
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
	jmp .1024
.1012:
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
.1024:
	jmp .969
	jmp .989
.988:
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
	jz .1026
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 141], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1027:
	mov rbx, 1
	test rbx, rbx
	jz .1028
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
	jz .1029
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s241
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
.1029:
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
	jz .1031
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .1032
.1031:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1034
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
	jz .1035
	jmp .1028
.1035:
	jmp .1032
.1034:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.1037:
.1032:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 141], rsi
	jmp .1027
.1028:
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
	jz .1038
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s242
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
	jmp .1039
.1038:
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
	jz .1041
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s231
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
	jmp .1039
.1041:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .1043
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
	jz .1044
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s243
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
.1044:
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
	jz .1046
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s230
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
.1046:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 133], rsi
.1043:
.1039:
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
	jmp .969
	jmp .989
.1026:
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
	jz .1049
.1050:
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
	jz .1051
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
	jz .1052
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
	ret
.1052:
	jmp .1050
.1051:
	jmp .969
.1049:
.989:
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
	jz .1054
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
	jz .1056
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
.1056:
.1054:
.1058:
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
	jz .189.2
	mov rbx, 1
	push rbx
	jmp .190.2
.189.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .192.2
	mov rbx, 1
	push rbx
	jmp .190.2
.192.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .194.2
	mov rbx, 1
	push rbx
	jmp .190.2
.194.2:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .196.2
	mov rbx, 1
	push rbx
	jmp .190.2
.196.2:
	mov rbx, 0
	push rbx
.197.2:
.190.2:
	pop rbx
	pop rsi
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .1059
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1060
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
	jz .1062
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1064
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
.1064:
.1062:
.1060:
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
	jz .1066
	jmp .1059
.1066:
	jmp .1058
.1059:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1068
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .969
.1068:
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
	jz .1070
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s244
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
.1070:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1072
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
	jz .1074
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
	mov r9, _s247
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
.1074:
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
	jnz .2851.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s248
	mov rdx, 94
	syscall
	mov rdi, 1
	jmp _exit
.2851.1:
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1076
	pop rbx
	not rbx
	inc rbx
	push rbx
.1076:
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
	jmp .1078
.1072:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 149]
	mov rdi, qword [rbx + 157]
	mov rbx, _s249
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
	jz .56.72
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
	jmp .58.72
.56.72:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.72:
	pop rbx
	test rbx, rbx
	jz .1079
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .969
.1079:
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
	jz .1081
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
	jmp .1083
.1081:
	mov rbx, 0
	push rbx
.1083:
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
.1078:
	jmp .969
.970:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1084
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s313
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
.1084:
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
	jz .1086
	mov rbx, _s497
	mov rsi, 8
	push rbx
	push rsi
	jmp .1087
.1086:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1089
	mov rbx, _s498
	mov rsi, 8
	push rbx
	push rsi
	jmp .1087
.1089:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1091
	mov rbx, _s499
	mov rsi, 15
	push rbx
	push rsi
	jmp .1087
.1091:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1093
	mov rbx, _s500
	mov rsi, 19
	push rbx
	push rsi
	jmp .1087
.1093:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1095
	mov rbx, _s501
	mov rsi, 20
	push rbx
	push rsi
	jmp .1087
.1095:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1097
	mov rbx, _s502
	mov rsi, 20
	push rbx
	push rsi
	jmp .1087
.1097:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1099
	mov rbx, _s503
	mov rsi, 20
	push rbx
	push rsi
	jmp .1087
.1099:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1101
	mov rbx, _s504
	mov rsi, 21
	push rbx
	push rsi
	jmp .1087
.1101:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1103
	mov rbx, _s505
	mov rsi, 9
	push rbx
	push rsi
	jmp .1087
.1103:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1105
	mov rbx, _s506
	mov rsi, 9
	push rbx
	push rsi
	jmp .1087
.1105:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1107
	mov rbx, _s507
	mov rsi, 11
	push rbx
	push rsi
	jmp .1087
.1107:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1109
	mov rbx, _s508
	mov rsi, 6
	push rbx
	push rsi
	jmp .1087
.1109:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1111
	mov rbx, _s509
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1111:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1113
	mov rbx, _s510
	mov rsi, 10
	push rbx
	push rsi
	jmp .1087
.1113:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1115
	mov rbx, _s511
	mov rsi, 8
	push rbx
	push rsi
	jmp .1087
.1115:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1117
	mov rbx, _s512
	mov rsi, 7
	push rbx
	push rsi
	jmp .1087
.1117:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1119
	mov rbx, _s255
	mov rsi, 6
	push rbx
	push rsi
	jmp .1087
.1119:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1121
	mov rbx, _s513
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1121:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1123
	mov rbx, _s514
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1123:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1125
	mov rbx, _s515
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1125:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1127
	mov rbx, _s516
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1127:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1129
	mov rbx, _s517
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1129:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1131
	mov rbx, _s518
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1131:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1133
	mov rbx, _s519
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1133:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1135
	mov rbx, _s520
	mov rsi, 6
	push rbx
	push rsi
	jmp .1087
.1135:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1137
	mov rbx, _s521
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1137:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1139
	mov rbx, _s522
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1139:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1141
	mov rbx, _s523
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1141:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1143
	mov rbx, _s524
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1143:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1145
	mov rbx, _s525
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1145:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1147
	mov rbx, _s526
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1147:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1149
	mov rbx, _s527
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1149:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1151
	mov rbx, _s278
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1151:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1153
	mov rbx, _s279
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1153:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1155
	mov rbx, _s280
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1155:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1157
	mov rbx, _s281
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1157:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1159
	mov rbx, _s282
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1159:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1161
	mov rbx, _s283
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1161:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1163
	mov rbx, _s284
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1163:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1165
	mov rbx, _s528
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1165:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1167
	mov rbx, _s529
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1167:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1169
	mov rbx, _s530
	mov rsi, 2
	push rbx
	push rsi
	jmp .1087
.1169:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1171
	mov rbx, _s531
	mov rsi, 2
	push rbx
	push rsi
	jmp .1087
.1171:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1173
	mov rbx, _s532
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1173:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1175
	mov rbx, _s533
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1175:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1177
	mov rbx, _s534
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1177:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1179
	mov rbx, _s535
	mov rsi, 4
	push rbx
	push rsi
	jmp .1087
.1179:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1181
	mov rbx, _s536
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1181:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1183
	mov rbx, _s537
	mov rsi, 5
	push rbx
	push rsi
	jmp .1087
.1183:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1185
	mov rbx, _s295
	mov rsi, 2
	push rbx
	push rsi
	jmp .1087
.1185:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1187
	mov rbx, _s296
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1187:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1189
	mov rbx, _s297
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1189:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1191
	mov rbx, _s298
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1191:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1193
	mov rbx, _s299
	mov rsi, 2
	push rbx
	push rsi
	jmp .1087
.1193:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1195
	mov rbx, _s300
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1195:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1197
	mov rbx, _s301
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1197:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1199
	mov rbx, _s302
	mov rsi, 3
	push rbx
	push rsi
	jmp .1087
.1199:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1201
	mov rbx, _s538
	mov rsi, 9
	push rbx
	push rsi
	jmp .1087
.1201:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1203
	mov rbx, _s539
	mov rsi, 9
	push rbx
	push rsi
	jmp .1087
.1203:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1205
	mov rbx, _s540
	mov rsi, 9
	push rbx
	push rsi
	jmp .1087
.1205:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2852
	mov eax, 1
	mov edi, 2
	mov rsi, _s541
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.2852:
	push rbx
	push rsi
.1206:
.1087:
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
	jnz .2853
	mov eax, 1
	mov edi, 2
	mov rsi, _s356
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2853:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s495
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
.1207:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1208
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2854.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2854.1:
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
	mov rbx, _s496
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
	mov rbx, _s496
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
	jmp .1207
.1208:
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
	jnz .2855
	mov eax, 1
	mov edi, 2
	mov rsi, _s385
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2855:
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
	jnz .2856
	mov eax, 1
	mov edi, 2
	mov rsi, _s325
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2856:
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
	jnz .2857
	mov eax, 1
	mov edi, 2
	mov rsi, _s399
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2857:
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
	jnz .2858
	mov eax, 1
	mov edi, 2
	mov rsi, _s413
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2858:
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
	jnz .2859
	mov eax, 1
	mov edi, 2
	mov rsi, _s397
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2859:
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
	mov rbx, _s415
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
	jz .56.73
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
	jmp .58.73
.56.73:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.73:
	pop rbx
	test rbx, rbx
	jz .1209
	mov rbx, 1
	push rbx
	jmp .1210
.1209:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s416
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
	jz .56.74
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
	jmp .58.74
.56.74:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.74:
	pop rbx
	test rbx, rbx
	jz .1212
	mov rbx, 2
	push rbx
	jmp .1210
.1212:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s417
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
	jz .56.75
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
	jmp .58.75
.56.75:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.75:
	pop rbx
	test rbx, rbx
	jz .1214
	mov rbx, 4
	push rbx
	jmp .1210
.1214:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s418
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
	jz .56.76
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
	jmp .58.76
.56.76:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.76:
	pop rbx
	test rbx, rbx
	jz .1216
	mov rbx, 8
	push rbx
	jmp .1210
.1216:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1217:
.1210:
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
	jz .1218
	mov rbx, 1
	push rbx
	jmp .1220
.1218:
	mov rbx, 0
	push rbx
.1220:
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
	jz .1221
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1221:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2860.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2860.7:
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
	jz .1225
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
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
	jnz .2861.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2861.8:
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
	jz .1227
	mov rbx, 0
	push rbx
	jmp .1229
.1227:
	mov rbx, 1
	push rbx
.1229:
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
	jz .1230
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1230:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2862.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2862.9:
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
	jnz .2863.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2863.10:
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
	jz .1232
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2864.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2864.11:
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
	jmp .1234
.1232:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	push rbx
	push rsi
	push rdi
.1234:
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
	jz .1235
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.1237:
	mov rbx, 1
	test rbx, rbx
	jz .1238
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
	jnz .2865.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s352
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2865.3:
	mov rbx, _s353
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
	jz .1239
	jmp .1238
.1239:
	pop rbx
	dec rbx
	push rbx
	jmp .1237
.1238:
	add rsp, 8
.1235:
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
.1241:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1242
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
	jnz .2866.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2866.1:
	pop rbx
	inc rbx
	push rbx
	jmp .1241
.1242:
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
	jz .1243
	mov rbx, [_gpos]
	mov rsi, _s354
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
.1243:
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
	jz .1245
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s354
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
.1245:
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
.1247:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1248
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
	jz .1249
	add rsp, 8
	jmp .1248
.1249:
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
	jmp .1247
.1248:
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
	jnz .2867
	mov eax, 1
	mov edi, 2
	mov rsi, _s410
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2867:
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
	jnz .2868.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2868.2:
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
	jnz .2869.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2869.3:
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
	jz .1251
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
	jnz .2870.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2870.7:
	jmp .1252
.1251:
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
	jz .1254
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
	jnz .2871.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s376
	mov rdx, 125
	syscall
	mov rdi, 1
	jmp _exit
.2871.1:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .1252
.1254:
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
	jz .1256
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
	jnz .2872.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s376
	mov rdx, 125
	syscall
	mov rdi, 1
	jmp _exit
.2872.2:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov qword [rbx], rsi
	jmp .1252
.1256:
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
	jnz .2873.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s376
	mov rdx, 125
	syscall
	mov rdi, 1
	jmp _exit
.2873.3:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov qword [rbx], rsi
	jmp .1252
.1258:
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
	jz .1260
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
	jnz .2874.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s377
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2874.1:
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
	jnz .2875.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2875.8:
	jmp .1252
.1260:
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
	jz .1262
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	jmp .1252
.1262:
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
	jz .1264
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
	jnz .2876.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2876.1:
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
	jnz .2877.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2877.2:
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
	jnz .2878.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2878.9:
	jmp .1252
.1264:
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
	jz .1266
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
	jnz .2879.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2879.3:
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
	jnz .2880.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2880.4:
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
	jnz .2881.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2881.10:
	jmp .1252
.1266:
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
	jnz .2882.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2882.5:
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
	jnz .2883.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2883.6:
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
	jnz .2884.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2884.11:
	jmp .1252
.1268:
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
	jnz .2885.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2885.7:
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
	jnz .2886.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2886.8:
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
	jnz .2887.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2887.12:
	jmp .1252
.1270:
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
	jnz .2888.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2888.9:
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
	jnz .2889.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2889.10:
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
	jnz .2890.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2890.13:
	jmp .1252
.1272:
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
	jnz .2891.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2891.11:
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
	jnz .2892.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2892.12:
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
	jnz .2893.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2893.14:
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
	jnz .2894.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2894.15:
	jmp .1252
.1274:
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
	jnz .2895.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2895.13:
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
	jnz .2896.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2896.14:
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
	jnz .2897.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2897.16:
	jmp .1252
.1276:
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
	jnz .2898.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2898.15:
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
	jnz .2899.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2899.16:
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
	jnz .2900.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2900.17:
	jmp .1252
.1278:
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
	jnz .2901.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2901.17:
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
	jnz .2902.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2902.18:
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
	jnz .2903.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2903.18:
	jmp .1252
.1280:
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
	jnz .2904.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2904.19:
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
	jnz .2905.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2905.20:
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
	jnz .2906.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2906.19:
	jmp .1252
.1282:
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
	jnz .2907.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2907.21:
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
	jnz .2908.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2908.22:
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
	jnz .2909.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2909.20:
	jmp .1252
.1284:
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
	jnz .2910.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2910.23:
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
	jnz .2911.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2911.24:
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
	jnz .2912.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2912.21:
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
	jnz .2913.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2913.22:
	jmp .1252
.1286:
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
	jz .1288
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
	jnz .2914.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2914.7:
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
	jnz .2915.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2915.23:
	jmp .1252
.1288:
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
	jnz .2916.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2916.25:
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
	jnz .2917.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2917.26:
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
	jnz .2918.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2918.24:
	jmp .1252
.1290:
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
	jz .1292
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
	jnz .2919.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2919.27:
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
	jnz .2920.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2920.28:
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
	jnz .2921.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2921.25:
	jmp .1252
.1292:
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
	jnz .2922.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2922.29:
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
	jnz .2923.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2923.30:
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
	jnz .2924.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2924.26:
	jmp .1252
.1294:
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
	jnz .2925.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2925.31:
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
	jnz .2926.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2926.32:
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
	jnz .2927.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2927.27:
	jmp .1252
.1296:
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
	jnz .2928.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2928.33:
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
	jnz .2929.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2929.34:
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
	jnz .2930.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2930.28:
	jmp .1252
.1298:
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
	jnz .2931.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2931.35:
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
	jnz .2932.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2932.36:
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
	jnz .2933.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2933.29:
	jmp .1252
.1300:
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
	jnz .2934.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2934.37:
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
	jnz .2935.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2935.38:
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
	jnz .2936.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2936.30:
	jmp .1252
.1302:
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
	jnz .2937.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2937.39:
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
	jnz .2938.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2938.40:
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
	jnz .2939.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2939.31:
	jmp .1252
.1304:
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
	jnz .2940.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2940.41:
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
	jnz .2941.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2941.42:
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
	jnz .2942.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2942.32:
	jmp .1252
.1306:
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
	jnz .2943.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2943.43:
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
	jnz .2944.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2944.44:
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
	jnz .2945.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2945.33:
	jmp .1252
.1308:
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
	jnz .2946.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2946.45:
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
	jnz .2947.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2947.46:
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
	jnz .2948.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2948.47:
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
	jnz .2949.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2949.34:
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
	jnz .2950.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2950.35:
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
	jnz .2951.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2951.36:
	jmp .1252
.1310:
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
	jz .1312
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
	jnz .2952.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2952.8:
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
	jnz .2953.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2953.37:
	jmp .1252
.1312:
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
	jnz .2954.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2954.48:
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
	jnz .2955.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2955.49:
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
	jnz .2956.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2956.50:
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
	jnz .2957.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2957.51:
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
	jnz .2958.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2958.38:
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
	jnz .2959.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2959.39:
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
	jnz .2960.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2960.40:
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
	jnz .2961.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s225
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2961.41:
	jmp .1252
.1314:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1315:
.1252:
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
.1329:
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
	jz .1316
	mov rbx, _s371
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
.1316:
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
.1318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1319
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2962.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2962.4:
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
	jnz .2963.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2963.5:
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
	jz .1320
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
	jnz .2964.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2964.2:
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
	jnz .2965.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2965.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 1080]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1322
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1080], rbx
.1322:
	jmp .1324
.1320:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1080]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1325
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1327
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2966.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2966.1:
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
	jmp .1328
.1327:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 11
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1331
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
	jnz .2967.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.2967.52:
	mov rbx, 0
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1332
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
	jz .1334
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1336
.1334:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2968
	mov eax, 1
	mov edi, 2
	mov rsi, _s374
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2968:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1336:
.1332:
	jmp .1328
.1331:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 12
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1338
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
	jz .1339
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1341
.1339:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2969
	mov eax, 1
	mov edi, 2
	mov rsi, _s375
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2969:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1341:
	jmp .1328
.1338:
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
	jnz .2970
	mov eax, 1
	mov edi, 2
	mov rsi, _s378
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.2970:
.1342:
.1328:
.1325:
.1324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1072], rsi
	jmp .1318
.1319:
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2971
	mov eax, 1
	mov edi, 2
	mov rsi, _s379
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2971:
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
	jnz .2972
	mov eax, 1
	mov edi, 2
	mov rsi, _s558
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2972:
	mov rsi, [_gfwrite_buffer.len]
	add rbx, rsi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1343
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
	jnz .2973.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2973.1:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
.1343:
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
	jz .1345
	mov rbx, _s600
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1345:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1348
	mov rbx, _s601
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1348:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1350
	mov rbx, _s602
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1350:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1352
	mov rbx, _s603
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1352:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1354
	mov rbx, _s604
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1354:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1356
	mov rbx, _s605
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1358
	mov rbx, _s606
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1346
.1358:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1359:
.1346:
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
.1360:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1361
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
	jmp .1360
.1361:
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
	jz .1362
	mov rbx, _s463
	mov rsi, 3
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
	mov rbx, _s464
	mov rsi, 3
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
	mov rbx, _s465
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
	mov rbx, _s466
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
	mov rbx, _s299
	mov rsi, 2
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
	mov rbx, _s467
	mov rsi, 2
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
	mov rbx, _s468
	mov rsi, 3
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
	mov rbx, _s469
	mov rsi, 3
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
	mov rbx, _s470
	mov rsi, 3
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
	mov rbx, _s471
	mov rsi, 3
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
	mov rbx, _s472
	mov rsi, 3
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
	mov rbx, _s473
	mov rsi, 3
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
	mov rbx, _s474
	mov rsi, 3
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
	mov rbx, _s475
	mov rsi, 3
	push rbx
	push rsi
	jmp .1363
.1389:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2974
	mov eax, 1
	mov edi, 2
	mov rsi, _s590
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2974:
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
	jz .1391
	mov rbx, _s707
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1391:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1394
	mov rbx, _s708
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1394:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1396
	mov rbx, _s709
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1396:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1398
	mov rbx, _s710
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1398:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1400
	mov rbx, _s711
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1400:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1402
	mov rbx, _s712
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1402:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1404
	mov rbx, _s713
	mov rsi, 4
	push rbx
	push rsi
	jmp .1392
.1404:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1406
	mov rbx, _s714
	mov rsi, 4
	push rbx
	push rsi
	jmp .1392
.1406:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1408
	mov rbx, _s715
	mov rsi, 4
	push rbx
	push rsi
	jmp .1392
.1408:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1410
	mov rbx, _s716
	mov rsi, 4
	push rbx
	push rsi
	jmp .1392
.1410:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1412
	mov rbx, _s717
	mov rsi, 4
	push rbx
	push rsi
	jmp .1392
.1412:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1414
	mov rbx, _s718
	mov rsi, 4
	push rbx
	push rsi
	jmp .1392
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1416
	mov rbx, _s719
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1416:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1418
	mov rbx, _s720
	mov rsi, 3
	push rbx
	push rsi
	jmp .1392
.1418:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2975
	mov eax, 1
	mov edi, 2
	mov rsi, _s721
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2975:
	push rbx
	push rsi
.1419:
.1392:
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
	jz .1420
	mov rbx, _s691
	mov rsi, 2
	push rbx
	push rsi
	jmp .1421
.1420:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1423
	mov rbx, _s692
	mov rsi, 2
	push rbx
	push rsi
	jmp .1421
.1423:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1425
	mov rbx, _s693
	mov rsi, 2
	push rbx
	push rsi
	jmp .1421
.1425:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1427
	mov rbx, _s694
	mov rsi, 2
	push rbx
	push rsi
	jmp .1421
.1427:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1429
	mov rbx, _s695
	mov rsi, 3
	push rbx
	push rsi
	jmp .1421
.1429:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1431
	mov rbx, _s696
	mov rsi, 3
	push rbx
	push rsi
	jmp .1421
.1431:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1433
	mov rbx, _s697
	mov rsi, 4
	push rbx
	push rsi
	jmp .1421
.1433:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1435
	mov rbx, _s698
	mov rsi, 4
	push rbx
	push rsi
	jmp .1421
.1435:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1437
	mov rbx, _s699
	mov rsi, 4
	push rbx
	push rsi
	jmp .1421
.1437:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1439
	mov rbx, _s700
	mov rsi, 4
	push rbx
	push rsi
	jmp .1421
.1439:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1441
	mov rbx, _s701
	mov rsi, 4
	push rbx
	push rsi
	jmp .1421
.1441:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1443
	mov rbx, _s702
	mov rsi, 4
	push rbx
	push rsi
	jmp .1421
.1443:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1445
	mov rbx, _s703
	mov rsi, 2
	push rbx
	push rsi
	jmp .1421
.1445:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1447
	mov rbx, _s704
	mov rsi, 2
	push rbx
	push rsi
	jmp .1421
.1447:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2976
	mov eax, 1
	mov edi, 2
	mov rsi, _s705
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2976:
	push rbx
	push rsi
.1448:
.1421:
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
	jz .1449
	mov rbx, _s657
	mov rsi, 2
	push rbx
	push rsi
	jmp .1450
.1449:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1452
	mov rbx, _s658
	mov rsi, 2
	push rbx
	push rsi
	jmp .1450
.1452:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1454
	mov rbx, _s659
	mov rsi, 3
	push rbx
	push rsi
	jmp .1450
.1454:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1456
	mov rbx, _s660
	mov rsi, 3
	push rbx
	push rsi
	jmp .1450
.1456:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1458
	mov rbx, _s661
	mov rsi, 3
	push rbx
	push rsi
	jmp .1450
.1458:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1460
	mov rbx, _s662
	mov rsi, 3
	push rbx
	push rsi
	jmp .1450
.1460:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1462
	mov rbx, _s663
	mov rsi, 4
	push rbx
	push rsi
	jmp .1450
.1462:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1464
	mov rbx, _s664
	mov rsi, 4
	push rbx
	push rsi
	jmp .1450
.1464:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1466
	mov rbx, _s665
	mov rsi, 4
	push rbx
	push rsi
	jmp .1450
.1466:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1468
	mov rbx, _s666
	mov rsi, 4
	push rbx
	push rsi
	jmp .1450
.1468:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1470
	mov rbx, _s667
	mov rsi, 4
	push rbx
	push rsi
	jmp .1450
.1470:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1472
	mov rbx, _s668
	mov rsi, 4
	push rbx
	push rsi
	jmp .1450
.1472:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1474
	mov rbx, _s669
	mov rsi, 2
	push rbx
	push rsi
	jmp .1450
.1474:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1476
	mov rbx, _s670
	mov rsi, 2
	push rbx
	push rsi
	jmp .1450
.1476:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2977
	mov eax, 1
	mov edi, 2
	mov rsi, _s671
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2977:
	push rbx
	push rsi
.1477:
.1450:
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
	jz .56.77
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
	jmp .58.77
.56.77:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.77:
	pop rbx
	test rbx, rbx
	jz .1478
	mov rbx, 0
	push rbx
	jmp .1479
.1478:
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
	jz .56.78
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
	jmp .58.78
.56.78:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.78:
	pop rbx
	test rbx, rbx
	jz .1481
	mov rbx, 11
	push rbx
	jmp .1479
.1481:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s465
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
	jz .56.79
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
	jmp .58.79
.56.79:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.79:
	pop rbx
	test rbx, rbx
	jz .1483
	mov rbx, 1
	push rbx
	jmp .1479
.1483:
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
	jz .56.80
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
	jmp .58.80
.56.80:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.80:
	pop rbx
	test rbx, rbx
	jz .1485
	mov rbx, 2
	push rbx
	jmp .1479
.1485:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s299
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
	jz .56.81
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
	jmp .58.81
.56.81:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.81:
	pop rbx
	test rbx, rbx
	jz .1487
	mov rbx, 3
	push rbx
	jmp .1479
.1487:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s467
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
	jz .56.82
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
	jmp .58.82
.56.82:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.82:
	pop rbx
	test rbx, rbx
	jz .1489
	mov rbx, 4
	push rbx
	jmp .1479
.1489:
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
	jz .56.83
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
	jmp .58.83
.56.83:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.83:
	pop rbx
	test rbx, rbx
	jz .1491
	mov rbx, 5
	push rbx
	jmp .1479
.1491:
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
	jz .56.84
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
	jmp .58.84
.56.84:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.84:
	pop rbx
	test rbx, rbx
	jz .1493
	mov rbx, 6
	push rbx
	jmp .1479
.1493:
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
	jz .56.85
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
	jmp .58.85
.56.85:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.85:
	pop rbx
	test rbx, rbx
	jz .1495
	mov rbx, 7
	push rbx
	jmp .1479
.1495:
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
	jz .56.86
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
	jmp .58.86
.56.86:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.86:
	pop rbx
	test rbx, rbx
	jz .1497
	mov rbx, 8
	push rbx
	jmp .1479
.1497:
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
	jz .56.87
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
	jmp .58.87
.56.87:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.87:
	pop rbx
	test rbx, rbx
	jz .1499
	mov rbx, 9
	push rbx
	jmp .1479
.1499:
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
	jz .56.88
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
	jmp .58.88
.56.88:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.88:
	pop rbx
	test rbx, rbx
	jz .1501
	mov rbx, 10
	push rbx
	jmp .1479
.1501:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s474
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
	jz .56.89
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
	jmp .58.89
.56.89:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.89:
	pop rbx
	test rbx, rbx
	jz .1503
	mov rbx, 12
	push rbx
	jmp .1479
.1503:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s475
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
	jz .56.90
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
	jmp .58.90
.56.90:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.90:
	pop rbx
	test rbx, rbx
	jz .1505
	mov rbx, 13
	push rbx
	jmp .1479
.1505:
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1506:
.1479:
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
	jnz .2978
	mov eax, 1
	mov edi, 2
	mov rsi, _s591
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2978:
	mov rsi, [_grallocator_stack.len]
	mov rdi, 2048
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2979
	mov eax, 1
	mov edi, 2
	mov rsi, _s592
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2979:
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
	jnz .2980
	mov eax, 1
	mov edi, 2
	mov rsi, _s619
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2980:
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
.1514:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1515
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
	jz .1516
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1516:
	pop rbx
	inc rbx
	push rbx
	jmp .1514
.1515:
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
.1518:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1519
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
	jz .1520
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
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
	add rsp, 8
	ret
r_stack_deep_flush:
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rsi, rdi
	mov r8, rsi
	mov r9, 14
	xor r10, r10
	cmp r8, r9
	setb r10b
	test r10, r10
	jnz .2981.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2981.1:
	mov r8, qword _grallocator_mask
	add rsi, r8
	mov r8, 0
	mov byte [rsi], r8b
	mov rsi, _s589
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
	jmp .1522
.1523:
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
.1524:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1525
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s589
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
	jmp .1524
.1525:
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
.1528:
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
	jz .1526
	add rsp, 8
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2982
	mov eax, 1
	mov edi, 2
	mov rsi, _s587
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2982:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_stack_deep_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1528
.1526:
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
	jnz .2983.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s647
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2983.1:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1529
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
	jnz .2984.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2984.1:
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
	jnz .2985.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2985.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s594
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
	jz .1531
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1531:
.1529:
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
	jz .1533
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	jmp .1535
.1533:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s620
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
.1535:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2986.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2986.2:
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
	jnz .2987.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s647
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2987.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1536
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1536:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1538
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
	jz .1540
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1540:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2988.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2988.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s594
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
	jmp .1542
.1538:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2989.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s647
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2989.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .2990
	mov eax, 1
	mov edi, 2
	mov rsi, _s648
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2990:
	mov rbx, _s620
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
.1542:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2991.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2991.3:
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
	jz .1543
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1545
.1543:
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
	jnz .2992.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2992.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s620
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
.1545:
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
	jnz .2993.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2993.5:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s594
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
	mov rbx, _s595
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
	jnz .2994.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2994.6:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s594
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
	mov rbx, _s595
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
	jnz .2995.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2995.7:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s594
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
	mov rbx, _s595
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
	jnz .2996
	mov eax, 1
	mov edi, 2
	mov rsi, _s484
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2996:
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
.1546:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1547
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
	jz .1548
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1548:
	pop rbx
	inc rbx
	push rbx
	jmp .1546
.1547:
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
	jz .1550
	mov rbx, [_gpos]
	mov rsi, _s462
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
.1550:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1552
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2997.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2997.12:
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
	jz .1554
.1556:
	mov rbx, 1
	test rbx, rbx
	jz .1557
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2998.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2998.13:
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
	jz .1558
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2999.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2999.14:
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
	jz .1560
	mov rbx, [_gpos]
	mov rsi, _s476
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
.1560:
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
	jz .1562
	mov rbx, [_gpos]
	mov rsi, _s477
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
.1562:
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
	jmp .1564
.1558:
	mov rbx, [_gpos]
	mov rsi, _s478
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
.1564:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1565
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
	jz .1567
	jmp .1557
.1567:
	jmp .1569
.1565:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s479
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
.1569:
	jmp .1556
.1557:
.1554:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3000.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3000.15:
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
	jz .1570
.1572:
	mov rbx, 1
	test rbx, rbx
	jz .1573
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1574
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
	jz .1576
	jmp .1573
.1576:
	jmp .1578
.1574:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s479
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
.1578:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3001.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3001.16:
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
	jz .1579
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3002.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3002.17:
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
	jz .1581
	mov rbx, [_gpos]
	mov rsi, _s476
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
.1581:
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
	jz .1583
	mov rbx, [_gpos]
	mov rsi, _s480
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
.1583:
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
	jmp .1585
.1579:
	mov rbx, [_gpos]
	mov rsi, _s478
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
.1585:
	jmp .1572
.1573:
.1570:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3003.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3003.18:
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
	jz .1586
	mov rbx, [_gpos]
	mov rsi, _s481
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
.1586:
.1552:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gpos]
	inc rsi
	mov rdi, 40
	add rbx, rdi
	mov dword [rbx], esi
.1588:
	mov rbx, 1
	test rbx, rbx
	jz .1589
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1590
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1592
	jmp .1589
.1592:
	jmp .1594
.1590:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s482
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
.1594:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3004.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3004.19:
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
	jz .1595
	mov rbx, [_gpos]
	mov rsi, _s483
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
.1595:
	jmp .1588
.1589:
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
	jz .1597
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1597:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1599:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1600
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3005.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3005.2:
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
	jz .56.91
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
	jmp .58.91
.56.91:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.91:
	pop rbx
	test rbx, rbx
	jz .1601
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1601:
	pop rbx
	inc rbx
	push rbx
	jmp .1599
.1600:
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
	jz .1603
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1603:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1605:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1606
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3006.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3006.1:
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
	jz .56.92
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
	jmp .58.92
.56.92:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.92:
	pop rbx
	test rbx, rbx
	jz .1607
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1607:
	pop rbx
	inc rbx
	push rbx
	jmp .1605
.1606:
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
	jz .1609
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1609:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, [_gvar_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1611:
	mov rbx, 1
	test rbx, rbx
	jz .1612
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3007.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3007.1:
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
	jz .56.93
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
	jmp .58.93
.56.93:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.93:
	pop rbx
	test rbx, rbx
	jz .1613
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1613:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .1615
	jmp .1612
.1615:
	pop rbx
	dec rbx
	push rbx
	jmp .1611
.1612:
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
.1624:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1625
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3008.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3008.1:
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
	jz .1626
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1626:
	pop rbx
	inc rbx
	push rbx
	jmp .1624
.1625:
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
	jnz .3009
	mov eax, 1
	mov edi, 2
	mov rsi, _s456
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3009:
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
	jnz .3010
	mov eax, 1
	mov edi, 2
	mov rsi, _s433
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3010:
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
	jz .1628
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3011.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3011.1:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3012.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3012.2:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1630
.1628:
	mov rbx, 0
	push rbx
.1630:
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
	jnz .3013.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3013.20:
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
	jz .1631
	mov rbx, [_gpos]
	mov rsi, _s338
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
	jnz .3014.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3014.2:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gvar_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s339
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
	jmp .1633
.1631:
	add rsp, 8
.1633:
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
	jz .1634
	mov rbx, [_gpos]
	mov rsi, _s341
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
	jnz .3015.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3015.3:
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
	jnz .3016.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3016.6:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s343
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
	jmp .1636
.1634:
	add rsp, 8
.1636:
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
	jz .1637
	mov rbx, [_gpos]
	mov rsi, _s345
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
	jnz .3017.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3017.2:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gcfunctions
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s343
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
	jmp .1639
.1637:
	add rsp, 8
.1639:
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
	jz .1640
	mov rbx, [_gpos]
	mov rsi, _s386
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
.1640:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3018.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3018.21:
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
	jz .1642
	mov rbx, [_gpos]
	mov rsi, _s387
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
.1642:
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
	jz .1644
	mov rbx, [_gpos]
	mov rsi, _s388
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
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1646
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1647
.1646:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1649
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
	jz .1650
	mov rbx, [_gpos]
	mov rsi, _s389
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
.1650:
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
	jnz .3019.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3019.22:
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
	jnz .3020.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3020.23:
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
	jz .1652
	mov rbx, [_gpos]
	mov rsi, _s390
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
.1652:
	jmp .1647
.1649:
	mov rbx, [_gpos]
	mov rsi, _s391
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
.1654:
.1647:
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
	jz .1655
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s392
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
.1655:
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
	jnz .3021.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3021.24:
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
	mov r11, _s393
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
	jz .56.94
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
	jmp .58.94
.56.94:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.94:
	pop rbx
	test rbx, rbx
	jz .1657
	mov rbx, [_gfunction_attributes]
	mov rsi, 2
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1659
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
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
.1659:
	mov rbx, [_gfunction_attributes]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1661
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, _s395
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
.1661:
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
	jz .1663
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s396
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
.1663:
	mov rbx, [_gfunctions.len]
	mov [_gmain_fn_idx], rbx
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .1665
.1657:
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
	jz .1666
	mov rbx, 1
	push rbx
	jmp .1668
.1666:
	mov rbx, 0
	push rbx
.1668:
.1665:
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
	jnz .3022
	mov eax, 1
	mov edi, 2
	mov rsi, _s398
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3022:
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
	jz .1669
	mov rbx, [_gpos]
	mov rsi, _s426
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
.1669:
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
	jz .1671
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3023.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3023.25:
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
	jnz .3024.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3024.26:
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
	jz .1673
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
.1673:
.1671:
	mov rbx, [_gpos]
	mov rsi, _s427
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
	jz .1675
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s428
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
	jnz .3025.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3025.27:
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
	mov rbx, _s429
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
	jmp .1677
.1675:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s430
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
.1677:
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
	jnz .3026.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3026.28:
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
	jz .1678
	mov rbx, [_gpos]
	mov rsi, _s336
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
.1678:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3027.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3027.29:
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
	jz .1680
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3028.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3028.3:
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
	jz .1682
	mov rbx, 1
	push rbx
	jmp .1684
.1682:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3029.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3029.3:
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
.1684:
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
	jz .1685
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1687
	mov rbx, [_gpos]
	mov rsi, _s358
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
.1687:
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
	jmp .1689
.1685:
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
	jz .1690
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1692
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
	jz .1694
	mov rbx, [_gpos]
	mov rsi, _s359
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
.1694:
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
	jz .1696
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
	jmp .1698
.1696:
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
.1698:
	jmp .1693
.1692:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1700
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
	jz .1701
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
	jmp .1703
.1701:
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
.1703:
	jmp .1693
.1700:
	mov rbx, 0
	test rbx, rbx
	jnz .3030
	mov eax, 1
	mov edi, 2
	mov rsi, _s360
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.3030:
.1704:
.1693:
	jmp .1691
.1690:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1706
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1707
	mov rbx, [_gpos]
	mov rsi, _s361
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
	jmp .1708
.1707:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1710
	mov rbx, [_gpos]
	mov rsi, _s362
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
.1710:
.1708:
	jmp .1691
.1706:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1712
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1713
	mov rbx, [_gpos]
	mov rsi, _s363
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
	jmp .1714
.1713:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1716
	mov rbx, [_gpos]
	mov rsi, _s364
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
.1716:
.1714:
	jmp .1691
.1712:
	mov rbx, 0
	test rbx, rbx
	jnz .3031
	mov eax, 1
	mov edi, 2
	mov rsi, _s365
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.3031:
.1717:
.1691:
	add rsp, 8
.1689:
	jmp .1718
.1680:
	mov rbx, [_gpos]
	mov rsi, _s366
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
.1718:
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
	jnz .3032.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3032.30:
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
	jz .1719
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1719:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3033.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3033.4:
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
	jz .1721
	mov rbx, [_gpos]
	mov rsi, _s347
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
.1721:
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
	jnz .3034.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3034.31:
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
	jz .1723
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_var_interaction
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1724
.1723:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1726
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3035.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3035.32:
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
	jmp .1724
.1726:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1728
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
	jz .1729
	mov rbx, [_gpos]
	mov rsi, _s367
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
.1729:
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
	jmp .1724
.1728:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1732
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
	jmp .1724
.1732:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1734
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
	jmp .1724
.1734:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1736
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
	jmp .1724
.1736:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1738
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
	jmp .1724
.1738:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1740
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
	jmp .1724
.1740:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1742
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
	jmp .1724
.1742:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1744
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
	jmp .1724
.1744:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1746
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
	jmp .1724
.1746:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1748
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
	jmp .1724
.1748:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1750
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
	jmp .1724
.1750:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1752
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
	jmp .1724
.1752:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1754
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
	jmp .1724
.1754:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1756
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
	jmp .1724
.1756:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1758
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
	jmp .1724
.1758:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1760
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
	jmp .1724
.1760:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1762
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
	jnz .3036.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3036.1:
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
	jnz .3037.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3037.2:
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
	jnz .3038.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3038.4:
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
	jnz .3039.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3039.5:
	jmp .1724
.1762:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1764
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
	jnz .3040.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s369
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3040.1:
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
	jnz .3041.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3041.6:
	jmp .1724
.1764:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1766
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
	jnz .3042.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s352
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.3042.4:
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
	jnz .3043.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3043.7:
	jmp .1724
.1766:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1768
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
	jnz .3044.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s352
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.3044.5:
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
	jnz .3045.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3045.8:
	jmp .1724
.1768:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1770
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
	jnz .3046.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3046.3:
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
	jnz .3047.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3047.4:
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
	jnz .3048.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3048.5:
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
	jnz .3049.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3049.9:
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
	jnz .3050.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3050.10:
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
	jnz .3051.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3051.11:
	jmp .1724
.1770:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1772
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
	jnz .3052.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3052.6:
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
	jnz .3053.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3053.7:
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
	jnz .3054.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3054.8:
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
	jnz .3055.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s368
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3055.9:
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
	jnz .3056.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3056.12:
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
	jnz .3057.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3057.13:
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
	jnz .3058.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3058.14:
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
	jnz .3059.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s355
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.3059.15:
	jmp .1724
.1772:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1774
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
	jmp .1724
.1774:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1776
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
	jmp .1724
.1776:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1778
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
	jmp .1724
.1778:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1780
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
	jmp .1724
.1780:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1782
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
	jmp .1724
.1782:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1784
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
	jmp .1724
.1784:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1786
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
	jmp .1724
.1786:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1788
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
	jmp .1724
.1788:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1790
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
	jmp .1724
.1790:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1792
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
	jmp .1724
.1792:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1794
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
	jmp .1724
.1794:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1795:
.1724:
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
.1796:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1797
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3060.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3060.2:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3061.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3061.4:
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
	jz .1799
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3062.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3062.3:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3063.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3063.5:
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
	jz .1801
	pop rbx
	mov rsi, rbx
	mov rdi, [_gpos]
	dec rdi
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1803
	pop rbx
	inc rbx
	mov rsi, _s441
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
	jmp .1805
.1803:
	add rsp, 8
.1805:
	jmp .1806
.1801:
	add rsp, 8
.1806:
	mov rbx, 1
	push rbx
	jmp .1807
.1799:
	mov rbx, 0
	push rbx
.1807:
	jmp .1808
.1797:
	mov rbx, 0
	push rbx
.1808:
	pop rbx
	test rbx, rbx
	jz .1809
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	jmp .1796
.1809:
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
	jz .1810
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
	jz .1812
	mov rbx, [_gpos]
	mov rsi, _s424
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
.1812:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1814
	mov rbx, 11
	push rbx
	jmp .1816
.1814:
	mov rbx, 12
	push rbx
.1816:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
.1810:
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
	jnz .3064.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3064.4:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3065.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3065.6:
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
	jz .1817
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
.1817:
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
	jz .1819
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
	jnz .3066.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3066.7:
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
	jz .1821
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
	jz .1823
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
	jnz .3067.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3067.8:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s444
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
	jmp .1824
.1823:
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
	jz .1826
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
	jnz .3068.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3068.9:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s445
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
.1826:
.1824:
.1821:
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
	jnz .3069
	mov eax, 1
	mov edi, 2
	mov rsi, _s446
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3069:
	jmp .1820
.1819:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1828
	mov rbx, qword [_rs_p]
	add rbx, 41
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3070.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3070.5:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3071.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3071.7:
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
	jmp .1820
.1828:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1830
	jmp .1820
.1830:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1832
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1833
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
.1833:
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
	jz .1835
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s447
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
	jmp .1836
.1835:
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
	jz .1838
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s448
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
.1838:
.1836:
	jmp .1820
.1832:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1840
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
	jnz .3072.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3072.33:
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
	jz .1841
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
	jz .1843
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1845
.1843:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
.1845:
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
	jz .1846
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s449
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
.1846:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3073.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3073.34:
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
	jz .1848
	mov rbx, [_gpos]
	mov rsi, _s424
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
.1848:
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
	jmp .1842
.1841:
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
	jnz .3074.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3074.35:
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
	jz .1851
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
	jz .1852
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1854
.1852:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
.1854:
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
	jmp .1842
.1851:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1856
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
.1856:
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
	jz .1858
	mov rbx, [_gpos]
	mov rsi, _s450
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
.1858:
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
.1855:
.1842:
	jmp .1820
.1840:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1861
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
	jnz .3075.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3075.36:
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
	jz .1862
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
	jnz .3076.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3076.37:
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
	jz .1864
	mov rbx, 6
	push rbx
	jmp .1865
.1864:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1867
	mov rbx, 5
	push rbx
	jmp .1865
.1867:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3077
	mov eax, 1
	mov edi, 2
	mov rsi, _s451
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3077:
	push rbx
.1868:
.1865:
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
	jz .1869
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
.1869:
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
	jz .1871
	mov rbx, [_gpos]
	mov rsi, _s452
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
.1871:
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
	jnz .3078.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3078.38:
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
	jz .1873
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1875
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s449
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
.1875:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3079.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3079.39:
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
	jz .1877
	mov rbx, [_gpos]
	mov rsi, _s424
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
.1877:
.1873:
	jmp .1879
.1862:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1880
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
.1880:
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
	jz .1882
	mov rbx, [_gpos]
	mov rsi, _s450
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
.1882:
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
.1879:
	jmp .1820
.1861:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1885
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1886
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
.1886:
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
	jz .1888
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s453
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
	jmp .1889
.1888:
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
	jz .1891
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s454
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
.1891:
.1889:
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
	jz .1892
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
.1892:
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1820
.1885:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s455
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
.1894:
.1820:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1895
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
.1895:
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
	jz .1897
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3080.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3080.6:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3081.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3081.8:
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
	jz .1899
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
	jz .1901
	mov rbx, [_gpos]
	mov rsi, _s442
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
.1901:
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
	jmp .1900
.1899:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1904
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3082.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3082.7:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3083.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3083.9:
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
	jz .1905
	mov rbx, [_gpos]
	mov rsi, _s443
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
	jmp .1900
.1904:
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
.1907:
.1900:
	add rsp, 8
	jmp .1908
.1897:
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
.1908:
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
	jz .1909
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1909:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1911:
	mov rbx, 1
	test rbx, rbx
	jz .1912
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3084.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3084.10:
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
	jz .1913
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1913:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1915
	jmp .1912
.1915:
	pop rbx
	dec rbx
	push rbx
	jmp .1911
.1912:
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
	jnz .3085.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3085.40:
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
	jz .1917
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
	jz .1919
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
	jz .1921
	mov rbx, [_gpos]
	mov rsi, _s431
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
.1921:
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
	jz .1923
	mov rbx, [_gfunction_context]
	mov rsi, 30
	add rbx, rsi
	mov rsi, [_glabel_c]
	mov rdi, rsi
	inc rdi
	mov [_glabel_c], rdi
	mov dword [rbx], esi
.1923:
.1919:
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
	jz .1925
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3086.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3086.4:
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
	jz .1927
	mov rbx, [_gpos]
	mov rsi, _s432
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
.1927:
.1925:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3087.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3087.5:
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
	jz .1929
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
.1929:
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
	jnz .3088.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3088.6:
	mov rbx, 48
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1931
	mov rbx, [_gpos]
	mov rsi, _s351
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
.1931:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3089.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3089.7:
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
	jnz .3090.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3090.8:
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
.1917:
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
	jz .1933
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
	jnz .3091.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3091.3:
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
	jz .1935
	mov rbx, [_gpos]
	mov rsi, _s351
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
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3092.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3092.4:
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
	jnz .3093.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3093.5:
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
	jz .1937
	mov rbx, 0
	push rbx
	jmp .1939
.1937:
	mov rbx, 1
	push rbx
.1939:
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
.1933:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1940
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
	jz .1942
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3094.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3094.5:
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
	jz .1944
	mov rbx, 1
	push rbx
	jmp .1946
.1944:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3095.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3095.11:
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
.1946:
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
	jz .1947
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1949
	mov rbx, [_gpos]
	mov rsi, _s434
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
.1949:
.1947:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1951
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1953
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
	jmp .1955
.1953:
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
.1955:
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
	jmp .1952
.1951:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1957
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
	jz .1958
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
	jmp .1960
.1958:
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
.1960:
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
	jmp .1952
.1957:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1962
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
	jmp .1952
.1962:
	mov rbx, 0
	test rbx, rbx
	jnz .3096
	mov eax, 1
	mov edi, 2
	mov rsi, _s435
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3096:
.1963:
.1952:
	add rsp, 8
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.1942:
.1940:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1964
	mov rbx, [_gpos]
	mov rsi, _s436
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
.1964:
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
	jz .1966
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
	jz .1968
	mov rbx, [_gpos]
	mov rsi, _s334
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
.1968:
.1966:
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
.1970:
	mov rbx, 1
	test rbx, rbx
	jz .1971
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3097.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3097.12:
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
	jz .1972
	jmp .1971
	jmp .1973
.1972:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1975
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1975:
.1973:
	add rsp, 8
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1976
	jmp .1971
.1976:
	pop rbx
	dec rbx
	push rbx
	jmp .1970
.1971:
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
	jnz .3098.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3098.41:
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
	jz .1978
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
	jmp .1979
.1978:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1981
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1979
.1981:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1983
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_name
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1979
.1983:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1985
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
	jz .1986
	mov rbx, [_gpos]
	mov rsi, _s437
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
.1986:
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
	jz .1988
	mov rbx, [_gpos]
	mov rsi, _s438
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
.1988:
	jmp .1979
.1985:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1991
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1992
	mov rbx, [_gpos]
	mov rsi, _s439
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
.1992:
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
	jmp .1979
.1991:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
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
	mov rsi, _s440
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
.1996:
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
	jz .1998
	mov rbx, [_gpos]
	mov rsi, _s440
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
.1998:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3099.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3099.13:
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
	jmp .1979
.1995:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2001
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2002
	mov rbx, [_gpos]
	mov rsi, _s440
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
	jz .2004
	mov rbx, [_gpos]
	mov rsi, _s440
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
.2004:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3100.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3100.14:
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
	jmp .1979
.2001:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2007
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_open_l_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1979
.2007:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2009
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_close_r_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1979
.2009:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2011
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2012
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
	jz .2014
	mov rbx, 0
	test rbx, rbx
	jnz .3101
	mov eax, 1
	mov edi, 2
	mov rsi, _s457
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.3101:
.2014:
.2012:
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
	jz .2016
	mov rbx, [_gpos]
	mov rsi, _s458
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
	jmp .2017
.2016:
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
	jz .2019
	mov rbx, [_gpos]
	mov rsi, _s459
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
.2019:
.2017:
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
	jmp .1979
.2011:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2021
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
	jz .2022
	mov rbx, [_gpos]
	mov rsi, _s460
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
.2022:
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3102.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3102.42:
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
	jz .2024
	mov rbx, [_gpos]
	mov rsi, _s461
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
.2024:
	jmp .1979
.2021:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2027
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
	jnz .3103.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3103.43:
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
	jnz .3104.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3104.44:
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
	jmp .1979
.2027:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2029
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
	jmp .1979
.2029:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
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
	jmp .1979
.2031:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
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
	jmp .1979
.2033:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
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
	jmp .1979
.2035:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
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
	jmp .1979
.2037:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
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
	jmp .1979
.2039:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
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
	jmp .1979
.2041:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
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
	jmp .1979
.2043:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
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
	jmp .1979
.2045:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
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
	jmp .1979
.2047:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
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
	jmp .1979
.2049:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.inline_asm
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1979
.2051:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2053
	mov rbx, [_gpos]
	mov rsi, _s485
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
	jmp .2054
.2053:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2056
	mov rbx, [_gpos]
	mov rsi, _s486
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
.2056:
.2054:
	mov rbx, 0
	test rbx, rbx
	jnz .3105
	mov eax, 1
	mov edi, 2
	mov rsi, _s487
	mov rdx, 79
	syscall
	mov rdi, 1
	jmp _exit
.3105:
.2052:
.1979:
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
.2057:
	mov rbx, 1
	test rbx, rbx
	jz .2058
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2059
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2061
	jmp .2058
.2061:
	jmp .2063
.2059:
	add rsp, 8
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
.2063:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3106.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3106.45:
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
	jz .2064
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3107.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3107.46:
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
	jz .2066
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3108.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3108.9:
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
	jz .2068
	mov rbx, [_gpos]
	mov rsi, _s350
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
.2068:
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
	jnz .3109.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3109.10:
	mov rsi, 48
	imul rdi, rsi
	mov rsi, qword _gfunctions
	add rdi, rsi
	mov edi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .2070
	mov rbx, [_gpos]
	mov rsi, _s351
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
.2070:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3110.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3110.11:
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
	jnz .3111.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3111.12:
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
	jmp .2072
.2066:
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
	jz .2073
	mov rbx, [_gpos]
	mov rsi, _s357
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
.2073:
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
.2072:
	jmp .2075
.2064:
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
	jz .2076
	mov rbx, [_gpos]
	mov rsi, _s370
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
.2076:
.2075:
	jmp .2057
.2058:
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
	jz .2078
	mov rbx, [_gpos]
	mov rsi, _s380
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
.2078:
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
	jz .2080
	mov rbx, [_gpos]
	mov rsi, _s381
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
.2080:
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
	jnz .3112.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s372
	mov rdx, 124
	syscall
	mov rdi, 1
	jmp _exit
.3112.53:
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
	jnz .3113
	mov eax, 1
	mov edi, 2
	mov rsi, _s382
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3113:
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
	jnz .3114.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3114.47:
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
	jz .2082
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2084
	mov rbx, [_gpos]
	mov rsi, _s348
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
.2084:
	jmp .2083
.2082:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2087
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.eval_const_expr
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2083
.2087:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2089
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
	jz .2090
	mov rbx, [_gpos]
	mov rsi, _s367
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
.2090:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	push rbx
	jmp .2083
.2089:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2093
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3115.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3115.48:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	jmp .2083
.2093:
	mov rbx, [_gpos]
	mov rsi, _s383
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
.2094:
.2083:
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
	jnz .3116.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3116.49:
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
	jz .2095
	mov rbx, 1
	push rbx
	jmp .2096
.2095:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2098
	mov rbx, 2
	push rbx
	jmp .2096
.2098:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3117
	mov eax, 1
	mov edi, 2
	mov rsi, _s335
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3117:
	push rbx
.2099:
.2096:
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
	jz .2100
	mov rbx, [_gpos]
	mov rsi, _s336
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
.2100:
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
	jz .2102
	mov rbx, [_gpos]
	mov rsi, _s346
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
.2102:
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
	jz .2104
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2106
	mov rbx, [_gpos]
	mov rsi, _s384
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
.2106:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	push rsi
.2104:
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
	jz .2108
	mov rbx, [_gfunction_context]
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .2110
.2108:
	mov rbx, 0
	push rbx
.2110:
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
	jnz .3118.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3118.50:
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
	jz .2111
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
.2111:
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
	jz .2113
	mov rbx, [_gpos]
	mov rsi, _s400
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
.2113:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3119.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3119.51:
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
	jz .2115
	mov rbx, [_gpos]
	mov rsi, _s401
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
.2115:
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
	jnz .3120.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3120.52:
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
	jz .2117
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3121.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3121.53:
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
	jz .2119
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2120
.2119:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2122
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2120
.2122:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2124
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2120
.2124:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2126
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2120
.2126:
	mov rbx, [_gpos]
	mov rsi, _s405
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
.2127:
.2120:
	add rsp, 8
.2117:
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
	jz .2128
	mov rbx, [_gpos]
	mov rsi, _s402
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
.2128:
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
	jz .2130
	mov rbx, [_gpos]
	mov rsi, _s403
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
.2130:
.2132:
	mov rbx, 1
	test rbx, rbx
	jz .2133
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2134
	mov rbx, 6
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2136
	jmp .2133
.2136:
	jmp .2138
.2134:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s404
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
.2138:
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
	jz .2139
	mov rbx, [_gpos]
	mov rsi, _s407
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
.2139:
	jmp .2132
.2133:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2141
	mov rbx, [_gpos]
	mov rsi, _s404
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
.2141:
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
	jnz .3122.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3122.54:
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
	jz .2143
	mov rbx, _s408
	mov rsi, 4
	mov rdi, qword [rsp + 0]
	mov r8, rsi
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
	jz .56.95
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
	jmp .58.95
.56.95:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.95:
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2145
	mov rbx, [_gpos]
	mov rsi, _s409
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
.2145:
	mov rbx, 0
	push rbx
	jmp .2147
.2143:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.one_cextern_arg
	mov [_rs_p], rsp
	mov rsp, rbp
.2147:
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
parse.is_top_comptime:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2148
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3123.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3123.8:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3124.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3124.15:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
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
	push r8
	jmp .2150
.2148:
	mov rbx, 0
	push rbx
.2150:
	mov rbp, rsp
	mov rsp, [_rs_p]
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
.2151:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2152
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2153
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3125.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3125.9:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3126.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3126.16:
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
	jz .2155
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2157:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2158
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3127.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3127.55:
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
	jz .2159
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2160
.2159:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2162
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2162:
.2160:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2163
	jmp .2158
.2163:
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2157
.2158:
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
	jz .2165
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3128.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3128.10:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3129.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3129.17:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s333
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
.2165:
.2155:
.2153:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3130.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3130.56:
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
	jz .2167
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
	jmp .2168
.2167:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2170
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
	jz .2171
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
	jmp .2173
.2171:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
.2173:
	jmp .2168
.2170:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2175
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
	jmp .2168
.2175:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2177
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
	jz .2178
	mov rbx, [_gpos]
	mov rsi, _s411
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
.2178:
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
	jz .2180
	mov rbx, [_gpos]
	mov rsi, _s412
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
.2180:
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
	jz .2182
	mov rbx, [_gpos]
	mov rsi, _s412
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
.2182:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .2184
	mov rbx, 12
	push rbx
	jmp .2186
.2184:
	mov rbx, 11
	push rbx
.2186:
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2168
.2177:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2188
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2190
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2191
.2190:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2193
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
	jz .2194
	mov rbx, [_gpos]
	mov rsi, _s414
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
.2194:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3131.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3131.57:
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
	jz .2196
	mov rbx, [_gpos]
	mov rsi, _s419
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
.2196:
	mov rbx, [_gfunction_attributes]
	pop rsi
	or rsi, rbx
	mov [_gfunction_attributes], rsi
	jmp .2191
.2193:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2199
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
	jz .2200
	mov rbx, [_gpos]
	mov rsi, _s420
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
.2200:
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
	jz .2202
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3132.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3132.58:
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
	jnz .3133.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3133.59:
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
	jz .2204
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3134.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3134.60:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.2204:
.2202:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2206
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
	jnz .3135.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3135.61:
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
	mov rbx, _s421
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
	jz .2208
	mov rbx, _s422
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
	mov rbx, _s423
	mov rsi, 1
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2208:
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
.2206:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2210
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov [_gpos], rbx
.2210:
	jmp .2191
.2199:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_top_comptime
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	and rsi, rbx
	test rsi, rsi
	jz .2213
	mov rbx, qword [_rs_p]
	add rbx, 64
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3136.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3136.11:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3137.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3137.18:
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
	jmp .2191
.2213:
	mov rbx, [_gpos]
	mov rsi, _s425
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
.2214:
.2191:
	jmp .2215
.2188:
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
	jz .2216
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.2216:
.2215:
.2187:
.2168:
	add rsp, 8
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2151
.2152:
	mov rbx, qword [_rs_p]
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3138
	mov eax, 1
	mov edi, 2
	mov rsi, _s488
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3138:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2218
	mov rbx, [_gtoken_stream.len]
	dec rbx
	mov rsi, _s489
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
.2218:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2220
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3139.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3139.12:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3140.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3140.19:
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
	jz .2222
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3141.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s331
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3141.13:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3142.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s332
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3142.20:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s333
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
	jmp .2224
.2222:
	mov rbx, 0
	test rbx, rbx
	jnz .3143
	mov eax, 1
	mov edi, 2
	mov rsi, _s490
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3143:
.2224:
.2220:
	mov rbx, [_gmain_fn_idx]
	mov rsi, 18446744073709551615
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2225
	mov rbx, _s491
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
.2225:
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
	jnz .3144
	mov eax, 1
	mov edi, 2
	mov rsi, _s545
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3144:
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
	jnz .3145.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3145.10:
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
.2227:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2228
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3146.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s544
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3146.1:
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
	jz .56.96
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
	jmp .58.96
.56.96:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.96:
	pop rbx
	test rbx, rbx
	jz .2229
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.2229:
	pop rbx
	inc rbx
	push rbx
	jmp .2227
.2228:
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
.2261:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3147.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3147.13:
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
	jz .2231
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
	jz .2233
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_ginlined_functions]
	inc rbx
	mov [_ginlined_functions], rbx
.2233:
	jmp .2235
.2231:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .3148
	mov eax, 1
	mov edi, 2
	mov rsi, _s543
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3148:
.2235:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.2236:
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
	jz .2237
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3149.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3149.11:
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
	jnz .3150.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3150.12:
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
	jz .2238
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3151.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3151.14:
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
	jz .2240
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2242:
	mov rbx, 1
	test rbx, rbx
	jz .2243
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
	jnz .3152.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3152.13:
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
	jnz .3153.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3153.14:
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
	jz .2244
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .2246
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2246:
	jmp .2245
.2244:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2249
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2250
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2250:
	jmp .2245
.2249:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2253
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3154.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3154.15:
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
	jmp .2243
	jmp .2245
.2253:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2255
	jmp .2243
.2255:
.2254:
.2245:
	jmp .2242
.2243:
	add rsp, 8
.2240:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3155.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3155.16:
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
	jz .2257
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3156.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3156.17:
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
	jnz .3157.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3157.15:
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
	jz .2259
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.2259:
.2257:
	jmp .2239
.2238:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2263
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
	jz .2264
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
.2264:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3158.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3158.18:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
	jmp .2239
.2263:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2267
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2268
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3159.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3159.19:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rbx, 39
	mov dword [rsi], ebx
	jmp .2270
.2268:
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
	jnz .3160.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3160.20:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.2270:
.2267:
.2239:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .2236
.2237:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3161.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3161.21:
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
	jnz .3162
	mov eax, 1
	mov edi, 2
	mov rsi, _s546
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3162:
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
	jz .2271
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
.2271:
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
	jz .2273
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
.2273:
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
	mov rbx, _s595
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
	jz .2279
	mov rbx, 2
	push rbx
	jmp .2280
.2279:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2282
	mov rbx, 1
	push rbx
	jmp .2280
.2282:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2284
	mov rbx, 12
	push rbx
	jmp .2280
.2284:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2286
	mov rbx, 11
	push rbx
	jmp .2280
.2286:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2288
	mov rbx, 3
	push rbx
	jmp .2280
.2288:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2290
	mov rbx, 4
	push rbx
	jmp .2280
.2290:
	mov rbx, 18446744073709551615
	mov rsi, 0
	test rsi, rsi
	jnz .3163
	mov eax, 1
	mov edi, 2
	mov rsi, _s722
	mov rdx, 74
	syscall
	mov rdi, 1
	jmp _exit
.3163:
	push rbx
.2291:
.2280:
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
	jnz .3164.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3164.6:
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
	jz .2292
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	dec rsi
	push rsi
.2294:
	mov rbx, 1
	test rbx, rbx
	jz .2295
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
	jz .2296
	jmp .2295
.2296:
	pop rbx
	dec rbx
	push rbx
	jmp .2294
.2295:
	add rsp, 8
.2292:
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
	jnz .3165.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s647
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3165.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jnz .3166
	mov eax, 1
	mov edi, 2
	mov rsi, _s723
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3166:
	mov rbx, _s578
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
	mov rbx, _s579
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
	mov rbx, _s618
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
	mov rbx, _s608
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
	mov rbx, _s609
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
	jz .2298
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
	jnz .3167.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3167.8:
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
	jz .2300
	mov rbx, _s724
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
	jmp .2301
.2300:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2303
	mov rbx, _s725
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
.2303:
.2301:
	add rsp, 8
.2298:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
gen_range:
	sub rsp, 184
	mov [_rs_p], rsp
	mov rsp, rbp
.2355:
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
.2304:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .2305
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3168.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3168.22:
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
	jz .2306
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3169.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3169.23:
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
	jnz .3170.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3170.16:
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
	jz .2308
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
	jz .2310
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
	jmp .2312
.2310:
	mov rbx, 1
	push rbx
.2312:
	jmp .2313
.2308:
	mov rbx, 1
	push rbx
.2313:
	jmp .2314
.2306:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 8
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .2315
	mov rbx, 1
	push rbx
	jmp .2317
.2315:
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
.2317:
.2314:
	pop rbx
	test rbx, rbx
	jz .2318
	mov rbx, 0
	push rbx
.2320:
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
	jz .2321
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
	jnz .3171.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s226
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.3171.9:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .2320
.2321:
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
	jz .2322
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3172.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3172.24:
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
	jnz .3173.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3173.62:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s596
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
	mov rbx, _s597
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
	jnz .3174.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s213
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.3174.7:
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
	mov rbx, _s423
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
.2322:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3175.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3175.25:
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
	jnz .3176.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3176.26:
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
	jz .2324
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
	jmp .2325
.2324:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2327
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3177
	mov eax, 1
	mov edi, 2
	mov rsi, _s598
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3177:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3178.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3178.17:
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
	jz .2328
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2330
.2328:
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
	jz .2331
	mov rbx, _s599
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
.2331:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s222
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
	jz .2333
	mov rbx, _s607
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
.2333:
	mov rbx, _s608
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
	mov rbx, _s609
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
	jz .2335
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
.2335:
	add rsp, 8
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2337
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3179.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s342
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3179.27:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s427
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
	jz .2339
	mov rbx, _s611
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
	jmp .2341
.2339:
	mov rbx, _s583
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
.2341:
	mov rbx, _s612
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
	mov rbx, _s613
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
	jnz .3180.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s544
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3180.2:
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
	mov rbx, _s614
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
	mov rbx, _s585
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
.2337:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2330:
	jmp .2325
.2327:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2343
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
	jz .2344
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2346
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
.2346:
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
	jmp .2348
.2344:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3181.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3181.18:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, _s578
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
	mov rbx, _s579
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
	jz .2349
	mov rbx, _s616
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
.2349:
	mov rbx, _s617
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
.2348:
	jmp .2325
.2343:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2352
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3182.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s340
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3182.19:
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
	jz .2353
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
	jmp .2356
.2353:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s578
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
	mov rbx, _s579
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
	mov rbx, _s618
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
	mov rbx, _s608
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
	mov rbx, _s609
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
.2356:
	jmp .2325
.2352:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2358
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
	mov rbx, _s621
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
	mov rbx, _s622
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
	jz .2359
	mov rbx, _s611
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
	jmp .2361
.2359:
	mov rbx, _s583
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
.2361:
	mov rbx, _s623
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
	mov rbx, _s614
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
	mov rbx, _s613
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
	jnz .3183.3
	mov eax, 1
	mov edi, 2
	mov rsi, _s544
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3183.3:
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
	mov rbx, _s585
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
	mov rbx, _s625
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
	jnz .3184.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3184.4:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2358:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2363
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
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
	jmp .2325
.2363:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2365
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2325
.2365:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2367
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s627
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
	jz .2368
	mov rbx, _s628
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
.2368:
	jmp .2325
.2367:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2371
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
	jnz .3185.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3185.9:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rbx, _s594
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
	mov rbx, _s629
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
.2372:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2373
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
	mov rdi, _s630
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
	mov rbx, _s631
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
	mov rbx, _s632
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
	jnz .3186.5
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3186.5:
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
	jmp .2372
.2373:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3187.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3187.6:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2371:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2375
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
	jnz .3188.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3188.10:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 144], rbx
	mov rbx, _s594
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
	mov rbx, _s629
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
.2376:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2377
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
	mov rbx, _s633
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
	mov rbx, _s631
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
	mov rbx, _s634
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
	jmp .2376
.2377:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3189.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3189.7:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2375:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2379
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s635
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
	jnz .3190.6
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3190.6:
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
	jmp .2325
.2379:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2381
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3191.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3191.7:
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
	jz .2382
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 152], rsi
	mov rbx, _s636
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
	jnz .3192.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3192.8:
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
	mov rbx, _s632
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
	jmp .2384
.2382:
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
	jnz .3193.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3193.11:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 152], rbx
	mov rbx, _s594
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
	mov rbx, _s637
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
	jnz .3194.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3194.9:
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
.2385:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2386
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
	mov rbx, _s630
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
	mov rbx, _s631
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
	mov rbx, _s632
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
	jnz .3195.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3195.8:
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
	jmp .2385
.2386:
	add rsp, 8
.2384:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3196.9
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3196.9:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2381:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2388
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3197.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3197.10:
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
	jnz .3198.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3198.12:
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
	jz .2389
	mov rbx, _s594
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
	mov rbx, _s638
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
	jnz .3199.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3199.11:
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
	mov rbx, _s634
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
	jnz .3200.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3200.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2391
.2389:
	mov rbx, _s594
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
	mov rbx, _s637
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
	jnz .3201.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3201.12:
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
.2392:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2393
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
	mov rbx, _s633
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
	mov rbx, _s631
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
	mov rbx, _s634
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
	jmp .2392
.2393:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3202.10
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3202.10:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
.2391:
	jmp .2325
.2388:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2395
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
	jnz .3203.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3203.14:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s594
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
	mov rbx, _s639
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
	mov rbx, _s594
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
	mov rbx, _s640
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
	mov rbx, _s634
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
	jnz .3204.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3204.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2395:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2397
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
	jnz .3205.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3205.16:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s594
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
	mov rbx, _s639
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
	mov rbx, _s628
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
	mov rbx, _s641
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
	jnz .3206.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3206.17:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2397:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2399
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
	jnz .3207.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3207.18:
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
	jnz .3208.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3208.19:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s594
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
	mov rbx, _s639
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
	mov rbx, _s594
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
	mov rbx, _s640
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
	mov rbx, _s634
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
	mov rbx, _s628
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
	mov rbx, _s641
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
	mov rbx, _s640
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
	mov rbx, _s631
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
	mov rbx, _s643
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
	jnz .3209.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3209.20:
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
	jnz .3210.11
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3210.11:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2399:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2401
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
	mov rbx, _s621
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
	mov rbx, _s644
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
	jnz .3211.12
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3211.12:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2401:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2403
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
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
	jmp .2325
.2403:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2405
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
	mov rdi, _s645
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
	jnz .3212.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3212.21:
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
	jnz .3213.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3213.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2405:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2407
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
	jnz .3214.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3214.22:
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
	jnz .3215.14
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3215.14:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2407:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2409
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
	mov rdi, _s646
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
	jnz .3216.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3216.23:
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
	jnz .3217.15
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3217.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2409:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2411
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
	mov rbx, _s649
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
	jnz .3218.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3218.24:
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
	jnz .3219.16
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3219.16:
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
	jnz .3220.17
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3220.17:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2411:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2413
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
	mov rbx, _s649
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
	jnz .3221.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3221.25:
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
	jnz .3222.18
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3222.18:
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
	jnz .3223.19
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3223.19:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2413:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2415
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s651
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
	jmp .2325
.2415:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2417
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
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
	mov rbp, rsp
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
	jmp .2325
.2417:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2419
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
	jnz .3224.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3224.26:
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
	mov rbx, _s649
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
	jnz .3225.20
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3225.20:
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
	jnz .3226.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3226.27:
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
	jnz .3227.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3227.28:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2419:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2421
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
	mov rbx, _s653
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
	mov rbx, _s654
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
	jnz .3228.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3228.29:
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
	jnz .3229.21
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3229.21:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2421:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2423
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
	mov rbx, _s655
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
	mov rbx, _s654
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
	jnz .3230.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3230.30:
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
	jnz .3231.22
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3231.22:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2423:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2425
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s621
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
	mov rbx, _s656
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
	jnz .3232.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3232.31:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2425:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2427
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
	mov rdi, _s672
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
	jnz .3233.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3233.32:
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
	jnz .3234.23
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3234.23:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2427:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2429
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
	mov rdi, _s673
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
	jnz .3235.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3235.33:
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
	jnz .3236.24
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3236.24:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2429:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2431
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
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
	jnz .3237.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3237.34:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2431:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2433
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
	mov rdi, _s675
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
	jnz .3238.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3238.35:
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
	jnz .3239.25
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3239.25:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2325
.2433:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2435
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
	jnz .3240.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3240.36:
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
	jnz .3241.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3241.37:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2435:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2437
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
	jmp .2325
.2437:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2439
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2440
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
	mov rbx, _s676
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
	mov rbx, _s634
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
	jmp .2442
.2440:
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
.2442:
	jmp .2325
.2439:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2444
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2445
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
	mov rbx, _s676
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
	mov rbx, _s634
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
	jmp .2447
.2445:
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
.2447:
	jmp .2325
.2444:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2449
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
	jnz .3242.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3242.38:
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
	jnz .3243.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3243.39:
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
	jnz .3244.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3244.40:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2449:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2451
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
	jnz .3245.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3245.41:
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
	jnz .3246.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3246.42:
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
	jnz .3247.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3247.43:
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
	jnz .3248.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3248.44:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2451:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2453
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2454
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
	jnz .3249.26
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3249.26:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2456
.2454:
	mov rbx, _s677
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
.2456:
	jmp .2325
.2453:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2458
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
	jnz .3250.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3250.45:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	mov rbx, _s656
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
	jnz .3251.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3251.46:
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
	jnz .3252.27
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3252.27:
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
	jnz .3253.28
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3253.28:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2458:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2460
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
	jnz .3254.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3254.47:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	jnz .3255.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3255.48:
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
	jnz .3256.29
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3256.29:
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
	jnz .3257.30
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3257.30:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2460:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2462
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
	jnz .3258.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3258.49:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	jnz .3259.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3259.50:
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
	jnz .3260.31
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3260.31:
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
	jnz .3261.32
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3261.32:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2462:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2464
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
	jnz .3262.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3262.51:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	jnz .3263.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3263.52:
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
	jnz .3264.33
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3264.33:
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
	jnz .3265.34
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3265.34:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2464:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2466
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
	jnz .3266.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3266.53:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	jnz .3267.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3267.54:
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
	jnz .3268.35
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3268.35:
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
	jnz .3269.36
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3269.36:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2466:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2468
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
	jnz .3270.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3270.55:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	mov rbx, _s684
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
	jnz .3271.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3271.56:
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
	jnz .3272.37
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3272.37:
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
	jnz .3273.38
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3273.38:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2468:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2470
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
	jnz .3274.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3274.57:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	mov rbx, _s685
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
	jnz .3275.58
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3275.58:
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
	jnz .3276.39
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3276.39:
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
	jnz .3277.40
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3277.40:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2470:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2472
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
	jnz .3278.59
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3278.59:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	mov rbx, _s686
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
	jnz .3279.60
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3279.60:
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
	jnz .3280.41
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3280.41:
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
	jnz .3281.42
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3281.42:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2472:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2474
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
	jnz .3282.61
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3282.61:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	mov rbx, _s687
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
	jnz .3283.62
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3283.62:
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
	jnz .3284.43
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3284.43:
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
	jnz .3285.44
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3285.44:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2474:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2476
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
	jnz .3286.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3286.63:
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
	mov rbx, _s678
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
	mov rbx, _s679
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
	mov rbx, _s688
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
	jnz .3287.64
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3287.64:
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
	jnz .3288.45
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3288.45:
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
	jnz .3289.46
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3289.46:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2476:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2478
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
	mov rbx, _s689
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
	mov rbx, _s632
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
	jnz .3290.47
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3290.47:
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
	jnz .3291.48
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3291.48:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2478:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2480
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
	mov rbx, _s690
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
	mov rbx, _s632
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
	jnz .3292.49
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3292.49:
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
	jnz .3293.50
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3293.50:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2480:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2482
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
	mov rbx, _s706
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
	mov rbx, _s632
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
	jnz .3294.51
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3294.51:
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
	jnz .3295.52
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3295.52:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2482:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2484
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
	mov rbx, _s630
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
	mov rbx, _s632
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
	jnz .3296.53
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3296.53:
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
	jnz .3297.54
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3297.54:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2484:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2486
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
	jnz .3298.65
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3298.65:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s678
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
	mov rbx, _s594
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
	mov rbx, _s640
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
	mov rbx, _s634
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
	jnz .3299.66
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3299.66:
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
	jnz .3300.55
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3300.55:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2486:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2488
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
	jnz .3301.67
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3301.67:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s678
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
	mov rbx, _s594
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
	mov rbx, _s640
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
	mov rbx, _s634
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
	jnz .3302.68
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3302.68:
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
	jnz .3303.56
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3303.56:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2325
.2488:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2490
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s594
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
	mov rbx, _s640
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
	mov rbx, _s634
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
	jnz .3304.69
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3304.69:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2490:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2492
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s594
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
	mov rbx, _s640
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
	mov rbx, _s634
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
	jnz .3305.70
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3305.70:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2325
.2492:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2494
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_cextern_function
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2325
.2494:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2496
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_ginline_asms.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3306.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s726
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3306.1:
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
	jz .2497
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 32
	add rdi, rbx
	mov edi, [rdi]
	add rsi, rdi
	push rsi
.2499:
	mov rbx, 1
	test rbx, rbx
	jz .2500
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
	jz .2501
	jmp .2500
.2501:
	jmp .2499
.2500:
	add rsp, 8
.2497:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov esi, [rsi]
	push rsi
.2503:
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
	jz .2504
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
	jnz .3307.63
	mov eax, 1
	mov edi, 2
	mov rsi, _s318
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3307.63:
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
	jmp .2503
.2504:
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
	jz .2505
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
.2507:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2508
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
	jnz .3308.71
	mov eax, 1
	mov edi, 2
	mov rsi, _s593
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3308.71:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	inc rbx
	push rbx
	jmp .2507
.2508:
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
.2509:
	mov rbx, 1
	test rbx, rbx
	jz .2510
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
	jz .2511
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3309.57
	mov eax, 1
	mov edi, 2
	mov rsi, _s588
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3309.57:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2513
.2511:
	add rsp, 8
.2513:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .2514
	jmp .2510
.2514:
	jmp .2509
.2510:
	add rsp, 8
.2505:
	jmp .2325
.2496:
	mov rbx, 0
	test rbx, rbx
	jnz .3310
	mov eax, 1
	mov edi, 2
	mov rsi, _s727
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3310:
.2516:
.2325:
	add rsp, 8
.2318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2304
.2305:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2517
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
.2517:
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
	jz .2519
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.2519:
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
	jz .2521
	mov rbx, _s733
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
.2521:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2523
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
	jz .2525
	mov rbx, _s734
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
	jmp .2527
.2525:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2527:
.2523:
	mov rbx, 1
	push rbx
.2528:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .2529
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
	jz .2530
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2532
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2534
.2532:
	mov rbx, _s735
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
.2534:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .2535
.2530:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2536
	mov rbx, _s736
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
	jmp .2538
.2536:
	mov rbx, _s595
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
.2538:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2535:
	pop rbx
	inc rbx
	push rbx
	jmp .2528
.2529:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2539
	mov rbx, _s734
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.2539:
	mov rbx, _s737
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
	jz .2541
	mov rbx, _s557
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
	jz .2543
	mov rbx, _s560
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
	mov rbx, _s561
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
	mov rbx, _s562
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
	mov rbx, _s563
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
.2545:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2546
	mov rbx, _s564
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
	jnz .3311.7
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3311.7:
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
	jmp .2545
.2546:
	add rsp, 8
	jmp .2547
.2543:
	mov rbx, _s565
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
	jz .2548
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
	jmp .2550
.2548:
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
.2550:
	mov rbx, _s566
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
	mov rbx, _s567
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
.2547:
	jmp .2542
.2541:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2552
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2553
	mov rbx, _s568
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
	mov rbx, _s423
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
.2553:
	mov rbx, _s569
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
	mov rbx, _s570
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
	mov rbx, _s571
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
.2555:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2556
	mov rbx, _s572
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
	jnz .3312.8
	mov eax, 1
	mov edi, 2
	mov rsi, _s344
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3312.8:
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
	jmp .2555
.2556:
	add rsp, 8
	jmp .2542
.2552:
	mov rbx, 0
	test rbx, rbx
	jnz .3313
	mov eax, 1
	mov edi, 2
	mov rsi, _s573
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3313:
.2557:
.2542:
	mov rbx, _s574
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
	jz .2558
	mov rbx, _s575
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
	jmp .2560
.2558:
	mov rbx, _s576
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
.2560:
	mov rbx, _s577
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
	mov rbx, _s578
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
	mov rbx, _s579
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
	mov rbx, _s580
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
	mov rbx, _s581
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
	mov rbx, _s582
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
	jz .2561
	mov rbx, _s583
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
	jmp .2563
.2561:
	mov rbx, _s584
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
.2563:
	mov rbx, _s585
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
	mov rbx, _s586
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
	jz .2564
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2566
	mov rbx, _s728
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
	jmp .2568
.2566:
	mov rbx, _s729
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
.2568:
	jmp .2565
.2564:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2570
	mov rbx, _s730
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
	jmp .2565
.2570:
	mov rbx, 0
	test rbx, rbx
	jnz .3314
	mov eax, 1
	mov edi, 2
	mov rsi, _s731
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3314:
.2571:
.2565:
	mov rbx, 0
	push rbx
.2572:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2573
	pop rbx
	mov rsi, rbx
	mov rdi, _s626
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
	mov rbx, _s732
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
	jnz .3315.4
	mov eax, 1
	mov edi, 2
	mov rsi, _s544
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3315.4:
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
	jmp .2572
.2573:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2574
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2576
	mov rbx, _s738
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
	jmp .2578
.2576:
	mov rbx, _s739
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
.2578:
	jmp .2575
.2574:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2580
	mov rbx, _s740
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
	jmp .2575
.2580:
	mov rbx, 0
	test rbx, rbx
	jnz .3316
	mov eax, 1
	mov edi, 2
	mov rsi, _s741
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3316:
.2581:
.2575:
	mov rbx, 0
	push rbx
.2582:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2583
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3317.13
	mov eax, 1
	mov edi, 2
	mov rsi, _s337
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3317.13:
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
	jz .2584
	mov rbx, _s606
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
	jz .2586
	mov rbx, _s742
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2587
.2586:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2589
	mov rbx, _s743
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2587
.2589:
	mov rbx, 0
	test rbx, rbx
	jnz .3318
	mov eax, 1
	mov edi, 2
	mov rsi, _s744
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3318:
.2590:
.2587:
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
.2584:
	pop rbx
	inc rbx
	push rbx
	jmp .2582
.2583:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2591
	mov rbx, _s745
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
	mov rbx, _s746
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
	mov rbx, _s747
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
	jmp .2592
.2591:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2594
	mov rbx, _s748
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
	mov rbx, _s749
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
	mov rbx, _s750
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
	jmp .2592
.2594:
	mov rbx, 0
	test rbx, rbx
	jnz .3319
	mov eax, 1
	mov edi, 2
	mov rsi, _s751
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3319:
.2595:
.2592:
	mov rbx, _s752
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
	jnz .3320.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3320.2:
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
	jmp .3321.1
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3322.1
	mov eax, 1
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3322.1:
.3321.1:
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
	jz .56.97
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
	jmp .58.97
.56.97:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.97:
	pop rbx
	test rbx, rbx
	jz .2596
	mov rbx, 1
	mov [_gbackend_type], rbx
	jmp .2597
.2596:
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
	jz .56.98
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
	jmp .58.98
.56.98:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.98:
	pop rbx
	test rbx, rbx
	jz .2599
	mov rbx, 2
	mov [_gbackend_type], rbx
	jmp .2597
.2599:
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
.2600:
.2597:
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
	jz .2601
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
.2601:
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
	jz .2603
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
	jz .2605
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
.2605:
.2603:
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
	jz .2607
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
.2607:
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
	jz .2609
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
	mov rbx, _s775
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
	mov rbx, _s208
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
.2609:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2611
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s776
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2611:
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
	jz .2613
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
	mov rdi, _s762
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
.2613:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2615
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
	mov rdi, _s763
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s764
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
	jmp .2616
.2615:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2618
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
	mov rdi, _s777
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s778
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	test rdi, rdi
	jz .2619
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s779
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s185
	mov qword [rbx], rdi
	push rsi
.2619:
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
.2618:
.2616:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2621
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 304]
	mov rdi, qword [rbx + 312]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2623
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s780
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
	mov rbx, _s780
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
	jmp .2625
.2623:
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s781
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s782
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
	mov rbx, _s781
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
.2625:
.2621:
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
	jz .2626
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2628
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
	jmp .2629
.2628:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2631
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
	jmp .2629
.2631:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2633
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
	jmp .2629
.2633:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2635
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
.2635:
.2629:
.2626:
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
	jz .2636
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
.2636:
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2638
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
	jz .56.99
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
	jmp .58.99
.56.99:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.99:
	pop rbx
	test rbx, rbx
	jz .2640
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
.2640:
.2638:
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
	jmp .3323.2
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3324.2
	mov eax, 1
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3324.2:
.3323.2:
	mov [_gtarget_os], rbx
	mov rbx, 1
	push rbx
.2642:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2643
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
	jz .56.100
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
	jmp .58.100
.56.100:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.100:
	pop rbx
	test rbx, rbx
	jz .2644
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2646
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2646:
	mov rbx, 1
	mov [_gargparse_mode], rbx
	jmp .2645
.2644:
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
	jz .56.101
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
	jmp .58.101
.56.101:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.101:
	pop rbx
	test rbx, rbx
	jz .2649
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2650
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2650:
	mov rbx, 2
	mov [_gargparse_mode], rbx
	jmp .2645
.2649:
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
	jz .56.102
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
	jmp .58.102
.56.102:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.102:
	pop rbx
	test rbx, rbx
	jz .2653
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2654
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2654:
	mov rbx, 3
	mov [_gargparse_mode], rbx
	jmp .2645
.2653:
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
	jz .56.103
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
	jmp .58.103
.56.103:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.103:
	pop rbx
	test rbx, rbx
	jz .2657
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2658
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2658:
	mov rbx, 4
	mov [_gargparse_mode], rbx
	jmp .2645
.2657:
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
	jz .56.104
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
	jmp .58.104
.56.104:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.104:
	pop rbx
	test rbx, rbx
	jz .2661
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2662
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2662:
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2664
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2664:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2661:
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
	jz .56.105
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
	jmp .58.105
.56.105:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.105:
	pop rbx
	test rbx, rbx
	jz .2667
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2668
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2668:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2670
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
.2670:
	mov rbx, qword _gverbose_mode
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2667:
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
	jz .56.106
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
	jmp .58.106
.56.106:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.106:
	pop rbx
	test rbx, rbx
	jz .2673
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2674
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2674:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .2645
.2673:
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
	jz .56.107
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
	jmp .58.107
.56.107:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.107:
	pop rbx
	test rbx, rbx
	jz .2677
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2678
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2678:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2680
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
.2680:
	mov rbx, qword _gobject_file
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2677:
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
	jz .56.108
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
	jmp .58.108
.56.108:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.108:
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
	jz .56.109
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
	jmp .58.109
.56.109:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.109:
	pop rbx
	pop rsi
	or rsi, rbx
	test rsi, rsi
	jz .2683
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
	jmp .2645
.2683:
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
	jz .56.110
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
	jmp .58.110
.56.110:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.110:
	pop rbx
	test rbx, rbx
	jz .2685
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
	jz .2686
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2686:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2685:
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
	jz .56.111
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
	jmp .58.111
.56.111:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.111:
	pop rbx
	test rbx, rbx
	jz .2689
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2690
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2690:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2692
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
.2692:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2689:
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
	jz .56.112
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
	jmp .58.112
.56.112:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.112:
	pop rbx
	test rbx, rbx
	jz .2695
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2696
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2696:
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2698
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
.2698:
	mov rbx, qword _gtrace_calls
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2695:
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
	jz .56.113
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
	jmp .58.113
.56.113:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.113:
	pop rbx
	test rbx, rbx
	jz .2701
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2702
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2702:
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2704
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
.2704:
	mov rbx, qword _gstrip_assert
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2645
.2701:
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2707
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2709
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
.2709:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 43], rsi
	jmp .2708
.2707:
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2712
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2713
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
.2713:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 27], rsi
	jmp .2708
.2712:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2716
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
	jmp .2708
.2716:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2718
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
	jz .2719
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
.2719:
	pop rbx
	mov [_gtarget_os], rbx
	jmp .2708
.2718:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2722
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
	jz .2723
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
.2723:
	pop rbx
	mov [_geval.recurse_depth], rbx
	jmp .2708
.2722:
	mov rbx, 0
	test rbx, rbx
	jnz .3325
	mov eax, 1
	mov edi, 2
	mov rsi, _s202
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.3325:
.2725:
.2708:
	mov rbx, 0
	mov [_gargparse_mode], rbx
.2706:
.2645:
	pop rbx
	inc rbx
	push rbx
	jmp .2642
.2643:
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
	jz .2726
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
.2726:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2728
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2730
	mov rbx, _s204
	mov rsi, 3
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
	jmp .2732
.2730:
	mov rbx, _s205
	mov rsi, 5
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
.2732:
	jmp .2733
.2728:
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
	jz .56.114
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
	jmp .58.114
.56.114:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.114:
	pop rbx
	test rbx, rbx
	jz .2734
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.2734:
.2733:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 4
	mov rdi, 21
	mov rax, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	sete sil
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2736
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
	mov rbx, _s207
	mov rsi, 18
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
	mov rbx, _s208
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
.2736:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2738
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s211
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2738:
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
	mov rbx, _s314
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
	jz .2740
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2740:
	mov rbx, [_gtarget_os]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2742
	mov rbx, _s324
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
	jmp .2743
.2742:
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2745
	mov rbx, _s326
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
	jmp .2743
.2745:
	mov rbx, 0
	test rbx, rbx
	jnz .3326
	mov eax, 1
	mov edi, 2
	mov rsi, _s327
	mov rdx, 70
	syscall
	mov rdi, 1
	jmp _exit
.3326:
.2746:
.2743:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2747
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, [_gtoken_stream.len]
	mov rsi, 2
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s329
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2747:
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
	mov rbx, _s492
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
	jz .2749
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s493
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
	mov rbx, _s494
	mov rsi, 8
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2749:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2751
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2751:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2753
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s542
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2753:
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
	mov rbx, _s547
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
	jz .2755
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s548
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
	mov rbx, _s549
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
	mov rbx, _s210
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
	mov rbx, _s550
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2755:
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2757
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
	mov rdi, _s551
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
	call create_new_file_fd?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2759
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
	mov rbx, _s553
	mov rsi, 24
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
	mov rbx, _s554
	mov rsi, 14
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
.2759:
	pop rbx
	mov [_gfwrite_buffer.fd_loc], rbx
	jmp .2761
.2757:
	mov rbx, 1
	mov [_gfwrite_buffer.fd_loc], rbx
.2761:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2762
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s555
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
	mov rbx, _s556
	mov rsi, 17
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2762:
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
	mov rbx, _s753
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
	jz .2764
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2764:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2766
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s754
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
	call fd.stat_size?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .3327
	mov eax, 1
	mov edi, 2
	mov rsi, _s755
	mov rdx, 71
	syscall
	mov rdi, 1
	jmp _exit
.3327:
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
	jz .2768
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s756
	mov rsi, 14
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .2770
.2768:
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s757
	mov rsi, 15
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2770:
.2766:
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
	jz .2771
	mov rbx, _s758
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
.2771:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2773
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s759
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2773:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2775
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2775:
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
	mov rbx, _s783
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
	jz .2777
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s784
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2777:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2779
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
.2781:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2782
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
	jmp .2781
.2782:
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
	jz .2783
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s210
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
	mov rbx, _s785
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
	mov rbx, _s208
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2783:
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
	jz .2785
	mov rbx, _s786
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
.2785:
.2779:
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
_s172: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:443:12: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s173: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/salloc.stas:18:26: ", 27, "[39m", 27, "[22massertation failed, 'salloc.rewind: cannot rewind allocation stack to higher length'", 10, 0
_s174: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:463:4: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for OSes not Linux|FreeBSD'", 10, 0
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
_s207: db "cannot read file `", 0
_s208: db "`", 10, 0
_s209: db "[33m", 0
_s210: db "LOG:  ", 0
_s211: db "scanning file `", 0
_s212: db "FATAL: Failed to get current time", 0
_s213: db 27, "[1m", 27, "[31msrc/formatting.stas:36:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s214: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:776:13: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: syscall `stat` failed'", 10, 0
_s215: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:780:19: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: failed to call `stat`'", 10, 0
_s216: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:791:12: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: `mmap` call failed'", 10, 0
_s217: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:798:15: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: failed to close file descriptor'", 10, 0
_s218: db 27, "[1m", 27, "[31msrc/scanner.stas:20:24: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s219: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s220: db 27, "[1m", 27, "[31msrc/formatting.stas:48:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s221: db "unterminated string literal", 0
_s222: db ":", 0
_s223: db ": ", 0
_s224: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:164:24: ", 27, "[39m", 27, "[22massertation failed, 'Array64.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s225: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:127:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64<<: append exceeded bounds in Array64'", 10, 0
_s226: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:123:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64[]: index out of bounds'", 10, 0
_s227: db " | ", 0
_s228: db "    ", 0
_s229: db "       ", 0
_s230: db "escape character does not exist", 0
_s231: db "unhandled escape character", 0
_s232: db ".", 0
_s233: db "/", 0
_s234: db "lib", 0
_s235: db "..", 0
_s236: db "unable to locate file to include", 0
_s237: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:703:9: ", 27, "[39m", 27, "[22massertation failed, 'is_dir: syscall `stat` failed'", 10, 0
_s238: db "file specified to include is a directory", 0
_s239: db "including file `", 0
_s240: db 27, "[1m", 27, "[31msrc/tokens.stas:391:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s241: db "unterminated character literal", 0
_s242: db "empty character literal", 0
_s243: db "character literals must contain a single character", 0
_s244: db "file to include is not a string", 0
_s245: db "9223372036854775808", 0
_s246: db "18446744073709551615", 0
_s247: db "number overflows", 0
_s248: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/string.stas:347:17: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s249: db "include", 0
_s250: db "{", 0
_s251: db "}", 0
_s252: db "->", 0
_s253: db "fn", 0
_s254: db "const", 0
_s255: db "assert", 0
_s256: db "argc", 0
_s257: db "argv", 0
_s258: db "ret", 0
_s259: db "if", 0
_s260: db "else", 0
_s261: db "elif", 0
_s262: db "while", 0
_s263: db "break", 0
_s264: db "continue", 0
_s265: db "+", 0
_s266: db "*", 0
_s267: db "%", 0
_s268: db "++", 0
_s269: db "--", 0
_s270: db "%%", 0
_s271: db ">>", 0
_s272: db "<<", 0
_s273: db "&", 0
_s274: db "|", 0
_s275: db "~", 0
_s276: db "!", 0
_s277: db "^", 0
_s278: db "swap", 0
_s279: db "dup", 0
_s280: db "over", 0
_s281: db "over2", 0
_s282: db "rot", 0
_s283: db "rot4", 0
_s284: db "drop", 0
_s285: db "=", 0
_s286: db "!=", 0
_s287: db ">", 0
_s288: db "<", 0
_s289: db ">=", 0
_s290: db "<=", 0
_s291: db ">s", 0
_s292: db "<s", 0
_s293: db ">=s", 0
_s294: db "<=s", 0
_s295: db "w8", 0
_s296: db "w16", 0
_s297: db "w32", 0
_s298: db "w64", 0
_s299: db "r8", 0
_s300: db "r16", 0
_s301: db "r32", 0
_s302: db "r64", 0
_s303: db "reserve", 0
_s304: db "auto", 0
_s305: db "pop", 0
_s306: db "addr", 0
_s307: db "envp", 0
_s308: db "sizeof", 0
_s309: db "cextern", 0
_s310: db "asm", 0
_s311: db "comptime", 0
_s312: db "?def", 0
_s313: db "unexpected EOF when parsing file to include", 0
_s314: db "scanning took ", 0
_s315: db "[34m", 0
_s316: db "TIME: ", 0
_s317: db " ms", 10, 0
_s318: db 27, "[1m", 27, "[31msrc/tokens.stas:376:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s319: db "name", 0
_s320: db "string_lit", 0
_s321: db "number_lit", 0
_s322: db 27, "[1m", 27, "[31msrc/tokens.stas:210:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s323: db " -> ", 0
_s324: db "TARGET_LINUX", 0
_s325: db 27, "[1m", 27, "[31msrc/parserdefs.stas:356:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s326: db "TARGET_FREEBSD", 0
_s327: db 27, "[1m", 27, "[31mstas.stas:426:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s328: db "parsing ", 0
_s329: db " tokens", 10, 0
_s330: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:397:24: ", 27, "[39m", 27, "[22massertation failed, 'Array32.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s331: db 27, "[1m", 27, "[31msrc/parserdefs.stas:399:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s332: db 27, "[1m", 27, "[31msrc/parserdefs.stas:365:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s333: db "unclosed conditional scope", 0
_s334: db "forbidden word in const function", 0
_s335: db 27, "[1m", 27, "[31msrc/parser.stas:1448:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s336: db "expected variable name", 0
_s337: db 27, "[1m", 27, "[31msrc/parserdefs.stas:330:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s338: db "name is already an existing variable", 0
_s339: db "variable declared here", 0
_s340: db 27, "[1m", 27, "[31msrc/parserdefs.stas:410:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s341: db "name is already an existing function", 0
_s342: db 27, "[1m", 27, "[31msrc/parserdefs.stas:294:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s343: db "function declared here", 0
_s344: db 27, "[1m", 27, "[31msrc/parserdefs.stas:648:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s345: db "name is already an existing C extern function", 0
_s346: db "unexpected EOF in variable declaration", 0
_s347: db "referenced variable is not a constant", 0
_s348: db "unknown constant name", 0
_s349: db "unexpected EOF when parsing constant expression", 0
_s350: db "const expressions can only call const functions", 0
_s351: db "not enough values to consume for function call", 0
_s352: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:356:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32[]: index out of bounds'", 10, 0
_s353: db "backtrace", 0
_s354: db "not enough values to consume for operation", 0
_s355: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:360:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32<<: append exceeded bounds in Array32'", 10, 0
_s356: db 27, "[1m", 27, "[31msrc/parserdefs.stas:308:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s357: db "unknown variable name or const function", 0
_s358: db "cannot get the size of a constant", 0
_s359: db "not enought values on the stack to pop into an automatic variable", 0
_s360: db 27, "[1m", 27, "[31msrc/parser.stas:411:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s361: db "cannot pop into a buffer", 0
_s362: db "cannot get address of a buffer, buffer is already an address", 0
_s363: db "cannot edit a constant", 0
_s364: db "cannot get address of a constant as it does not reside in memory", 0
_s365: db 27, "[1m", 27, "[31msrc/parser.stas:426:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s366: db "unknown variable", 0
_s367: db "expected constant name", 0
_s368: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:368:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.pop: array is empty'", 10, 0
_s369: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:364:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.top: array is empty'", 10, 0
_s370: db "unsupported token inside a constant expression", 0
_s371: db "comptime constant functions recursion depth limit reached", 0
_s372: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:135:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.pop: array is empty'", 10, 0
_s373: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:452:27: ", 27, "[39m", 27, "[22massertation failed, 'Array32.search_kv?: array length is not multiple of two'", 10, 0
_s374: db 27, "[1m", 27, "[31msrc/eval.stas:220:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s375: db 27, "[1m", 27, "[31msrc/eval.stas:229:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s376: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:111:16: ", 27, "[39m", 27, "[22massertation failed, '&Array64.top: array is empty'", 10, 0
_s377: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/array.stas:131:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.top: array is empty'", 10, 0
_s378: db 27, "[1m", 27, "[31msrc/eval.stas:234:30: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s379: db 27, "[1m", 27, "[31msrc/eval.stas:240:19: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s380: db "constant expression must contain a value", 0
_s381: db "more than one unhandled value on left on the constant expression", 0
_s382: db 27, "[1m", 27, "[31msrc/parser.stas:1410:37: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s383: db "expected value, constant name, expression scope, or `?def`", 0
_s384: db "auto variables cannot have a size of zero", 0
_s385: db 27, "[1m", 27, "[31msrc/parserdefs.stas:344:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s386: db "function name must not be an intrinsic", 0
_s387: db "a function name cannot begin with an an underscore", 0
_s388: db "unexpected EOF in function declaration", 0
_s389: db "function return and argument counts must be numbers", 0
_s390: db "new scope must proceed after function header", 0
_s391: db "unexpected token in function declaration", 0
_s392: db "function attributes conflict", 0
_s393: db "main", 0
_s394: db "the main function is not inlinable", 0
_s395: db "the main function may not be const", 0
_s396: db "the main function must accept and return zero values", 0
_s397: db 27, "[1m", 27, "[31msrc/parserdefs.stas:432:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s398: db 27, "[1m", 27, "[31msrc/parser.stas:276:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s399: db 27, "[1m", 27, "[31msrc/parserdefs.stas:381:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s400: db "expected name of constant", 0
_s401: db "unexpected EOF when parsing const expression", 0
_s402: db "external C functions can only be used when compiling with `-c`", 0
_s403: db "expected name of external C function", 0
_s404: db "unexpected EOF when parsing external C function", 0
_s405: db "argument size specification must be 8, 16, 32 or 64", 0
_s406: db "unexpected keyword inside C function arguments, expected a number", 0
_s407: db "external C functions with more than 6 arguments are not supported", 0
_s408: db "void", 0
_s409: db "unexpected name, expected number or 'void'", 0
_s410: db 27, "[1m", 27, "[31msrc/parserdefs.stas:674:34: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s411: db "unexpected EOF in comptime declaration", 0
_s412: db "expected if block after comptime", 0
_s413: db 27, "[1m", 27, "[31msrc/parserdefs.stas:394:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s414: db "expected name as function attribute", 0
_s415: db "noinline", 0
_s416: db "inline", 0
_s417: db "noreturn", 0
_s418: db "noeval", 0
_s419: db "unknown function attribute", 0
_s420: db "a scope must follow a static assert to open an expression", 0
_s421: db "static assertation failed", 0
_s422: db ", '", 0
_s423: db "'", 0
_s424: db "a scope must come after an else statement", 0
_s425: db "unknown toplevel token", 0
_s426: db "no value on stack to consume for assertion", 0
_s427: db 0
_s428: db "assertation failed, '", 0
_s429: db "'", 10, 0
_s430: db "assertation failed", 10, 0
_s431: db "inline functions cannot call themselves", 0
_s432: db "const functions cannot call non const functions", 0
_s433: db 27, "[1m", 27, "[31msrc/parser.stas:148:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s434: db "const functions can only invoke constant variables", 0
_s435: db 27, "[1m", 27, "[31msrc/parser.stas:1113:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s436: db "unknown function or variable", 0
_s437: db "no value on stack to consume for if statement", 0
_s438: db "a scope must come after an if statement", 0
_s439: db "cannot declare a while loop inside an existing while loop header", 0
_s440: db "not inside while loop body", 0
_s441: db "unreachable code", 0
_s442: db "no value on stack to consume for while header", 0
_s443: db "no value on stack to consume for else if statement", 0
_s444: db "unhandled data on the stack", 0
_s445: db "not enough values on the stack on function return", 0
_s446: db 27, "[1m", 27, "[31msrc/parser.stas:711:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s447: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s448: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s449: db "unexpected EOF when parsing else statement", 0
_s450: db "the stack must remain the same with single branches", 0
_s451: db 27, "[1m", 27, "[31msrc/parser.stas:827:10: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s452: db "the stack must remain the same each with else if branch", 0
_s453: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s454: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s455: db "block expects body, an unhandled elif or while keyword may be causing this", 0
_s456: db 27, "[1m", 27, "[31msrc/parser.stas:139:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s457: db 27, "[1m", 27, "[31msrc/parser.stas:1237:7: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for const functions'", 10, 0
_s458: db "unhandled data on the stack for early return", 0
_s459: db "not enough values on the stack on early return", 0
_s460: db "a number must appear after the arrow assert operator", 0
_s461: db "a scope must come after the arrow assert operator", 0
_s462: db "unexpected EOF in assembly invocation", 0
_s463: db "rbx", 0
_s464: db "rcx", 0
_s465: db "rsi", 0
_s466: db "rdi", 0
_s467: db "r9", 0
_s468: db "r10", 0
_s469: db "r11", 0
_s470: db "r12", 0
_s471: db "r13", 0
_s472: db "r14", 0
_s473: db "r15", 0
_s474: db "rdx", 0
_s475: db "rax", 0
_s476: db "name is not a 64 bit register", 0
_s477: db "64 bit register is already on the argument list", 0
_s478: db "unexpected token, expected 64 bit register string", 0
_s479: db "unexpected EOF when parsing register list", 0
_s480: db "64 bit register is already on the return list", 0
_s481: db "new scope must proceed after assembly invocation", 0
_s482: db "unexpected EOF when parsing inline assembly body", 0
_s483: db "expected assembly string", 0
_s484: db 27, "[1m", 27, "[31msrc/asm.stas:35:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s485: db "cannot define a function inside a function", 0
_s486: db "must proceed after an if statement or chained `elif`", 0
_s487: db 27, "[1m", 27, "[31msrc/parser.stas:1330:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s488: db 27, "[1m", 27, "[31msrc/parser.stas:1764:28: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s489: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s490: db 27, "[1m", 27, "[31msrc/parser.stas:1774:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s491: db "no main function", 0
_s492: db "parsing took ", 0
_s493: db " functions, ", 0
_s494: db " labels", 10, 0
_s495: db "tok[]	data	inst", 10, 10, 0
_s496: db "	", 0
_s497: db "push_str", 0
_s498: db "push_num", 0
_s499: db "push_local_addr", 0
_s500: db "pop_local_stack_var", 0
_s501: db "push_local_stack_var", 0
_s502: db "push_global_var_name", 0
_s503: db "pop_global_stack_var", 0
_s504: db "push_global_stack_var", 0
_s505: db "push_argc", 0
_s506: db "push_argv", 0
_s507: db "do_cond_jmp", 0
_s508: db "do_jmp", 0
_s509: db "label", 0
_s510: db "fn_prelude", 0
_s511: db "fn_leave", 0
_s512: db "fn_call", 0
_s513: db "plus", 0
_s514: db "sub", 0
_s515: db "mul", 0
_s516: db "div", 0
_s517: db "mod", 0
_s518: db "inc", 0
_s519: db "dec", 0
_s520: db "divmod", 0
_s521: db "shr", 0
_s522: db "shl", 0
_s523: db "not", 0
_s524: db "b_and", 0
_s525: db "b_or", 0
_s526: db "b_not", 0
_s527: db "b_xor", 0
_s528: db "equ", 0
_s529: db "nequ", 0
_s530: db "gt", 0
_s531: db "lt", 0
_s532: db "gte", 0
_s533: db "lte", 0
_s534: db "s_gt", 0
_s535: db "s_lt", 0
_s536: db "s_gte", 0
_s537: db "s_lte", 0
_s538: db "push_envp", 0
_s539: db "c_fn_call", 0
_s540: db "asm_invoc", 0
_s541: db 27, "[1m", 27, "[31msrc/parserdefs.stas:273:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s542: db "dce pass started", 10, 0
_s543: db 27, "[1m", 27, "[31msrc/dce.stas:61:34: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s544: db 27, "[1m", 27, "[31msrc/dce.stas:21:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s545: db 27, "[1m", 27, "[31msrc/dce.stas:11:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s546: db 27, "[1m", 27, "[31msrc/dce.stas:142:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s547: db "dce took ", 0
_s548: db " used functions, of which ", 0
_s549: db " are eligible for inline", 10, 0
_s550: db " string literals", 10, 0
_s551: db ".tmp", 0
_s552: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:757:13: ", 27, "[39m", 27, "[22massertation failed, 'create_new_file_fd?: syscall `open` failed'", 10, 0
_s553: db "cannot create new file `", 0
_s554: db "` for writing", 10, 0
_s555: db "generating code from ", 0
_s556: db " IR instructions", 10, 0
_s557: db "use64", 0
_s558: db 27, "[1m", 27, "[31msrc/write.stas:16:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s559: db 27, "[1m", 27, "[31msrc/write.stas:9:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s560: db "format ELF64", 0
_s561: db "section '.text' executable align 16", 0
_s562: db "public _start", 0
_s563: db "public _exit", 0
_s564: db "extrn ", 0
_s565: db "format ELF64 executable ", 0
_s566: db "segment readable executable", 0
_s567: db "entry _start", 0
_s568: db "%line 0+0 '", 0
_s569: db "[BITS 64]", 0
_s570: db "[global _start]", 0
_s571: db "[section .text]", 0
_s572: db "[extern ", 0
_s573: db 27, "[1m", 27, "[31msrc/gen.stas:879:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s574: db "_start:", 0
_s575: db "	mov [_arg_p], rdi", 0
_s576: db "	mov [_arg_p], rsp", 0
_s577: db "	mov qword [_rs_p], _rs_top", 0
_s578: db "	mov rbp, rsp", 0
_s579: db "	mov rsp, [_rs_p]", 0
_s580: db "	call main", 0
_s581: db "	xor rdi, rdi", 0
_s582: db "_exit:", 0
_s583: db "	mov eax, 1", 0
_s584: db "	mov eax, 60", 0
_s585: db "	syscall", 0
_s586: db "	nop", 0
_s587: db 27, "[1m", 27, "[31msrc/x86.stas:323:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s588: db 27, "[1m", 27, "[31msrc/x86.stas:248:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s589: db "	push ", 0
_s590: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s591: db 27, "[1m", 27, "[31msrc/x86.stas:207:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s592: db 27, "[1m", 27, "[31msrc/x86.stas:208:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s593: db 27, "[1m", 27, "[31msrc/x86.stas:254:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s594: db "	mov ", 0
_s595: db ", ", 0
_s596: db "%line ", 0
_s597: db "+0 '", 0
_s598: db 27, "[1m", 27, "[31msrc/gen.stas:180:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s599: db "public ", 0
_s600: db "_a", 0
_s601: db "_b", 0
_s602: db "_c", 0
_s603: db "_d", 0
_s604: db "_e", 0
_s605: db "_f", 0
_s606: db "_g", 0
_s607: db "	sub rsp, ", 0
_s608: db "	mov [_rs_p], rsp", 0
_s609: db "	mov rsp, rbp", 0
_s610: db "[35m", 0
_s611: db "	mov eax, 4", 0
_s612: db "	mov rdi, 2", 0
_s613: db "	mov rdx, ", 0
_s614: db "	mov rsi, _s", 0
_s615: db "	jmp ", 0
_s616: db "	add rsp, ", 0
_s617: db "	ret", 0
_s618: db "	call ", 0
_s619: db 27, "[1m", 27, "[31msrc/x86.stas:215:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s620: db "	pop ", 0
_s621: db "	test ", 0
_s622: db "	jnz ", 0
_s623: db "	mov edi, 2", 0
_s624: db "	mov rdi, 1", 0
_s625: db "	jmp _exit", 0
_s626: db "_s", 0
_s627: db "qword [_rs_p]", 0
_s628: db "	add ", 0
_s629: db ", qword [_rs_p]", 0
_s630: db "	mov qword [", 0
_s631: db " + ", 0
_s632: db "], ", 0
_s633: db "qword [", 0
_s634: db "]", 0
_s635: db "qword _g", 0
_s636: db "	mov [_g", 0
_s637: db ", _g", 0
_s638: db ", [_g", 0
_s639: db ", qword [_arg_p]", 0
_s640: db ", [", 0
_s641: db ", 8", 0
_s642: db "	lea ", 0
_s643: db " * 8 + 8]", 0
_s644: db "	jz ", 0
_s645: db "add", 0
_s646: db "imul", 0
_s647: db 27, "[1m", 27, "[31msrc/x86.stas:260:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s648: db 27, "[1m", 27, "[31msrc/x86.stas:406:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s649: db "	xor rdx, rdx", 0
_s650: db "	div ", 0
_s651: db "	inc ", 0
_s652: db "	dec ", 0
_s653: db "	shr ", 0
_s654: db ", cl", 0
_s655: db "	shl ", 0
_s656: db "	sete ", 0
_s657: db "bl", 0
_s658: db "cl", 0
_s659: db "sil", 0
_s660: db "dil", 0
_s661: db "r8b", 0
_s662: db "r9b", 0
_s663: db "r10b", 0
_s664: db "r11b", 0
_s665: db "r12b", 0
_s666: db "r13b", 0
_s667: db "r14b", 0
_s668: db "r15b", 0
_s669: db "dl", 0
_s670: db "al", 0
_s671: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s672: db "and", 0
_s673: db "or", 0
_s674: db "	not ", 0
_s675: db "xor", 0
_s676: db "qword [rsp + ", 0
_s677: db "	add rsp, 8", 0
_s678: db "	xor ", 0
_s679: db "	cmp ", 0
_s680: db "	setne ", 0
_s681: db "	seta ", 0
_s682: db "	setb ", 0
_s683: db "	setae ", 0
_s684: db "	setbe ", 0
_s685: db "	setg ", 0
_s686: db "	setl ", 0
_s687: db "	setge ", 0
_s688: db "	setle ", 0
_s689: db "	mov byte [", 0
_s690: db "	mov word [", 0
_s691: db "bx", 0
_s692: db "cx", 0
_s693: db "si", 0
_s694: db "di", 0
_s695: db "r8w", 0
_s696: db "r9w", 0
_s697: db "r10w", 0
_s698: db "r11w", 0
_s699: db "r12w", 0
_s700: db "r13w", 0
_s701: db "r14w", 0
_s702: db "r15w", 0
_s703: db "dx", 0
_s704: db "ax", 0
_s705: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s706: db "	mov dword [", 0
_s707: db "ebx", 0
_s708: db "ecx", 0
_s709: db "esi", 0
_s710: db "edi", 0
_s711: db "r8d", 0
_s712: db "r9d", 0
_s713: db "r10d", 0
_s714: db "r11d", 0
_s715: db "r12d", 0
_s716: db "r13d", 0
_s717: db "r14d", 0
_s718: db "r15d", 0
_s719: db "edx", 0
_s720: db "eax", 0
_s721: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s722: db 27, "[1m", 27, "[31msrc/gen.stas:68:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s723: db 27, "[1m", 27, "[31msrc/gen.stas:101:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s724: db "	and rax, 0xFF", 0
_s725: db "	and rax, 0xFFFF", 0
_s726: db 27, "[1m", 27, "[31msrc/asm.stas:23:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s727: db 27, "[1m", 27, "[31msrc/gen.stas:757:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s728: db "section '.rodata' align 8", 0
_s729: db "segment readable", 0
_s730: db "[section .rodata]", 0
_s731: db 27, "[1m", 27, "[31msrc/gen.stas:917:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s732: db ": db ", 0
_s733: db "0", 10, 0
_s734: db 34, 0
_s735: db ", ", 34, 0
_s736: db 34, ", ", 0
_s737: db ", 0", 10, 0
_s738: db "section '.bss' writeable align 8", 0
_s739: db "segment readable writeable", 0
_s740: db "[section .bss]", 0
_s741: db 27, "[1m", 27, "[31msrc/gen.stas:941:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s742: db ": rb ", 0
_s743: db ": resb ", 0
_s744: db 27, "[1m", 27, "[31msrc/gen.stas:956:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s745: db "_arg_p: rq 1", 0
_s746: db "_rs_p: rq 1", 0
_s747: db "_rs: rb ", 0
_s748: db "_arg_p: resq 1", 0
_s749: db "_rs_p: resq 1", 0
_s750: db "_rs: resb ", 0
_s751: db 27, "[1m", 27, "[31msrc/gen.stas:973:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s752: db "_rs_top:", 0
_s753: db "gen took ", 0
_s754: db "generated ", 0
_s755: db 27, "[1m", 27, "[31mstas.stas:496:38: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s756: db " KiBs of code", 10, 0
_s757: db " bytes of code", 10, 0
_s758: db "FATAL: Failed to close file descriptor", 10, 0
_s759: db "wrote code to `", 0
_s760: db "executing assembler backend `", 0
_s761: db 27, "[1m", 27, "[31mstas.stas:21:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s762: db ".o", 0
_s763: db "-m", 0
_s764: db "1048576", 0
_s765: db "PATH", 0
_s766: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:385:16: ", 27, "[39m", 27, "[22massertation failed, '", 34, "PATH", 34, " enviroment variable not found'", 10, 0
_s767: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:493:12: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `fork` invocation failed'", 10, 0
_s768: db "/dev/null", 0
_s769: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:499:57: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: opening `/dev/null` failed'", 10, 0
_s770: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:503:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stdout with `dup2`'", 10, 0
_s771: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:506:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stderr with `dup2`'", 10, 0
_s772: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:516:10: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `execve` invocation failed'", 10, 0
_s773: db 27, "[1m", 27, "[31m/home/liaml/git/compiler/lib/stdlib/os.stas:523:16: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `wait4` invocation failed'", 10, 0
_s774: db "execute_child?: child process was terminated by signal ", 0
_s775: db "Failed to execute process `", 0
_s776: db "`", 0
_s777: db "-O0", 0
_s778: db "-felf64", 0
_s779: db "-Fdwarf", 0
_s780: db "ld", 0
_s781: db "chmod", 0
_s782: db "+x", 0
_s783: db "backend took ", 0
_s784: db "created binary `", 0
_s785: db "execve binary `", 0
_s786: db "FATAL: Could not execve file", 10, 0
segment readable writeable
_galloc_buffer.len: rb 8
_galloc_buffer.data: rb 16384
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
