use64
format ELF64 executable 9
segment readable executable
entry _start
_start:
	mov [_arg_p], rdi
	mov qword [_rs_p], _rs_top
	mov rbp, rsp
	mov rsp, [_rs_p]
	call main
	xor rdi, rdi
_exit:
	mov eax, 1
	syscall
	nop
WIFSIGNALED:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 127
	pop rsi
	and rsi, rbx
	mov rbx, rsi
	mov rdi, rbx
	mov r8, 127
	xor r9, r9
	cmp rdi, r8
	setne r9b
	mov rdi, 0
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	mov rbx, 19
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	and r9, rdi
	and r8, r9
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
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
	mov r8, 4
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
	mov rbx, 4
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
	mov r8, 4
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
	mov rbx, 4
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
	mov r8, 4
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
	mov rbx, 4
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
	mov r8, 4
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
	mov r8, 4
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
	jnz .2727
	mov eax, 4
	mov edi, 2
	mov rsi, _s189
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2727:
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
	jnz .2728
	mov eax, 4
	mov edi, 2
	mov rsi, _s296
	mov rdx, 141
	syscall
	mov rdi, 1
	jmp _exit
.2728:
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
	jnz .2729
	mov eax, 4
	mov edi, 2
	mov rsi, _s339
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2729:
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
	jnz .2730.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s318
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2730.1:
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
	jnz .2731.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s318
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2731.2:
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
	mov rbx, _s211
	mov rsi, 19
	push rbx
	push rsi
	jmp .200
.198:
	mov rbx, _s212
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
	mov r8, 4
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
	jnz .2732.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2732.1:
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
	jnz .2733.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2733.2:
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
	jnz .2734.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2734.3:
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
	jnz .2735.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2735.4:
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
	jnz .2736.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s136
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2736.1:
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
	jnz .2737.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s136
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2737.2:
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
salloc.push_32:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, 16384
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jnz .2738.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s136
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2738.3:
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	pop rsi
	mov dword [rbx], esi
	mov rbx, [_galloc_buffer.len]
	mov rsi, 4
	add rbx, rsi
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	mov r8, 4
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
	mov rdi, 35
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
	mov rdi, 11
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
	mov rdi, 63
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
	mov rdi, 77
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
	mov rdi, 78
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
	mov rdi, 66
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
	mov rdi, 62
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
	mov rdi, 35
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
	mov rdi, 83
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
	mov rdi, 82
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
	mov rdi, 71
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
	mov rdi, 91
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
	mov rdi, 92
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
	mov rdi, 90
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
	mov rdi, 89
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
	mov rdi, 84
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
	mov rdi, 86
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
	mov rdi, 68
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
	mov rdi, 38
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
	mov rdi, 39
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
	mov rdi, 40
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
	mov rdi, 41
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
	mov rdi, 42
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
	mov rdi, 43
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
	mov rdi, 44
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
	mov rdi, 45
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
	mov rdi, 46
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
	mov rdi, 47
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
	mov rdi, 48
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
	mov rdi, 49
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
	mov rdi, 50
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
	mov rdi, 51
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
	mov rdi, 52
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
	mov rdi, 53
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
	mov rdi, 54
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
	mov rdi, 55
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
	mov rdi, 56
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
	mov rdi, 57
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
	mov rdi, 58
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
	mov rdi, 59
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
	mov rdi, 60
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
	mov rdi, 61
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
	mov rdi, 64
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
	mov rdi, 65
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
	mov rdi, 37
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
	mov rdi, 36
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
	mov rdi, 70
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
	mov rdi, 69
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
	mov rdi, 85
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
	mov rdi, 96
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
	mov rdi, 95
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
	mov rdi, 45
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
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .424
	mov rbx, _s119
	mov rsi, 29
	push rbx
	push rsi
	jmp .425
.424:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .427
	mov rbx, _s120
	mov rsi, 27
	push rbx
	push rsi
	jmp .425
.427:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .429
	mov rbx, _s121
	mov rsi, 32
	push rbx
	push rsi
	jmp .425
.429:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .431
	mov rbx, _s122
	mov rsi, 34
	push rbx
	push rsi
	jmp .425
.431:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .433
	mov rbx, _s123
	mov rsi, 37
	push rbx
	push rsi
	jmp .425
.433:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .435
	mov rbx, _s124
	mov rsi, 40
	push rbx
	push rsi
	jmp .425
.435:
	pop rbx
	mov rsi, rbx
	mov rdi, 79
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .437
	mov rbx, _s125
	mov rsi, 42
	push rbx
	push rsi
	jmp .425
.437:
	pop rbx
	mov rsi, rbx
	mov rdi, 80
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .439
	mov rbx, _s126
	mov rsi, 28
	push rbx
	push rsi
	jmp .425
.439:
	pop rbx
	mov rsi, rbx
	mov rdi, 81
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .441
	mov rbx, _s127
	mov rsi, 30
	push rbx
	push rsi
	jmp .425
.441:
	pop rbx
	mov rsi, rbx
	mov rdi, 87
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .443
	mov rbx, _s128
	mov rsi, 29
	push rbx
	push rsi
	jmp .425
.443:
	pop rbx
	mov rsi, rbx
	mov rdi, 88
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .445
	mov rbx, _s129
	mov rsi, 27
	push rbx
	push rsi
	jmp .425
.445:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .447
	mov rbx, _s130
	mov rsi, 39
	push rbx
	push rsi
	jmp .425
.447:
	pop rbx
	mov rsi, rbx
	mov rdi, 94
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .449
	mov rbx, _s131
	mov rsi, 43
	push rbx
	push rsi
	jmp .425
.449:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .451
	mov rbx, _s132
	mov rsi, 35
	push rbx
	push rsi
	jmp .425
.451:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .453
	mov rbx, _s133
	mov rsi, 30
	push rbx
	push rsi
	jmp .425
.453:
	mov rbx, _s134
	mov rsi, 15
	push rbx
	push rsi
.454:
.425:
.423:
.254:
	pop rbx
	pop rsi
	pop rdi
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	mov r8, 4
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
	jz .455
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.455:
	mov rbx, _s731
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
	jnz .2739
	mov eax, 4
	mov edi, 2
	mov rsi, _s732
	mov rdx, 105
	syscall
	mov rdi, 1
	jmp _exit
.2739:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	pop rsi
	mov qword [rbx + 16], rsi
.457:
	mov rbx, 1
	test rbx, rbx
	jz .458
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
	jz .459
	add rsp, 8
	add rsp, 8
	jmp .458
	jmp .461
.459:
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
	mov rdi, 33
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
	jz .462
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
.462:
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
	jnz .2740.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s138
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2740.1:
	mov [_galloc_buffer.len], rsi
.461:
	add rsp, 8
	add rsp, 8
	jmp .457
.458:
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
	jz .464
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.464:
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
	jz .466
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.466:
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
	jz .468
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.468:
	pop rbx
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .470
	mov rbx, 1
	push rbx
	jmp .472
.470:
	mov rbx, 0
	push rbx
.472:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
get_executable_path:
	sub rsp, 24
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
	jnz .2741.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s136
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2741.4:
	mov rsi, qword _galloc_buffer.data
	mov rdi, [_galloc_buffer.len]
	add rsi, rdi
	mov rdi, [_galloc_buffer.len]
	add rbx, rdi
	mov [_galloc_buffer.len], rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 4096
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 14
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 4
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, qword [_rs_p]
	add rdi, 16
	mov r9, 0
	mov r10, 0
	mov r11, 202
	mov rax, r11
	mov r11, r9
	mov r9, r10
	mov r10, r8
	mov r8, r11
	mov r11, r10
	mov r10, rdi
	mov rdx, r11
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
	jnz .2742
	mov eax, 4
	mov edi, 2
	mov rsi, _s137
	mov rdx, 79
	syscall
	mov rdi, 1
	jmp _exit
.2742:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	push rsi
	push rbx
.63.4:
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
	jz .64.4
	pop rbx
	inc rbx
	push rbx
	jmp .63.4
.64.4:
	pop rbx
	pop rsi
	sub rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, qword _galloc_buffer.data
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_galloc_buffer.len]
	xor r8, r8
	cmp rsi, rdi
	setbe r8b
	test r8, r8
	jnz .2743.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s138
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2743.2:
	mov [_galloc_buffer.len], rbx
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
	add rsp, 24
	ret
	mov rbx, 0
	test rbx, rbx
	jnz .2744
	mov eax, 4
	mov edi, 2
	mov rsi, _s139
	mov rdx, 108
	syscall
	mov rdi, 1
	jmp _exit
.2744:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
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
	jz .473
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rdi, qword [rbx + 32]
	push rsi
	push rdi
	jmp .475
.473:
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
	jz .476
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.476:
.475:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, 2
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
	jnz .2745
	mov eax, 4
	mov edi, 2
	mov rsi, _s733
	mov rdx, 109
	syscall
	mov rdi, 1
	jmp _exit
.2745:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .478
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	or rsi, rdi
	test rsi, rsi
	jz .480
	mov rbx, 18446744073709551516
	mov rsi, _s734
	mov rdi, 0
	mov r8, 0
	mov r9, 499
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
	jnz .2746
	mov eax, 4
	mov edi, 2
	mov rsi, _s735
	mov rdx, 111
	syscall
	mov rdi, 1
	jmp _exit
.2746:
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rax
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	test rsi, rsi
	jz .482
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 1
	mov rdi, 90
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
	jnz .2747
	mov eax, 4
	mov edi, 2
	mov rsi, _s736
	mov rdx, 119
	syscall
	mov rdi, 1
	jmp _exit
.2747:
.482:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	test rsi, rsi
	jz .484
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 2
	mov rdi, 90
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
	jnz .2748
	mov eax, 4
	mov edi, 2
	mov rsi, _s737
	mov rdx, 119
	syscall
	mov rdi, 1
	jmp _exit
.2748:
.484:
.480:
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
	jz .486
	mov rbx, qword [_rs_p]
	add rbx, 16
	push rbx
	jmp .488
.486:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
.488:
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
	jz .489
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
.489:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2749
	mov eax, 4
	mov edi, 2
	mov rsi, _s738
	mov rdx, 111
	syscall
	mov rdi, 1
	jmp _exit
.2749:
	jmp .491
.478:
.492:
	mov rbx, 1
	test rbx, rbx
	jz .493
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	add rsi, 64
	mov rdi, 0
	mov r8, 0
	mov r9, 7
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
	jnz .2750
	mov eax, 4
	mov edi, 2
	mov rsi, _s739
	mov rdx, 110
	syscall
	mov rdi, 1
	jmp _exit
.2750:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 127
	and rsi, rbx
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .494
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 65535
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
	jz .496
	mov rbx, 1
	mov rax, rbx
	pop rdi
	syscall
	jmp .498
.496:
	add rsp, 8
.498:
	jmp .493
	jmp .495
.494:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call WIFSIGNALED
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .500
	mov rbx, _s740
	mov rsi, 55
	mov rdi, 2
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
.500:
.495:
	jmp .492
.493:
.491:
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
	jnz .2751.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s138
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2751.3:
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
	jnz .2752.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s136
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2752.5:
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
	jz .501
	mov rbx, 47
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
.501:
.503:
	mov rbx, 1
	test rbx, rbx
	jz .504
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
	jz .505
	add rsp, 8
	add rsp, 8
	jmp .506
.505:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s201
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
	jz .508
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	add rsp, 8
	add rsp, 8
	jmp .506
.508:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s197
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
	jz .510
	add rsp, 8
	add rsp, 8
	jmp .506
.510:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .512
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	add rsp, 8
	add rsp, 8
	jmp .514
.512:
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
	jnz .2753.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2753.5:
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
	jnz .2754.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2754.6:
.514:
.511:
.506:
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
	jz .515
	jmp .504
.515:
	jmp .503
.504:
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
	jz .517
	mov rbx, 0
	push rbx
.519:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 56]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .520
	mov rbx, _s201
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
	jz .521
	jmp .520
.521:
	mov rbx, _s198
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
	jmp .519
.520:
	add rsp, 8
.517:
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
	jz .523
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
.525:
	mov rbx, 1
	test rbx, rbx
	jz .526
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
	jnz .2755.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2755.1:
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
	jnz .2756.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2756.2:
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
	jz .527
	jmp .526
	jmp .529
.527:
	mov rbx, _s198
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push
	mov [_rs_p], rsp
	mov rsp, rbp
.529:
	jmp .525
.526:
	add rsp, 8
	jmp .530
.523:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, qword _galloc_buffer.data
	mov rdi, [_galloc_buffer.len]
	add rbx, rdi
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .531
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .533
	mov rbx, _s198
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
	jmp .535
.533:
	mov rbx, _s197
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 80
	ret
.535:
.531:
.530:
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
	jnz .2757.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s138
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2757.4:
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
getwd:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _galloc_buffer.data
	mov rsi, [_galloc_buffer.len]
	add rbx, rsi
	mov rsi, 4096
	mov rdi, rsi
	mov r8, [_galloc_buffer.len]
	add rdi, r8
	mov r8, 16384
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2758.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s136
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2758.6:
	mov rdi, qword _galloc_buffer.data
	mov r8, [_galloc_buffer.len]
	add rdi, r8
	mov r8, [_galloc_buffer.len]
	add rsi, r8
	mov [_galloc_buffer.len], rsi
	mov rsi, 4096
	mov r8, 326
	mov rax, r8
	mov r8, rsi
	mov rsi, r8
	mov r8, rdi
	mov rdi, r8
	syscall
	mov rsi, rax
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setg r8b
	test r8, r8
	jnz .2759
	mov eax, 4
	mov edi, 2
	mov rsi, _s199
	mov rdx, 115
	syscall
	mov rdi, 1
	jmp _exit
.2759:
	dec rax
	mov rsi, rbx
	add rax, rsi
	mov rsi, qword _galloc_buffer.data
	sub rax, rsi
	mov rsi, rax
	mov rdi, [_galloc_buffer.len]
	xor r8, r8
	cmp rsi, rdi
	setbe r8b
	test r8, r8
	jnz .2760.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s138
	mov rdx, 127
	syscall
	mov rdi, 1
	jmp _exit
.2760.5:
	mov [_galloc_buffer.len], rax
	mov rsi, rbx
	mov rdi, qword _galloc_buffer.data
	sub rsi, rdi
	mov rdi, [_galloc_buffer.len]
	sub rdi, rsi
	mov rsi, 0
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call salloc.push_8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
is_dir:
	sub rsp, 224
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, 18446744073709551516
	pop rdi
	mov r8, 0
	mov r9, 552
	mov rax, r9
	mov r10, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
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
	jz .538
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 224
	ret
.538:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call errno?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .2761
	mov eax, 4
	mov edi, 2
	mov rsi, _s203
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2761:
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
	add rsp, 224
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
	jz .540
	add rsp, 8
	add rsp, 8
	mov rbx, _s197
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.540:
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
	jz .542
	add rsp, 8
	mov rbx, _s197
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.542:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .544
	add rsp, 8
	mov rbx, _s198
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.544:
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
	sub rsp, 224
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, 551
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setne sil
	test rsi, rsi
	jz .546
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 224
	ret
.546:
	mov rbx, qword [_rs_p]
	mov rsi, 112
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 224
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
	mov rbx, 1537
	mov rdi, 448
	mov r8, 5
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
	jz .548
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	not rsi
	inc rsi
	mov rbx, 13
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .550
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.550:
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
	jnz .2762
	mov eax, 4
	mov edi, 2
	mov rsi, _s518
	mov rdx, 111
	syscall
	mov rdi, 1
	jmp _exit
.2762:
.548:
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
	mov r8, 5
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
	jz .552
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	not rsi
	inc rsi
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .554
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
.554:
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
	jnz .2763
	mov eax, 4
	mov edi, 2
	mov rsi, _s179
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2763:
.552:
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
	jnz .2764
	mov eax, 4
	mov edi, 2
	mov rsi, _s180
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2764:
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
	jz .556
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
	mov rsi, 1
	mov r8, 2
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 16]
	mov r9, 0
	mov r11, 477
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
	jnz .2765
	mov eax, 4
	mov edi, 2
	mov rsi, _s181
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2765:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rax
	push rsi
	jmp .558
.556:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.558:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 6
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	sete sil
	test rsi, rsi
	jnz .2766
	mov eax, 4
	mov edi, 2
	mov rsi, _s182
	mov rdx, 112
	syscall
	mov rdi, 1
	jmp _exit
.2766:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
make_path_relative_to_wd:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call getwd
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, 47
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.trim_len_delim_u8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, qword [rsp + 0]
	mov r8, rdi
	xor r9, r9
	cmp rbx, r8
	sete r9b
	push rsi
	push rdi
	test r9, r9
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
	jz .559
	mov rbx, _s197
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
.559:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 16]
	push rsi
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call string.starts_with
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .561
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	inc r8
	add rsi, r8
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	inc r8
	sub rdi, r8
	push rsi
	push rdi
	jmp .563
.561:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	push rsi
	push rdi
.563:
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
	jz .564
	mov rbx, _s160
	mov rsi, 4
	push rbx
	push rsi
	jmp .565
.564:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .567
	mov rbx, _s161
	mov rsi, 4
	push rbx
	push rsi
	jmp .565
.567:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2767
	mov eax, 4
	mov edi, 2
	mov rsi, _s727
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.2767:
	push rbx
	push rsi
.568:
.565:
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
	mov rbx, _s163
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
	jz .569
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .570
.569:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s164
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
	jz .572
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	jmp .570
.572:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.573:
.570:
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
	jz .574
	mov rbx, _s1
	mov rsi, 5
	push rbx
	push rsi
	jmp .575
.574:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .577
	mov rbx, _s2
	mov rsi, 7
	push rbx
	push rsi
	jmp .575
.577:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2768
	mov eax, 4
	mov edi, 2
	mov rsi, _s3
	mov rdx, 71
	syscall
	mov rdi, 1
	jmp _exit
.2768:
	push rbx
	push rsi
.578:
.575:
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
	jz .579
	mov rbx, 0
	mov rsi, 1
	push rbx
	push rsi
	jmp .580
.579:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .582
	mov rbx, 9
	mov rsi, 1
	push rbx
	push rsi
	jmp .580
.582:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.583:
.580:
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
	jnz .2769.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s184
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2769.1:
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
	jnz .2770.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s184
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2770.2:
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
	jnz .2771.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s184
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2771.3:
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
	jnz .2772.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s184
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2772.4:
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
	jz .584
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.584:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gstring_buffer.len]
	add rsi, rdi
	mov rdi, 8388608
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2773.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s184
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2773.5:
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
	jnz .2774.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s184
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.2774.6:
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s174
	mov rsi, 4
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	mov r8, 4
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
	jnz .2775
	mov eax, 4
	mov edi, 2
	mov rsi, _s185
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2775:
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
.586:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gopened_files.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .587
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gopened_files.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2776.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2776.1:
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
	jz .588
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.588:
	pop rbx
	inc rbx
	push rbx
	jmp .586
.587:
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
	jz .590
	mov rbx, _s285
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.590:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .593
	mov rbx, _s286
	mov rsi, 10
	push rbx
	push rsi
	jmp .591
.593:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .595
	mov rbx, _s287
	mov rsi, 10
	push rbx
	push rsi
	jmp .591
.595:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .597
	mov rbx, _s216
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.597:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .599
	mov rbx, _s217
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.599:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .601
	mov rbx, _s218
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.601:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .603
	mov rbx, _s219
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.603:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .605
	mov rbx, _s220
	mov rsi, 5
	push rbx
	push rsi
	jmp .591
.605:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .607
	mov rbx, _s221
	mov rsi, 6
	push rbx
	push rsi
	jmp .591
.607:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .609
	mov rbx, _s222
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.609:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .611
	mov rbx, _s223
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.611:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .613
	mov rbx, _s224
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.613:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .615
	mov rbx, _s225
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.615:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .617
	mov rbx, _s226
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.617:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .619
	mov rbx, _s227
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.619:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .621
	mov rbx, _s228
	mov rsi, 5
	push rbx
	push rsi
	jmp .591
.621:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .623
	mov rbx, _s229
	mov rsi, 5
	push rbx
	push rsi
	jmp .591
.623:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .625
	mov rbx, _s230
	mov rsi, 8
	push rbx
	push rsi
	jmp .591
.625:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .627
	mov rbx, _s231
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.627:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .629
	mov rbx, _s171
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.629:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .631
	mov rbx, _s232
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.631:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .633
	mov rbx, _s198
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.633:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .635
	mov rbx, _s233
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.635:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .637
	mov rbx, _s234
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.637:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .639
	mov rbx, _s235
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.639:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .641
	mov rbx, _s236
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.641:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .643
	mov rbx, _s237
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.643:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .645
	mov rbx, _s238
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.645:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .647
	mov rbx, _s239
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.647:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .649
	mov rbx, _s240
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.649:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .651
	mov rbx, _s241
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.651:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .653
	mov rbx, _s242
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.653:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .655
	mov rbx, _s243
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.655:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .657
	mov rbx, _s244
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.657:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .659
	mov rbx, _s245
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.659:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .661
	mov rbx, _s246
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.661:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .663
	mov rbx, _s247
	mov rsi, 5
	push rbx
	push rsi
	jmp .591
.663:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .665
	mov rbx, _s248
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.665:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .667
	mov rbx, _s249
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.667:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .669
	mov rbx, _s250
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.669:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .671
	mov rbx, _s251
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.671:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .673
	mov rbx, _s252
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.673:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .675
	mov rbx, _s253
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.675:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .677
	mov rbx, _s254
	mov rsi, 1
	push rbx
	push rsi
	jmp .591
.677:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .679
	mov rbx, _s255
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.679:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .681
	mov rbx, _s256
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.681:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .683
	mov rbx, _s257
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.683:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .685
	mov rbx, _s258
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.685:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .687
	mov rbx, _s259
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.687:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .689
	mov rbx, _s260
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.689:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .691
	mov rbx, _s261
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.691:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .693
	mov rbx, _s262
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.693:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .695
	mov rbx, _s263
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.695:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .697
	mov rbx, _s264
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.697:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .699
	mov rbx, _s265
	mov rsi, 2
	push rbx
	push rsi
	jmp .591
.699:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .701
	mov rbx, _s266
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.701:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .703
	mov rbx, _s267
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.703:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .705
	mov rbx, _s268
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.705:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .707
	mov rbx, _s269
	mov rsi, 7
	push rbx
	push rsi
	jmp .591
.707:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .709
	mov rbx, _s270
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.709:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .711
	mov rbx, _s271
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.711:
	pop rbx
	mov rsi, rbx
	mov rdi, 71
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .713
	mov rbx, _s272
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.713:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .715
	mov rbx, _s273
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.715:
	pop rbx
	mov rsi, rbx
	mov rdi, 73
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .717
	mov rbx, _s274
	mov rsi, 6
	push rbx
	push rsi
	jmp .591
.717:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .719
	mov rbx, _s275
	mov rsi, 7
	push rbx
	push rsi
	jmp .591
.719:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .721
	mov rbx, _s276
	mov rsi, 3
	push rbx
	push rsi
	jmp .591
.721:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .723
	mov rbx, _s277
	mov rsi, 8
	push rbx
	push rsi
	jmp .591
.723:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .725
	mov rbx, _s278
	mov rsi, 4
	push rbx
	push rsi
	jmp .591
.725:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2777
	mov eax, 4
	mov edi, 2
	mov rsi, _s288
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2777:
	push rbx
	push rsi
.726:
.591:
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
	mov rbx, _s216
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
	jz .727
	mov rbx, 4
	push rbx
	jmp .728
.727:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s217
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
	jz .730
	mov rbx, 5
	push rbx
	jmp .728
.730:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s218
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
	jz .732
	mov rbx, 6
	push rbx
	jmp .728
.732:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s219
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
	jz .734
	mov rbx, 7
	push rbx
	jmp .728
.734:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s220
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
	jz .736
	mov rbx, 9
	push rbx
	jmp .728
.736:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s221
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
	jz .738
	mov rbx, 10
	push rbx
	jmp .728
.738:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s222
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
	jz .740
	mov rbx, 11
	push rbx
	jmp .728
.740:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s223
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
	jz .742
	mov rbx, 12
	push rbx
	jmp .728
.742:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s224
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
	jz .744
	mov rbx, 13
	push rbx
	jmp .728
.744:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s225
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
	jz .746
	mov rbx, 15
	push rbx
	jmp .728
.746:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s226
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
	jz .748
	mov rbx, 16
	push rbx
	jmp .728
.748:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s227
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
	jz .750
	mov rbx, 17
	push rbx
	jmp .728
.750:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s228
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
	jz .752
	mov rbx, 18
	push rbx
	jmp .728
.752:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s229
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
	jz .754
	mov rbx, 19
	push rbx
	jmp .728
.754:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s230
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
	jz .756
	mov rbx, 20
	push rbx
	jmp .728
.756:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s231
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
	jz .758
	mov rbx, 21
	push rbx
	jmp .728
.758:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s171
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
	jz .760
	mov rbx, 22
	push rbx
	jmp .728
.760:
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
	jz .762
	mov rbx, 23
	push rbx
	jmp .728
.762:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s198
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
	jz .764
	mov rbx, 24
	push rbx
	jmp .728
.764:
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
	jz .766
	mov rbx, 25
	push rbx
	jmp .728
.766:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s234
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
	jz .768
	mov rbx, 26
	push rbx
	jmp .728
.768:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s235
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
	jz .770
	mov rbx, 27
	push rbx
	jmp .728
.770:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s236
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
	jz .772
	mov rbx, 28
	push rbx
	jmp .728
.772:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s237
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
	jz .774
	mov rbx, 29
	push rbx
	jmp .728
.774:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s238
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
	jz .776
	mov rbx, 30
	push rbx
	jmp .728
.776:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s239
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
	jz .778
	mov rbx, 31
	push rbx
	jmp .728
.778:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s240
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
	jz .780
	mov rbx, 32
	push rbx
	jmp .728
.780:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s241
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
	jz .782
	mov rbx, 33
	push rbx
	jmp .728
.782:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s242
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
	jz .784
	mov rbx, 70
	push rbx
	jmp .728
.784:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s243
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
	jz .786
	mov rbx, 34
	push rbx
	jmp .728
.786:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s244
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
	jz .788
	mov rbx, 35
	push rbx
	jmp .728
.788:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s245
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
	jz .790
	mov rbx, 36
	push rbx
	jmp .728
.790:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s246
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
	jz .792
	mov rbx, 37
	push rbx
	jmp .728
.792:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s247
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
	jz .794
	mov rbx, 38
	push rbx
	jmp .728
.794:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s248
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
	jz .796
	mov rbx, 39
	push rbx
	jmp .728
.796:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s249
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
	jz .798
	mov rbx, 40
	push rbx
	jmp .728
.798:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s250
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
	jz .800
	mov rbx, 41
	push rbx
	jmp .728
.800:
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
	jz .802
	mov rbx, 42
	push rbx
	jmp .728
.802:
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
	jz .804
	mov rbx, 43
	push rbx
	jmp .728
.804:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s253
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
	jz .806
	mov rbx, 44
	push rbx
	jmp .728
.806:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s254
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
	jz .808
	mov rbx, 45
	push rbx
	jmp .728
.808:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s255
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
	jz .810
	mov rbx, 46
	push rbx
	jmp .728
.810:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s256
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
	jz .812
	mov rbx, 47
	push rbx
	jmp .728
.812:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s257
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
	jz .814
	mov rbx, 48
	push rbx
	jmp .728
.814:
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
	jz .816
	mov rbx, 49
	push rbx
	jmp .728
.816:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s259
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
	jz .818
	mov rbx, 50
	push rbx
	jmp .728
.818:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s260
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
	jz .820
	mov rbx, 51
	push rbx
	jmp .728
.820:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s261
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
	jz .822
	mov rbx, 52
	push rbx
	jmp .728
.822:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s262
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
	jz .824
	mov rbx, 53
	push rbx
	jmp .728
.824:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s263
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
	jz .826
	mov rbx, 54
	push rbx
	jmp .728
.826:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s264
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
	jz .828
	mov rbx, 55
	push rbx
	jmp .728
.828:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s265
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
	jz .830
	mov rbx, 56
	push rbx
	jmp .728
.830:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s266
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
	jz .832
	mov rbx, 57
	push rbx
	jmp .728
.832:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s267
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
	jz .834
	mov rbx, 58
	push rbx
	jmp .728
.834:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s268
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
	jz .836
	mov rbx, 59
	push rbx
	jmp .728
.836:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s269
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
	jz .838
	mov rbx, 67
	push rbx
	jmp .728
.838:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s270
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
	jz .840
	mov rbx, 68
	push rbx
	jmp .728
.840:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s271
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
	jz .842
	mov rbx, 69
	push rbx
	jmp .728
.842:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s272
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
	jz .844
	mov rbx, 71
	push rbx
	jmp .728
.844:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s273
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
	jz .846
	mov rbx, 72
	push rbx
	jmp .728
.846:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s274
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
	jz .848
	mov rbx, 73
	push rbx
	jmp .728
.848:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s275
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
	jz .850
	mov rbx, 74
	push rbx
	jmp .728
.850:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s276
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
	jz .852
	mov rbx, 75
	push rbx
	jmp .728
.852:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s277
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
	jz .854
	mov rbx, 76
	push rbx
	jmp .728
.854:
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
	jz .856
	mov rbx, 77
	push rbx
	jmp .728
.856:
	mov rbx, 1
	push rbx
.857:
.728:
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
	jnz .2778
	mov eax, 4
	mov edi, 2
	mov rsi, _s206
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2778:
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
	jnz .2779.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2779.2:
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
	mov r9, 4
	mov rax, r9
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	mov rsi, _s187
	mov rdi, 1
	mov r8, 1
	mov r9, 4
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
	mov rbx, _s187
	mov rsi, 1
	mov rdi, 1
	mov r8, 4
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
	mov rbx, _s188
	mov rsi, 2
	mov rdi, 1
	mov r8, 4
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
.858:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .859
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 9
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .860
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s193
	mov rsi, 4
	mov rdi, 1
	mov r8, 4
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
.860:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .858
.859:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	sub rdi, r8
	mov rbx, 1
	mov r8, 4
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
	jz .862
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
.862:
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
	jnz .2780.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2780.3:
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
	jnz .2781.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2781.3:
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
	jz .864
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
	jnz .2782.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2782.4:
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
	jmp .866
.864:
	mov rbx, qword [_rs_p]
	add rbx, 72
	mov rsi, 0
	mov byte [rbx], sil
.866:
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
	jnz .2783.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2783.5:
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
	jnz .2784.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2784.6:
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
	mov rbx, _s192
	mov rsi, 3
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s194
	mov rsi, 7
	mov rdi, 2
	mov r8, 4
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
.867:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .868
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
	jmp .867
.868:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.869:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .870
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
	jmp .869
.870:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 72
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .871
	mov rbx, 62
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
.871:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.end_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	jnz .2785.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2785.1:
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
.873:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .874
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2786.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2786.2:
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
	mov r8, 4
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
	jz .875
	mov rbx, _s289
	mov rsi, 4
	mov rdi, 1
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .876
.875:
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
	jz .878
	mov rbx, _s289
	mov rsi, 4
	mov rdi, 1
	mov r8, 4
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
	mov r8, 4
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
	jmp .876
.878:
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
	jz .880
	mov rbx, _s289
	mov rsi, 4
	mov rdi, 1
	mov r8, 4
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
	jmp .876
.880:
	add rsp, 8
.881:
.876:
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	pop rbx
	inc rbx
	push rbx
	jmp .873
.874:
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
	jz .882
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
	jmp .884
.882:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rdi, qword [rbx + 24]
	push rsi
	push rdi
.884:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call normalise_path
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rsi, 4
	mov rdi, 33
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
	jz .885
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
	jmp .887
.885:
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
	jz .888
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
.888:
.887:
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call make_path_relative_to_wd
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s197
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
	jz .890
	add rsp, 8
	add rsp, 8
	mov rbx, _s200
	mov rsi, 3
	push rbx
	push rsi
	jmp .892
.890:
	mov rbx, _s200
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call join_path_cstr
	mov [_rs_p], rsp
	mov rsp, rbp
.892:
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
	mov rdi, 33
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
	jz .893
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.893:
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
	jnz .2787.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2787.4:
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
	mov r8, 4
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s187
	mov rsi, 1
	mov rdi, 1
	mov r8, 4
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
	mov rbx, _s187
	mov rsi, 1
	mov rdi, 1
	mov r8, 4
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
	mov rbx, _s188
	mov rsi, 2
	mov rdi, 1
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
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
	jnz .2788.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2788.3:
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	jnz .2789.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2789.4:
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	jnz .2790.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2790.5:
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
	jnz .2791.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2791.5:
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
	mov rbx, _s187
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
	mov rbx, _s187
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
	mov rbx, _s188
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
	mov rbx, _s576
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
	jnz .2792.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2792.6:
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
	jnz .2793.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.2793.6:
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
	mov rbx, _s187
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
	mov rbx, _s187
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
	mov rbx, _s188
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s281
	mov rsi, 4
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	mov r8, 4
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
	jz .898
	mov rbx, 1
	mov rsi, qword _gtimespec_start
	mov rdi, 232
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
	jz .900
	mov rbx, _s177
	mov rsi, 33
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.900:
.898:
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
	jz .902
	mov rbp, rsp
	mov rsp, [_rs_p]
	call log.start_bold_time
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s282
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov rdi, 232
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
	jz .904
	mov rbx, _s177
	mov rsi, 33
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.904:
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
	mov rbx, _s197
	mov rsi, 1
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s283
	mov rsi, 4
	mov rdi, 2
	mov r8, 4
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
	jmp .906
.902:
	add rsp, 8
	add rsp, 8
.906:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.scan_file:
	sub rsp, 165
	mov [_rs_p], rsp
	mov rsp, rbp
.963:
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
	jz .907
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
	ret
.907:
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
	jnz .2794
	mov eax, 4
	mov edi, 2
	mov rsi, _s183
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.2794:
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
.909:
	mov rbx, 1
	test rbx, rbx
	jz .910
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
	jz .911
	jmp .910
.911:
.913:
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
	jz .914
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .915
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .917
.915:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.917:
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
	jz .918
	jmp .914
.918:
	jmp .913
.914:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	test rbx, rbx
	jz .920
	jmp .910
.920:
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
	jz .922
	mov rbx, 60
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .924
	mov rbx, 1
	push rbx
	jmp .926
.924:
	mov rbx, 0
	push rbx
.926:
	jmp .927
.922:
	add rsp, 8
	mov rbx, 0
	push rbx
.927:
	pop rbx
	pop rsi
	or rsi, rbx
	pop rbx
	or rbx, rsi
	test rbx, rbx
	jz .928
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
	jz .930
	add rsp, 8
	mov rbx, 62
	mov rsi, qword [_rs_p]
	mov qword [rsi + 92], rbx
	jmp .932
.930:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 92], rsi
.932:
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
.933:
	mov rbx, 1
	test rbx, rbx
	jz .934
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
	jz .935
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s186
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
.935:
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
	jz .937
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .939
.937:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.939:
	mov rbx, qword [_rs_p]
	add rbx, 108
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .940
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
	jz .942
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s195
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
.942:
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
	jmp .933
.940:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 92]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .944
	jmp .934
.944:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 109]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .946
	mov rbx, qword [_rs_p]
	add rbx, 108
	mov rsi, 1
	mov byte [rbx], sil
	jmp .933
.946:
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
	jz .948
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.948:
	jmp .933
.934:
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
	jz .950
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s196
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
.950:
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
	jz .952
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
	jz .954
	mov rbp, rsp
	mov rsp, [_rs_p]
	call find_file_to_include_stasdir
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .956
.954:
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
.956:
	mov rbx, qword [rsp + 8]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .957
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
	mov rbx, _s202
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
.957:
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
	jz .959
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
	mov rbx, _s204
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
.959:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .961
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s205
	mov rsi, 16
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.961:
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
	jmp .964
.952:
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
.964:
	jmp .909
	jmp .929
.928:
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
	jz .966
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 141], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.967:
	mov rbx, 1
	test rbx, rbx
	jz .968
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
	jz .969
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s207
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
.969:
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
	jz .971
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	jmp .972
.971:
	pop rbx
	mov rsi, rbx
	mov rdi, 96
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .974
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
	jz .975
	jmp .968
.975:
	jmp .972
.974:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.977:
.972:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 141], rsi
	jmp .967
.968:
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
	jz .978
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s208
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
	jmp .979
.978:
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
	jz .981
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s196
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
	jmp .979
.981:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 141]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .983
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
	jz .984
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s209
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
.984:
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
	jz .986
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 84]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s195
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
.986:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 133], rsi
.983:
.979:
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
	jmp .909
	jmp .929
.966:
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
	jz .989
.990:
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
	jz .991
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
	jz .992
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 165
	ret
.992:
	jmp .990
.991:
	jmp .909
.989:
.929:
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
	jz .994
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
	jz .996
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
.996:
.994:
.998:
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
	jz .999
	mov rbx, qword [_rs_p]
	add rbx, 66
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
	jz .1002
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1004
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
.1004:
.1002:
.1000:
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
	jz .1006
	jmp .999
.1006:
	jmp .998
.999:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1008
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .909
.1008:
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
	jz .1010
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 76]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s210
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
.1010:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1012
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
	jz .1014
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
	mov r9, _s213
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
.1014:
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
	jnz .2795.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s214
	mov rdx, 69
	syscall
	mov rdi, 1
	jmp _exit
.2795.1:
	mov rbx, qword [_rs_p]
	add rbx, 67
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1016
	pop rbx
	not rbx
	inc rbx
	push rbx
.1016:
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
	jmp .1018
.1012:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 149]
	mov rdi, qword [rbx + 157]
	mov rbx, _s215
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
	jz .1019
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .909
.1019:
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
	jz .1021
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
	jmp .1023
.1021:
	mov rbx, 0
	push rbx
.1023:
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
.1018:
	jmp .909
.910:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1024
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _s279
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
.1024:
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
	jz .1026
	mov rbx, _s463
	mov rsi, 8
	push rbx
	push rsi
	jmp .1027
.1026:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1029
	mov rbx, _s464
	mov rsi, 8
	push rbx
	push rsi
	jmp .1027
.1029:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1031
	mov rbx, _s465
	mov rsi, 15
	push rbx
	push rsi
	jmp .1027
.1031:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1033
	mov rbx, _s466
	mov rsi, 19
	push rbx
	push rsi
	jmp .1027
.1033:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1035
	mov rbx, _s467
	mov rsi, 20
	push rbx
	push rsi
	jmp .1027
.1035:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1037
	mov rbx, _s468
	mov rsi, 20
	push rbx
	push rsi
	jmp .1027
.1037:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1039
	mov rbx, _s469
	mov rsi, 20
	push rbx
	push rsi
	jmp .1027
.1039:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1041
	mov rbx, _s470
	mov rsi, 21
	push rbx
	push rsi
	jmp .1027
.1041:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1043
	mov rbx, _s471
	mov rsi, 9
	push rbx
	push rsi
	jmp .1027
.1043:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1045
	mov rbx, _s472
	mov rsi, 9
	push rbx
	push rsi
	jmp .1027
.1045:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1047
	mov rbx, _s473
	mov rsi, 11
	push rbx
	push rsi
	jmp .1027
.1047:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1049
	mov rbx, _s474
	mov rsi, 6
	push rbx
	push rsi
	jmp .1027
.1049:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1051
	mov rbx, _s475
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1051:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1053
	mov rbx, _s476
	mov rsi, 10
	push rbx
	push rsi
	jmp .1027
.1053:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1055
	mov rbx, _s477
	mov rsi, 8
	push rbx
	push rsi
	jmp .1027
.1055:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1057
	mov rbx, _s478
	mov rsi, 7
	push rbx
	push rsi
	jmp .1027
.1057:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1059
	mov rbx, _s221
	mov rsi, 6
	push rbx
	push rsi
	jmp .1027
.1059:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1061
	mov rbx, _s479
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1061:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1063
	mov rbx, _s480
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1063:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1065
	mov rbx, _s481
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1065:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1067
	mov rbx, _s482
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1067:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1069
	mov rbx, _s483
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1069:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1071
	mov rbx, _s484
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1071:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1073
	mov rbx, _s485
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1073:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1075
	mov rbx, _s486
	mov rsi, 6
	push rbx
	push rsi
	jmp .1027
.1075:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1077
	mov rbx, _s487
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1077:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1079
	mov rbx, _s488
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1079:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1081
	mov rbx, _s489
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1081:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1083
	mov rbx, _s490
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1083:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1085
	mov rbx, _s491
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1085:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1087
	mov rbx, _s492
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1087:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1089
	mov rbx, _s493
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1089:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1091
	mov rbx, _s244
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1091:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1093
	mov rbx, _s245
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1093:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1095
	mov rbx, _s246
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1095:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1097
	mov rbx, _s247
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1097:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1099
	mov rbx, _s248
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1099:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1101
	mov rbx, _s249
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1101:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1103
	mov rbx, _s250
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1103:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1105
	mov rbx, _s494
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1105:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1107
	mov rbx, _s495
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1107:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1109
	mov rbx, _s496
	mov rsi, 2
	push rbx
	push rsi
	jmp .1027
.1109:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1111
	mov rbx, _s497
	mov rsi, 2
	push rbx
	push rsi
	jmp .1027
.1111:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1113
	mov rbx, _s498
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1113:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1115
	mov rbx, _s499
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1115:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1117
	mov rbx, _s500
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1117:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1119
	mov rbx, _s501
	mov rsi, 4
	push rbx
	push rsi
	jmp .1027
.1119:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1121
	mov rbx, _s502
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1121:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1123
	mov rbx, _s503
	mov rsi, 5
	push rbx
	push rsi
	jmp .1027
.1123:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1125
	mov rbx, _s261
	mov rsi, 2
	push rbx
	push rsi
	jmp .1027
.1125:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1127
	mov rbx, _s262
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1127:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1129
	mov rbx, _s263
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1129:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1131
	mov rbx, _s264
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1131:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1133
	mov rbx, _s265
	mov rsi, 2
	push rbx
	push rsi
	jmp .1027
.1133:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1135
	mov rbx, _s266
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1135:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1137
	mov rbx, _s267
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1137:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1139
	mov rbx, _s268
	mov rsi, 3
	push rbx
	push rsi
	jmp .1027
.1139:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1141
	mov rbx, _s504
	mov rsi, 9
	push rbx
	push rsi
	jmp .1027
.1141:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1143
	mov rbx, _s505
	mov rsi, 9
	push rbx
	push rsi
	jmp .1027
.1143:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1145
	mov rbx, _s506
	mov rsi, 9
	push rbx
	push rsi
	jmp .1027
.1145:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2796
	mov eax, 4
	mov edi, 2
	mov rsi, _s507
	mov rdx, 80
	syscall
	mov rdi, 1
	jmp _exit
.2796:
	push rbx
	push rsi
.1146:
.1027:
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
	jnz .2797
	mov eax, 4
	mov edi, 2
	mov rsi, _s322
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2797:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
ir_stream.dump:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s461
	mov rsi, 17
	mov rdi, 1
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
.1147:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1148
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gir_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2798.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2798.1:
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
	mov rbx, _s462
	mov rsi, 1
	mov rdi, 1
	mov r8, 4
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
	mov rbx, _s462
	mov rsi, 1
	mov rdi, 1
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	pop rbx
	inc rbx
	push rbx
	jmp .1147
.1148:
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
	jnz .2799
	mov eax, 4
	mov edi, 2
	mov rsi, _s351
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2799:
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
	jnz .2800
	mov eax, 4
	mov edi, 2
	mov rsi, _s291
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2800:
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
	jnz .2801
	mov eax, 4
	mov edi, 2
	mov rsi, _s365
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2801:
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
	jnz .2802
	mov eax, 4
	mov edi, 2
	mov rsi, _s379
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2802:
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
	jnz .2803
	mov eax, 4
	mov edi, 2
	mov rsi, _s363
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2803:
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
	mov rbx, _s381
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
	jz .1149
	mov rbx, 1
	push rbx
	jmp .1150
.1149:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s382
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
	jz .1152
	mov rbx, 2
	push rbx
	jmp .1150
.1152:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s383
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
	jz .1154
	mov rbx, 4
	push rbx
	jmp .1150
.1154:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s384
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
	jz .1156
	mov rbx, 8
	push rbx
	jmp .1150
.1156:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1157:
.1150:
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
	jz .1158
	mov rbx, 1
	push rbx
	jmp .1160
.1158:
	mov rbx, 0
	push rbx
.1160:
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
	jz .1161
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1161:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2804.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2804.7:
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
	jz .1165
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1165:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2805.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2805.8:
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
	jz .1167
	mov rbx, 0
	push rbx
	jmp .1169
.1167:
	mov rbx, 1
	push rbx
.1169:
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
	jz .1170
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1170:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2806.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2806.9:
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
	jnz .2807.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2807.10:
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
	jz .1172
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2808.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2808.11:
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
	jmp .1174
.1172:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	push rbx
	push rsi
	push rdi
.1174:
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
	jz .1175
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.1177:
	mov rbx, 1
	test rbx, rbx
	jz .1178
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
	jnz .2809.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s318
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2809.3:
	mov rbx, _s319
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
	jz .1179
	jmp .1178
.1179:
	pop rbx
	dec rbx
	push rbx
	jmp .1177
.1178:
	add rsp, 8
.1175:
	mov rbx, 1
	mov rsi, 1
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
.1181:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 16]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1182
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
	jnz .2810.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2810.1:
	pop rbx
	inc rbx
	push rbx
	jmp .1181
.1182:
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
	jz .1183
	mov rbx, [_gpos]
	mov rsi, _s320
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
.1183:
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
	jz .1185
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _s320
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
.1185:
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
.1187:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1188
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
	jz .1189
	add rsp, 8
	jmp .1188
.1189:
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
	jmp .1187
.1188:
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
	jnz .2811
	mov eax, 4
	mov edi, 2
	mov rsi, _s376
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2811:
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
	jnz .2812.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2812.2:
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
	jnz .2813.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2813.3:
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
	jz .1191
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
	jnz .2814.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2814.7:
	jmp .1192
.1191:
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
	jz .1194
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
	jnz .2815.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s342
	mov rdx, 100
	syscall
	mov rdi, 1
	jmp _exit
.2815.1:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .1192
.1194:
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
	jz .1196
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
	jnz .2816.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s342
	mov rdx, 100
	syscall
	mov rdi, 1
	jmp _exit
.2816.2:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov qword [rbx], rsi
	jmp .1192
.1196:
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
	jz .1198
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
	jnz .2817.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s342
	mov rdx, 100
	syscall
	mov rdi, 1
	jmp _exit
.2817.3:
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov qword [rbx], rsi
	jmp .1192
.1198:
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
	jz .1200
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
	jnz .2818.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s343
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2818.1:
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
	jnz .2819.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2819.8:
	jmp .1192
.1200:
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
	jz .1202
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rbx, [rbx]
	dec rbx
	mov qword [rsi], rbx
	jmp .1192
.1202:
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
	jz .1204
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
	jnz .2820.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2820.1:
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
	jnz .2821.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2821.2:
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
	jnz .2822.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2822.9:
	jmp .1192
.1204:
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
	jz .1206
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
	jnz .2823.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2823.3:
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
	jnz .2824.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2824.4:
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
	jnz .2825.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2825.10:
	jmp .1192
.1206:
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
	jz .1208
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
	jnz .2826.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2826.5:
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
	jnz .2827.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2827.6:
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
	jnz .2828.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2828.11:
	jmp .1192
.1208:
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
	jz .1210
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
	jnz .2829.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2829.7:
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
	jnz .2830.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2830.8:
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
	jnz .2831.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2831.12:
	jmp .1192
.1210:
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
	jz .1212
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
	jnz .2832.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2832.9:
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
	jnz .2833.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2833.10:
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
	jnz .2834.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2834.13:
	jmp .1192
.1212:
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
	jz .1214
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
	jnz .2835.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2835.11:
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
	jnz .2836.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2836.12:
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
	jnz .2837.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2837.14:
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
	jnz .2838.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2838.15:
	jmp .1192
.1214:
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
	jz .1216
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
	jnz .2839.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2839.13:
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
	jnz .2840.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2840.14:
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
	jnz .2841.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2841.16:
	jmp .1192
.1216:
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
	jz .1218
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
	jnz .2842.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2842.15:
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
	jnz .2843.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2843.16:
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
	jnz .2844.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2844.17:
	jmp .1192
.1218:
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
	jz .1220
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
	jnz .2845.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2845.17:
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
	jnz .2846.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2846.18:
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
	jnz .2847.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2847.18:
	jmp .1192
.1220:
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
	jz .1222
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
	jnz .2848.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2848.19:
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
	jnz .2849.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2849.20:
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
	jnz .2850.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2850.19:
	jmp .1192
.1222:
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
	jz .1224
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
	jnz .2851.21
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2851.21:
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
	jnz .2852.22
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2852.22:
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
	jnz .2853.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2853.20:
	jmp .1192
.1224:
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
	jz .1226
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
	jnz .2854.23
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2854.23:
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
	jnz .2855.24
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2855.24:
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
	jnz .2856.21
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2856.21:
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
	jnz .2857.22
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2857.22:
	jmp .1192
.1226:
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
	jz .1228
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
	jnz .2858.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2858.7:
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
	jnz .2859.23
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2859.23:
	jmp .1192
.1228:
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
	jz .1230
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
	jnz .2860.25
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2860.25:
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
	jnz .2861.26
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2861.26:
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
	jnz .2862.24
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2862.24:
	jmp .1192
.1230:
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
	jz .1232
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
	jnz .2863.27
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2863.27:
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
	jnz .2864.28
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2864.28:
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
	jnz .2865.25
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2865.25:
	jmp .1192
.1232:
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
	jz .1234
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
	jnz .2866.29
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2866.29:
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
	jnz .2867.30
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2867.30:
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
	jnz .2868.26
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2868.26:
	jmp .1192
.1234:
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
	jz .1236
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
	jnz .2869.31
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2869.31:
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
	jnz .2870.32
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2870.32:
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
	jnz .2871.27
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2871.27:
	jmp .1192
.1236:
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
	jz .1238
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
	jnz .2872.33
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2872.33:
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
	jnz .2873.34
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2873.34:
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
	jnz .2874.28
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2874.28:
	jmp .1192
.1238:
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
	jz .1240
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
	jnz .2875.35
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2875.35:
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
	jnz .2876.36
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2876.36:
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
	jnz .2877.29
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2877.29:
	jmp .1192
.1240:
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
	jz .1242
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
	jnz .2878.37
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2878.37:
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
	jnz .2879.38
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2879.38:
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
	jnz .2880.30
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2880.30:
	jmp .1192
.1242:
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
	jz .1244
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
	jnz .2881.39
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2881.39:
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
	jnz .2882.40
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2882.40:
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
	jnz .2883.31
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2883.31:
	jmp .1192
.1244:
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
	jz .1246
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
	jnz .2884.41
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2884.41:
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
	jnz .2885.42
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2885.42:
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
	jnz .2886.32
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2886.32:
	jmp .1192
.1246:
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
	jz .1248
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
	jnz .2887.43
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2887.43:
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
	jnz .2888.44
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2888.44:
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
	jnz .2889.33
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2889.33:
	jmp .1192
.1248:
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
	jz .1250
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
	jnz .2890.45
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2890.45:
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
	jnz .2891.46
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2891.46:
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
	jnz .2892.47
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2892.47:
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
	jnz .2893.34
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2893.34:
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
	jnz .2894.35
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2894.35:
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
	jnz .2895.36
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2895.36:
	jmp .1192
.1250:
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
	jz .1252
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
	jnz .2896.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2896.8:
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
	jnz .2897.37
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2897.37:
	jmp .1192
.1252:
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
	jz .1254
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
	jnz .2898.48
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2898.48:
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
	jnz .2899.49
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2899.49:
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
	jnz .2900.50
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2900.50:
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
	jnz .2901.51
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2901.51:
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
	jnz .2902.38
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2902.38:
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
	jnz .2903.39
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2903.39:
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
	jnz .2904.40
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2904.40:
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
	jnz .2905.41
	mov eax, 4
	mov edi, 2
	mov rsi, _s190
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2905.41:
	jmp .1192
.1254:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.1255:
.1192:
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
.1269:
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
	jz .1256
	mov rbx, _s337
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1256:
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
.1258:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1259
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2906.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2906.4:
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
	jnz .2907.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2907.5:
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
	jz .1260
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
	jnz .2908.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2908.2:
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
	jnz .2909.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2909.3:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 1080]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .1262
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1080], rbx
.1262:
	jmp .1264
.1260:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1080]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1265
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1267
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2910.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2910.1:
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
	jmp .1268
.1267:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 11
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1271
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
	jnz .2911.52
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2911.52:
	mov rbx, 0
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1272
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
	jz .1274
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1276
.1274:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2912
	mov eax, 4
	mov edi, 2
	mov rsi, _s340
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2912:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1276:
.1272:
	jmp .1268
.1271:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1088]
	mov rbx, 12
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1278
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
	jz .1279
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1072], rsi
	jmp .1281
.1279:
	add rsp, 8
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2913
	mov eax, 4
	mov edi, 2
	mov rsi, _s341
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2913:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1096]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1080], rsi
.1281:
	jmp .1268
.1278:
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
	jnz .2914
	mov eax, 4
	mov edi, 2
	mov rsi, _s344
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.2914:
.1282:
.1268:
.1265:
.1264:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1072]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 1072], rsi
	jmp .1258
.1259:
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 1080]
	xor rsi, rsi
	cmp rbx, rdi
	sete sil
	test rsi, rsi
	jnz .2915
	mov eax, 4
	mov edi, 2
	mov rsi, _s345
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2915:
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
	jnz .2916
	mov eax, 4
	mov edi, 2
	mov rsi, _s524
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.2916:
	mov rsi, [_gfwrite_buffer.len]
	add rbx, rsi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1283
	mov rbx, [_gfwrite_buffer.fd_loc]
	mov rsi, qword _gfwrite_buffer
	mov rdi, [_gfwrite_buffer.len]
	mov r8, 4
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
	jnz .2917.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s525
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2917.1:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
.1283:
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
	jz .1285
	mov rbx, _s566
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1285:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1288
	mov rbx, _s567
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1288:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1290
	mov rbx, _s568
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1290:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1292
	mov rbx, _s569
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1292:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1294
	mov rbx, _s570
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1294:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1296
	mov rbx, _s571
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1296:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1298
	mov rbx, _s572
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1286
.1298:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1299:
.1286:
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
.1300:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .1301
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
	jmp .1300
.1301:
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
	jz .1302
	mov rbx, _s429
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1302:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1305
	mov rbx, _s430
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1305:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1307
	mov rbx, _s431
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1307:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1309
	mov rbx, _s432
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1309:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1311
	mov rbx, _s265
	mov rsi, 2
	push rbx
	push rsi
	jmp .1303
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1313
	mov rbx, _s433
	mov rsi, 2
	push rbx
	push rsi
	jmp .1303
.1313:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1315
	mov rbx, _s434
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1315:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1317
	mov rbx, _s435
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1317:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1319
	mov rbx, _s436
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1319:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1321
	mov rbx, _s437
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1321:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1323
	mov rbx, _s438
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1323:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1325
	mov rbx, _s439
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1325:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1327
	mov rbx, _s440
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1329
	mov rbx, _s441
	mov rsi, 3
	push rbx
	push rsi
	jmp .1303
.1329:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2918
	mov eax, 4
	mov edi, 2
	mov rsi, _s556
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2918:
	push rbx
	push rsi
.1330:
.1303:
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
	jz .1331
	mov rbx, _s673
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1331:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1334
	mov rbx, _s674
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1334:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1336
	mov rbx, _s675
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1336:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1338
	mov rbx, _s676
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1338:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1340
	mov rbx, _s677
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1340:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1342
	mov rbx, _s678
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1342:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1344
	mov rbx, _s679
	mov rsi, 4
	push rbx
	push rsi
	jmp .1332
.1344:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1346
	mov rbx, _s680
	mov rsi, 4
	push rbx
	push rsi
	jmp .1332
.1346:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1348
	mov rbx, _s681
	mov rsi, 4
	push rbx
	push rsi
	jmp .1332
.1348:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1350
	mov rbx, _s682
	mov rsi, 4
	push rbx
	push rsi
	jmp .1332
.1350:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1352
	mov rbx, _s683
	mov rsi, 4
	push rbx
	push rsi
	jmp .1332
.1352:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1354
	mov rbx, _s684
	mov rsi, 4
	push rbx
	push rsi
	jmp .1332
.1354:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1356
	mov rbx, _s685
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1356:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1358
	mov rbx, _s686
	mov rsi, 3
	push rbx
	push rsi
	jmp .1332
.1358:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2919
	mov eax, 4
	mov edi, 2
	mov rsi, _s687
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.2919:
	push rbx
	push rsi
.1359:
.1332:
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
	jz .1360
	mov rbx, _s657
	mov rsi, 2
	push rbx
	push rsi
	jmp .1361
.1360:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1363
	mov rbx, _s658
	mov rsi, 2
	push rbx
	push rsi
	jmp .1361
.1363:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1365
	mov rbx, _s659
	mov rsi, 2
	push rbx
	push rsi
	jmp .1361
.1365:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1367
	mov rbx, _s660
	mov rsi, 2
	push rbx
	push rsi
	jmp .1361
.1367:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1369
	mov rbx, _s661
	mov rsi, 3
	push rbx
	push rsi
	jmp .1361
.1369:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1371
	mov rbx, _s662
	mov rsi, 3
	push rbx
	push rsi
	jmp .1361
.1371:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1373
	mov rbx, _s663
	mov rsi, 4
	push rbx
	push rsi
	jmp .1361
.1373:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1375
	mov rbx, _s664
	mov rsi, 4
	push rbx
	push rsi
	jmp .1361
.1375:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1377
	mov rbx, _s665
	mov rsi, 4
	push rbx
	push rsi
	jmp .1361
.1377:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1379
	mov rbx, _s666
	mov rsi, 4
	push rbx
	push rsi
	jmp .1361
.1379:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1381
	mov rbx, _s667
	mov rsi, 4
	push rbx
	push rsi
	jmp .1361
.1381:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1383
	mov rbx, _s668
	mov rsi, 4
	push rbx
	push rsi
	jmp .1361
.1383:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1385
	mov rbx, _s669
	mov rsi, 2
	push rbx
	push rsi
	jmp .1361
.1385:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1387
	mov rbx, _s670
	mov rsi, 2
	push rbx
	push rsi
	jmp .1361
.1387:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2920
	mov eax, 4
	mov edi, 2
	mov rsi, _s671
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2920:
	push rbx
	push rsi
.1388:
.1361:
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
	jz .1389
	mov rbx, _s623
	mov rsi, 2
	push rbx
	push rsi
	jmp .1390
.1389:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1392
	mov rbx, _s624
	mov rsi, 2
	push rbx
	push rsi
	jmp .1390
.1392:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1394
	mov rbx, _s625
	mov rsi, 3
	push rbx
	push rsi
	jmp .1390
.1394:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1396
	mov rbx, _s626
	mov rsi, 3
	push rbx
	push rsi
	jmp .1390
.1396:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1398
	mov rbx, _s627
	mov rsi, 3
	push rbx
	push rsi
	jmp .1390
.1398:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1400
	mov rbx, _s628
	mov rsi, 3
	push rbx
	push rsi
	jmp .1390
.1400:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1402
	mov rbx, _s629
	mov rsi, 4
	push rbx
	push rsi
	jmp .1390
.1402:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1404
	mov rbx, _s630
	mov rsi, 4
	push rbx
	push rsi
	jmp .1390
.1404:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1406
	mov rbx, _s631
	mov rsi, 4
	push rbx
	push rsi
	jmp .1390
.1406:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1408
	mov rbx, _s632
	mov rsi, 4
	push rbx
	push rsi
	jmp .1390
.1408:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1410
	mov rbx, _s633
	mov rsi, 4
	push rbx
	push rsi
	jmp .1390
.1410:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1412
	mov rbx, _s634
	mov rsi, 4
	push rbx
	push rsi
	jmp .1390
.1412:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1414
	mov rbx, _s635
	mov rsi, 2
	push rbx
	push rsi
	jmp .1390
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1416
	mov rbx, _s636
	mov rsi, 2
	push rbx
	push rsi
	jmp .1390
.1416:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .2921
	mov eax, 4
	mov edi, 2
	mov rsi, _s637
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.2921:
	push rbx
	push rsi
.1417:
.1390:
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
	mov rbx, _s429
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
	jz .1418
	mov rbx, 0
	push rbx
	jmp .1419
.1418:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s430
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
	jz .1421
	mov rbx, 11
	push rbx
	jmp .1419
.1421:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s431
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
	jz .1423
	mov rbx, 1
	push rbx
	jmp .1419
.1423:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s432
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
	jz .1425
	mov rbx, 2
	push rbx
	jmp .1419
.1425:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s265
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
	jz .1427
	mov rbx, 3
	push rbx
	jmp .1419
.1427:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s433
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
	jz .1429
	mov rbx, 4
	push rbx
	jmp .1419
.1429:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s434
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
	jz .1431
	mov rbx, 5
	push rbx
	jmp .1419
.1431:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s435
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
	jz .1433
	mov rbx, 6
	push rbx
	jmp .1419
.1433:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s436
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
	jz .1435
	mov rbx, 7
	push rbx
	jmp .1419
.1435:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s437
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
	jz .1437
	mov rbx, 8
	push rbx
	jmp .1419
.1437:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s438
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
	jz .1439
	mov rbx, 9
	push rbx
	jmp .1419
.1439:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s439
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
	jz .1441
	mov rbx, 10
	push rbx
	jmp .1419
.1441:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s440
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
	jz .1443
	mov rbx, 12
	push rbx
	jmp .1419
.1443:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rdi, qword [rbx + 8]
	mov rbx, _s441
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
	jz .1445
	mov rbx, 13
	push rbx
	jmp .1419
.1445:
	mov rbx, 18446744073709551615
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1446:
.1419:
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
	jnz .2922
	mov eax, 4
	mov edi, 2
	mov rsi, _s557
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2922:
	mov rsi, [_grallocator_stack.len]
	mov rdi, 2048
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2923
	mov eax, 4
	mov edi, 2
	mov rsi, _s558
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2923:
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
	jnz .2924
	mov eax, 4
	mov edi, 2
	mov rsi, _s585
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2924:
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
.1454:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1455
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
	jz .1456
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1456:
	pop rbx
	inc rbx
	push rbx
	jmp .1454
.1455:
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
.1458:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1459
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
	jz .1460
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1460:
	pop rbx
	inc rbx
	push rbx
	jmp .1458
.1459:
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
.1462:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1463
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
	jnz .2925.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2925.1:
	mov r8, qword _grallocator_mask
	add rsi, r8
	mov r8, 0
	mov byte [rsi], r8b
	mov rsi, _s555
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
	jmp .1462
.1463:
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
.1464:
	pop rbx
	mov rsi, rbx
	mov rdi, [_grallocator_stack.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1465
	pop rbx
	mov rsi, rbx
	mov rdi, qword _grallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _s555
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
	jmp .1464
.1465:
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
.1468:
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
	jz .1466
	add rsp, 8
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2926
	mov eax, 4
	mov edi, 2
	mov rsi, _s553
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2926:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_stack_deep_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1468
.1466:
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
	jnz .2927.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s613
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2927.1:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1469
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
	jnz .2928.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2928.1:
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
	jnz .2929.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2929.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s560
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
	mov rbx, _s561
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
	jz .1471
	mov rbx, qword _grallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1471:
.1469:
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
	jz .1473
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, [_grallocator_stack.len]
	dec rbx
	mov [_grallocator_stack.len], rbx
	jmp .1475
.1473:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
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
.1475:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2930.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2930.2:
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
	jnz .2931.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s613
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2931.2:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	jz .1476
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1476:
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1478
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
	jz .1480
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1480:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2932.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2932.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _s560
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
	mov rbx, _s561
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
	jmp .1482
.1478:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2933.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s613
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2933.3:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .2934
	mov eax, 4
	mov edi, 2
	mov rsi, _s614
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2934:
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
.1482:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2935.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2935.3:
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
	jz .1483
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1485
.1483:
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
	jnz .2936.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2936.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s586
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
.1485:
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
	jnz .2937.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2937.5:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s560
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
	mov rbx, _s561
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
	jnz .2938.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2938.6:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s560
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
	mov rbx, _s561
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
	jnz .2939.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.2939.7:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _s560
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
	mov rbx, _s561
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
	jnz .2940
	mov eax, 4
	mov edi, 2
	mov rsi, _s450
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.2940:
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
.1486:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1487
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
	jz .1488
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1488:
	pop rbx
	inc rbx
	push rbx
	jmp .1486
.1487:
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
	jz .1490
	mov rbx, [_gpos]
	mov rsi, _s428
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1490:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1492
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2941.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2941.12:
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
	jz .1494
.1496:
	mov rbx, 1
	test rbx, rbx
	jz .1497
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2942.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2942.13:
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
	jz .1498
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2943.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2943.14:
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
	jz .1500
	mov rbx, [_gpos]
	mov rsi, _s442
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1500:
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
	jz .1502
	mov rbx, [_gpos]
	mov rsi, _s443
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1502:
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
	jmp .1504
.1498:
	mov rbx, [_gpos]
	mov rsi, _s444
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1504:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1505
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
	jz .1507
	jmp .1497
.1507:
	jmp .1509
.1505:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s445
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1509:
	jmp .1496
.1497:
.1494:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2944.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2944.15:
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
	jz .1510
.1512:
	mov rbx, 1
	test rbx, rbx
	jz .1513
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1514
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
	jz .1516
	jmp .1513
.1516:
	jmp .1518
.1514:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s445
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1518:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2945.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2945.16:
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
	jz .1519
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2946.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2946.17:
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
	jz .1521
	mov rbx, [_gpos]
	mov rsi, _s442
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1521:
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
	jz .1523
	mov rbx, [_gpos]
	mov rsi, _s446
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1523:
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
	jmp .1525
.1519:
	mov rbx, [_gpos]
	mov rsi, _s444
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1525:
	jmp .1512
.1513:
.1510:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2947.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2947.18:
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
	jz .1526
	mov rbx, [_gpos]
	mov rsi, _s447
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1526:
.1492:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gpos]
	inc rsi
	mov rdi, 40
	add rbx, rdi
	mov dword [rbx], esi
.1528:
	mov rbx, 1
	test rbx, rbx
	jz .1529
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1530
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1532
	jmp .1529
.1532:
	jmp .1534
.1530:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s448
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1534:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2948.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2948.19:
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
	jz .1535
	mov rbx, [_gpos]
	mov rsi, _s449
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1535:
	jmp .1528
.1529:
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
	jz .1537
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1537:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1539:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1540
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2949.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2949.2:
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
	jz .1541
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1541:
	pop rbx
	inc rbx
	push rbx
	jmp .1539
.1540:
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
	jz .1543
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1543:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1545:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1546
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gcfunctions.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2950.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2950.1:
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
	jz .1547
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1547:
	pop rbx
	inc rbx
	push rbx
	jmp .1545
.1546:
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
	jz .1549
	add rsp, 8
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1549:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, [_gvar_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1551:
	mov rbx, 1
	test rbx, rbx
	jz .1552
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2951.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2951.1:
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
	jz .1553
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.1553:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .1555
	jmp .1552
.1555:
	pop rbx
	dec rbx
	push rbx
	jmp .1551
.1552:
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
.1564:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .1565
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2952.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2952.1:
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
	jz .1566
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1566:
	pop rbx
	inc rbx
	push rbx
	jmp .1564
.1565:
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
	jnz .2953
	mov eax, 4
	mov edi, 2
	mov rsi, _s422
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2953:
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
	jnz .2954
	mov eax, 4
	mov edi, 2
	mov rsi, _s399
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2954:
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
	jz .1568
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .2955.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2955.1:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2956.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2956.2:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1570
.1568:
	mov rbx, 0
	push rbx
.1570:
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
	jnz .2957.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2957.20:
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
	jz .1571
	mov rbx, [_gpos]
	mov rsi, _s304
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
	jnz .2958.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2958.2:
	mov rsi, 24
	imul rbx, rsi
	mov rsi, qword _gvar_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s305
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1573
.1571:
	add rsp, 8
.1573:
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
	jz .1574
	mov rbx, [_gpos]
	mov rsi, _s307
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
	jnz .2959.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2959.3:
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
	jnz .2960.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2960.6:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s309
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1576
.1574:
	add rsp, 8
.1576:
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
	jz .1577
	mov rbx, [_gpos]
	mov rsi, _s311
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
	jnz .2961.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2961.2:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gcfunctions
	add rbx, rsi
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	inc rbx
	mov rsi, _s309
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1579
.1577:
	add rsp, 8
.1579:
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
	jz .1580
	mov rbx, [_gpos]
	mov rsi, _s352
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1580:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2962.21
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2962.21:
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
	jz .1582
	mov rbx, [_gpos]
	mov rsi, _s353
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1582:
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
	jz .1584
	mov rbx, [_gpos]
	mov rsi, _s354
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1584:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1586
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .1587
.1586:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1589
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
	jz .1590
	mov rbx, [_gpos]
	mov rsi, _s355
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1590:
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
	jnz .2963.22
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2963.22:
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
	jnz .2964.23
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2964.23:
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
	jz .1592
	mov rbx, [_gpos]
	mov rsi, _s356
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1592:
	jmp .1587
.1589:
	mov rbx, [_gpos]
	mov rsi, _s357
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1594:
.1587:
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
	jz .1595
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s358
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1595:
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
	jnz .2965.24
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2965.24:
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
	mov r11, _s359
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
	jz .1597
	mov rbx, [_gfunction_attributes]
	mov rsi, 2
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1599
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s360
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1599:
	mov rbx, [_gfunction_attributes]
	mov rsi, 16
	mov rdi, rsi
	and rbx, rsi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .1601
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, _s361
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1601:
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
	jz .1603
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, _s362
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1603:
	mov rbx, [_gfunctions.len]
	mov [_gmain_fn_idx], rbx
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	jmp .1605
.1597:
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
	jz .1606
	mov rbx, 1
	push rbx
	jmp .1608
.1606:
	mov rbx, 0
	push rbx
.1608:
.1605:
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
	jnz .2966
	mov eax, 4
	mov edi, 2
	mov rsi, _s364
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2966:
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
	jz .1609
	mov rbx, [_gpos]
	mov rsi, _s392
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1609:
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
	jz .1611
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2967.25
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2967.25:
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
	jnz .2968.26
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2968.26:
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
	jz .1613
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
.1613:
.1611:
	mov rbx, [_gpos]
	mov rsi, _s393
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
	jz .1615
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s394
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
	jnz .2969.27
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2969.27:
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
	mov rbx, _s395
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
	jmp .1617
.1615:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, _s396
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
.1617:
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
	jnz .2970.28
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2970.28:
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
	jz .1618
	mov rbx, [_gpos]
	mov rsi, _s302
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1618:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2971.29
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2971.29:
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
	jz .1620
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .2972.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2972.3:
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
	jz .1622
	mov rbx, 1
	push rbx
	jmp .1624
.1622:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2973.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2973.3:
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
.1624:
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
	jz .1625
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1627
	mov rbx, [_gpos]
	mov rsi, _s324
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1627:
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
	jmp .1629
.1625:
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
	jz .1630
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1632
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
	jz .1634
	mov rbx, [_gpos]
	mov rsi, _s325
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
.1634:
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
	jz .1636
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
	jmp .1638
.1636:
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
.1638:
	jmp .1633
.1632:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1640
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
	jz .1641
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
	jmp .1643
.1641:
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
.1643:
	jmp .1633
.1640:
	mov rbx, 0
	test rbx, rbx
	jnz .2974
	mov eax, 4
	mov edi, 2
	mov rsi, _s326
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2974:
.1644:
.1633:
	jmp .1631
.1630:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1646
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1647
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1648
.1647:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1650
	mov rbx, [_gpos]
	mov rsi, _s328
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1650:
.1648:
	jmp .1631
.1646:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1652
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 69
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1653
	mov rbx, [_gpos]
	mov rsi, _s329
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1654
.1653:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 71
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .1656
	mov rbx, [_gpos]
	mov rsi, _s330
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1656:
.1654:
	jmp .1631
.1652:
	mov rbx, 0
	test rbx, rbx
	jnz .2975
	mov eax, 4
	mov edi, 2
	mov rsi, _s331
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.2975:
.1657:
.1631:
	add rsp, 8
.1629:
	jmp .1658
.1620:
	mov rbx, [_gpos]
	mov rsi, _s332
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1658:
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
	jnz .2976.30
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2976.30:
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
	jz .1659
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1659:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .2977.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.2977.4:
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
	jz .1661
	mov rbx, [_gpos]
	mov rsi, _s313
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1661:
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
	jnz .2978.31
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2978.31:
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
	jz .1663
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_var_interaction
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1664
.1663:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1666
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .2979.32
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.2979.32:
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
	jmp .1664
.1666:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1668
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
	jz .1669
	mov rbx, [_gpos]
	mov rsi, _s333
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1669:
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
	jmp .1664
.1668:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1672
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
	jmp .1664
.1672:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1674
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
	jmp .1664
.1674:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1676
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
	jmp .1664
.1676:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1678
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
	jmp .1664
.1678:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1680
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
	jmp .1664
.1680:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1682
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
	jmp .1664
.1682:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1684
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
	jmp .1664
.1684:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1686
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
	jmp .1664
.1686:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1688
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
	jmp .1664
.1688:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1690
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
	jmp .1664
.1690:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1692
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
	jmp .1664
.1692:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1694
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
	jmp .1664
.1694:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1696
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
	jmp .1664
.1696:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1698
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
	jmp .1664
.1698:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1700
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
	jmp .1664
.1700:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1702
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
	jnz .2980.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2980.1:
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
	jnz .2981.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2981.2:
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
	jnz .2982.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2982.4:
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
	jnz .2983.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2983.5:
	jmp .1664
.1702:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1704
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
	jnz .2984.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s335
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2984.1:
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
	jnz .2985.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2985.6:
	jmp .1664
.1704:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1706
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
	jnz .2986.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s318
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2986.4:
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
	jnz .2987.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2987.7:
	jmp .1664
.1706:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1708
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
	jnz .2988.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s318
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.2988.5:
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
	jnz .2989.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2989.8:
	jmp .1664
.1708:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1710
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
	jnz .2990.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2990.3:
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
	jnz .2991.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2991.4:
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
	jnz .2992.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2992.5:
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
	jnz .2993.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2993.9:
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
	jnz .2994.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2994.10:
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
	jnz .2995.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.2995.11:
	jmp .1664
.1710:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1712
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
	jnz .2996.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2996.6:
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
	jnz .2997.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2997.7:
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
	jnz .2998.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2998.8:
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
	jnz .2999.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s334
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.2999.9:
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
	jnz .3000.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.3000.12:
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
	jnz .3001.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.3001.13:
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
	jnz .3002.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.3002.14:
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
	jnz .3003.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s321
	mov rdx, 116
	syscall
	mov rdi, 1
	jmp _exit
.3003.15:
	jmp .1664
.1712:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1714
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
	jmp .1664
.1714:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1716
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
	jmp .1664
.1716:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1718
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
	jmp .1664
.1718:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1720
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
	jmp .1664
.1720:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1722
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
	jmp .1664
.1722:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1724
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
	jmp .1664
.1724:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1726
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
	jmp .1664
.1726:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1728
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
	jmp .1664
.1728:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1730
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
	jmp .1664
.1730:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1732
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
	jmp .1664
.1732:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1734
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
	jmp .1664
.1734:
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1735:
.1664:
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
.1736:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .1737
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3004.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3004.2:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3005.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3005.4:
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
	jz .1739
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3006.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3006.3:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3007.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3007.5:
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
	jz .1741
	pop rbx
	mov rsi, rbx
	mov rdi, [_gpos]
	dec rdi
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1743
	pop rbx
	inc rbx
	mov rsi, _s407
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1745
.1743:
	add rsp, 8
.1745:
	jmp .1746
.1741:
	add rsp, 8
.1746:
	mov rbx, 1
	push rbx
	jmp .1747
.1739:
	mov rbx, 0
	push rbx
.1747:
	jmp .1748
.1737:
	mov rbx, 0
	push rbx
.1748:
	pop rbx
	test rbx, rbx
	jz .1749
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, [_gscope_context.len]
	dec rbx
	mov [_gscope_context.len], rbx
	jmp .1736
.1749:
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
	jz .1750
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
	jz .1752
	mov rbx, [_gpos]
	mov rsi, _s390
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
.1752:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .1754
	mov rbx, 11
	push rbx
	jmp .1756
.1754:
	mov rbx, 12
	push rbx
.1756:
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
.1750:
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
	jnz .3008.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3008.4:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3009.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3009.6:
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
	jz .1757
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
.1757:
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
	jz .1759
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
	jnz .3010.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3010.7:
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
	jz .1761
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
	jz .1763
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
	jnz .3011.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3011.8:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s410
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
	jmp .1764
.1763:
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
	jz .1766
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
	jnz .3012.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3012.9:
	mov rsi, 16
	imul rbx, rsi
	mov rsi, qword _gir_stream
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s411
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
.1766:
.1764:
.1761:
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
	jnz .3013
	mov eax, 4
	mov edi, 2
	mov rsi, _s412
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3013:
	jmp .1760
.1759:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1768
	mov rbx, qword [_rs_p]
	add rbx, 41
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3014.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3014.5:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3015.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3015.7:
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
	jmp .1760
.1768:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1770
	jmp .1760
.1770:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1772
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1773
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
.1773:
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
	jz .1775
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s413
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
	jmp .1776
.1775:
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
	jz .1778
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s414
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
.1778:
.1776:
	jmp .1760
.1772:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1780
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
	jnz .3016.33
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3016.33:
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
	jz .1781
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
	jz .1783
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1785
.1783:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
.1785:
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
	jz .1786
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s415
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1786:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3017.34
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3017.34:
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
	jz .1788
	mov rbx, [_gpos]
	mov rsi, _s390
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1788:
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
	jmp .1782
.1781:
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
	jnz .3018.35
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3018.35:
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
	jz .1791
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
	jz .1792
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .1794
.1792:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
.1794:
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
	jmp .1782
.1791:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1796
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
.1796:
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
	jz .1798
	mov rbx, [_gpos]
	mov rsi, _s416
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
.1798:
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
.1795:
.1782:
	jmp .1760
.1780:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1801
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
	jnz .3019.36
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3019.36:
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
	jz .1802
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
	jnz .3020.37
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3020.37:
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
	jz .1804
	mov rbx, 6
	push rbx
	jmp .1805
.1804:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1807
	mov rbx, 5
	push rbx
	jmp .1805
.1807:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3021
	mov eax, 4
	mov edi, 2
	mov rsi, _s417
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3021:
	push rbx
.1808:
.1805:
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
	jz .1809
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
.1809:
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
	jz .1811
	mov rbx, [_gpos]
	mov rsi, _s418
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
.1811:
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
	jnz .3022.38
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3022.38:
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
	jz .1813
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	test rdi, rdi
	jz .1815
	mov rbx, [_gpos]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, _s415
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1815:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3023.39
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3023.39:
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
	jz .1817
	mov rbx, [_gpos]
	mov rsi, _s390
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1817:
.1813:
	jmp .1819
.1802:
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1820
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
.1820:
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
	jz .1822
	mov rbx, [_gpos]
	mov rsi, _s416
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
.1822:
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
.1819:
	jmp .1760
.1801:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1825
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1826
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
.1826:
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
	jz .1828
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s419
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
	jmp .1829
.1828:
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
	jz .1831
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s420
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
.1831:
.1829:
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
	jz .1832
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
.1832:
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1760
.1825:
	mov rbx, qword [_rs_p]
	add rbx, 9
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s421
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1834:
.1760:
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .1835
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret
	mov [_rs_p], rsp
	mov rsp, rbp
.1835:
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
	jz .1837
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3024.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3024.6:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3025.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3025.8:
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
	jz .1839
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
	jz .1841
	mov rbx, [_gpos]
	mov rsi, _s408
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1841:
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
	jmp .1840
.1839:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1844
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3026.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3026.7:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3027.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3027.9:
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
	jz .1845
	mov rbx, [_gpos]
	mov rsi, _s409
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1845:
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
	jmp .1840
.1844:
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
.1847:
.1840:
	add rsp, 8
	jmp .1848
.1837:
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
.1848:
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
	jz .1849
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1849:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rbx
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	push rbx
.1851:
	mov rbx, 1
	test rbx, rbx
	jz .1852
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3028.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3028.10:
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
	jz .1853
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1853:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1855
	jmp .1852
.1855:
	pop rbx
	dec rbx
	push rbx
	jmp .1851
.1852:
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
	jnz .3029.40
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3029.40:
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
	jz .1857
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
	jz .1859
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
	jz .1861
	mov rbx, [_gpos]
	mov rsi, _s397
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1861:
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
	jz .1863
	mov rbx, [_gfunction_context]
	mov rsi, 30
	add rbx, rsi
	mov rsi, [_glabel_c]
	mov rdi, rsi
	inc rdi
	mov [_glabel_c], rdi
	mov dword [rbx], esi
.1863:
.1859:
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
	jz .1865
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3030.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3030.4:
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
	jz .1867
	mov rbx, [_gpos]
	mov rsi, _s398
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1867:
.1865:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3031.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3031.5:
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
	jz .1869
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.push_early_ret_with_pos
	mov [_rs_p], rsp
	mov rsp, rbp
.1869:
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
	jnz .3032.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3032.6:
	mov rbx, 48
	imul rdi, rbx
	mov rbx, qword _gfunctions
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .1871
	mov rbx, [_gpos]
	mov rsi, _s317
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
.1871:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3033.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3033.7:
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
	jnz .3034.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3034.8:
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
.1857:
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
	jz .1873
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
	jnz .3035.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3035.3:
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
	jz .1875
	mov rbx, [_gpos]
	mov rsi, _s317
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
.1875:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3036.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3036.4:
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
	jnz .3037.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3037.5:
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
	jz .1877
	mov rbx, 0
	push rbx
	jmp .1879
.1877:
	mov rbx, 1
	push rbx
.1879:
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
.1873:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1880
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
	jz .1882
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3038.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3038.5:
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
	jz .1884
	mov rbx, 1
	push rbx
	jmp .1886
.1884:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	mov rdi, rbx
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3039.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3039.11:
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
.1886:
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
	jz .1887
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	push rbx
	test r8, r8
	jz .1889
	mov rbx, [_gpos]
	mov rsi, _s400
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1889:
.1887:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1891
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	jz .1893
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
	jmp .1895
.1893:
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
.1895:
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
.1891:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1897
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
	jz .1898
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
	jmp .1900
.1898:
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
.1900:
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
	jmp .1892
.1897:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1902
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
	jmp .1892
.1902:
	mov rbx, 0
	test rbx, rbx
	jnz .3040
	mov eax, 4
	mov edi, 2
	mov rsi, _s401
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3040:
.1903:
.1892:
	add rsp, 8
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 32], rbx
.1882:
.1880:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .1904
	mov rbx, [_gpos]
	mov rsi, _s402
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1904:
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
	jz .1906
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
	jz .1908
	mov rbx, [_gpos]
	mov rsi, _s300
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1908:
.1906:
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
.1910:
	mov rbx, 1
	test rbx, rbx
	jz .1911
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3041.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3041.12:
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
	jz .1912
	jmp .1911
	jmp .1913
.1912:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1915
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1915:
.1913:
	add rsp, 8
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1916
	jmp .1911
.1916:
	pop rbx
	dec rbx
	push rbx
	jmp .1910
.1911:
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
	jnz .3042.41
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3042.41:
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
	jz .1918
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
	jmp .1919
.1918:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1921
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1919
.1921:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1923
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_name
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1919
.1923:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1925
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
	jz .1926
	mov rbx, [_gpos]
	mov rsi, _s403
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1926:
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
	jz .1928
	mov rbx, [_gpos]
	mov rsi, _s404
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1928:
	jmp .1919
.1925:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1931
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1932
	mov rbx, [_gpos]
	mov rsi, _s405
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1932:
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
	jmp .1919
.1931:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1935
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1936
	mov rbx, [_gpos]
	mov rsi, _s406
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1936:
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
	jz .1938
	mov rbx, [_gpos]
	mov rsi, _s406
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1938:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3043.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3043.13:
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
	jmp .1919
.1935:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1941
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.is_inside_while_header
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1942
	mov rbx, [_gpos]
	mov rsi, _s406
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1942:
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
	jz .1944
	mov rbx, [_gpos]
	mov rsi, _s406
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1944:
	mov rbx, 12
	pop rsi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3044.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3044.14:
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
	jmp .1919
.1941:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1947
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_open_l_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1919
.1947:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1949
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.handle_close_r_cb
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1919
.1949:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1951
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .1952
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
	jz .1954
	mov rbx, 0
	test rbx, rbx
	jnz .3045
	mov eax, 4
	mov edi, 2
	mov rsi, _s423
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.3045:
.1954:
.1952:
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
	jz .1956
	mov rbx, [_gpos]
	mov rsi, _s424
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
	jmp .1957
.1956:
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
	jz .1959
	mov rbx, [_gpos]
	mov rsi, _s425
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
.1959:
.1957:
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
	jmp .1919
.1951:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1961
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
	jz .1962
	mov rbx, [_gpos]
	mov rsi, _s426
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1962:
	mov rbx, 2
	mov rsi, [_gpos]
	mov rdi, rsi
	mov r8, [_gtoken_stream.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3046.42
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3046.42:
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
	jz .1964
	mov rbx, [_gpos]
	mov rsi, _s427
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1964:
	jmp .1919
.1961:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1967
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
	jnz .3047.43
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3047.43:
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
	jnz .3048.44
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3048.44:
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
	jmp .1919
.1967:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1969
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
	jmp .1919
.1969:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1971
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
	jmp .1919
.1971:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1973
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
	jmp .1919
.1973:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1975
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
	jmp .1919
.1975:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1977
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
	jmp .1919
.1977:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1979
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
	jmp .1919
.1979:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1981
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
	jmp .1919
.1981:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1983
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
	jmp .1919
.1983:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1985
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
	jmp .1919
.1985:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1987
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
	jmp .1919
.1987:
	pop rbx
	mov rsi, rbx
	mov rdi, 72
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1989
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
	jmp .1919
.1989:
	pop rbx
	mov rsi, rbx
	mov rdi, 75
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1991
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
	jmp .1919
.1991:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1993
	mov rbx, [_gpos]
	mov rsi, _s451
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1994
.1993:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .1996
	mov rbx, [_gpos]
	mov rsi, _s452
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.1996:
.1994:
	mov rbx, 0
	test rbx, rbx
	jnz .3049
	mov eax, 4
	mov edi, 2
	mov rsi, _s453
	mov rdx, 79
	syscall
	mov rdi, 1
	jmp _exit
.3049:
.1992:
.1919:
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
.1997:
	mov rbx, 1
	test rbx, rbx
	jz .1998
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1999
	mov rbx, 5
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2001
	jmp .1998
.2001:
	jmp .2003
.1999:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s315
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2003:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3050.45
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3050.45:
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
	jz .2004
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3051.46
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3051.46:
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
	jz .2006
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3052.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3052.9:
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
	jz .2008
	mov rbx, [_gpos]
	mov rsi, _s316
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2008:
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
	jnz .3053.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3053.10:
	mov rsi, 48
	imul rdi, rsi
	mov rsi, qword _gfunctions
	add rdi, rsi
	mov edi, [rdi]
	xor rsi, rsi
	cmp rbx, rdi
	setb sil
	test rsi, rsi
	jz .2010
	mov rbx, [_gpos]
	mov rsi, _s317
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
.2010:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3054.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3054.11:
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
	jnz .3055.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3055.12:
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
	jmp .2012
.2006:
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
	jz .2013
	mov rbx, [_gpos]
	mov rsi, _s323
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2013:
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
.2012:
	jmp .2015
.2004:
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
	jz .2016
	mov rbx, [_gpos]
	mov rsi, _s336
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2016:
.2015:
	jmp .1997
.1998:
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
	jz .2018
	mov rbx, [_gpos]
	mov rsi, _s346
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2018:
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
	jz .2020
	mov rbx, [_gpos]
	mov rsi, _s347
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
.2020:
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
	jnz .3056.53
	mov eax, 4
	mov edi, 2
	mov rsi, _s338
	mov rdx, 99
	syscall
	mov rdi, 1
	jmp _exit
.3056.53:
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
	jnz .3057
	mov eax, 4
	mov edi, 2
	mov rsi, _s348
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3057:
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
	jnz .3058.47
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3058.47:
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
	jz .2022
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2024
	mov rbx, [_gpos]
	mov rsi, _s314
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2024:
	jmp .2023
.2022:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2027
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.eval_const_expr
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2023
.2027:
	pop rbx
	mov rsi, rbx
	mov rdi, 77
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2029
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
	jz .2030
	mov rbx, [_gpos]
	mov rsi, _s333
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2030:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.get_constant?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	push rbx
	jmp .2023
.2029:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2033
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3059.48
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3059.48:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	jmp .2023
.2033:
	mov rbx, [_gpos]
	mov rsi, _s349
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	push rbx
.2034:
.2023:
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
	jnz .3060.49
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3060.49:
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
	jz .2035
	mov rbx, 1
	push rbx
	jmp .2036
.2035:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2038
	mov rbx, 2
	push rbx
	jmp .2036
.2038:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3061
	mov eax, 4
	mov edi, 2
	mov rsi, _s301
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3061:
	push rbx
.2039:
.2036:
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
	jz .2040
	mov rbx, [_gpos]
	mov rsi, _s302
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2040:
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
	jz .2042
	mov rbx, [_gpos]
	mov rsi, _s312
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2042:
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
	jz .2044
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2046
	mov rbx, [_gpos]
	mov rsi, _s350
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2046:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	push rsi
.2044:
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
	jz .2048
	mov rbx, [_gfunction_context]
	mov rsi, 24
	add rbx, rsi
	mov ebx, [rbx]
	push rbx
	jmp .2050
.2048:
	mov rbx, 0
	push rbx
.2050:
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
	jnz .3062.50
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3062.50:
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
	jz .2051
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
.2051:
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
	jz .2053
	mov rbx, [_gpos]
	mov rsi, _s366
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2053:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3063.51
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3063.51:
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
	jz .2055
	mov rbx, [_gpos]
	mov rsi, _s367
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2055:
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
	jnz .3064.52
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3064.52:
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
	jz .2057
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3065.53
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3065.53:
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
	jz .2059
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2060
.2059:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2062
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2060
.2062:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2064
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2060
.2064:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2066
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
	jmp .2060
.2066:
	mov rbx, [_gpos]
	mov rsi, _s371
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2067:
.2060:
	add rsp, 8
.2057:
	mov rbx, [_gpos]
	mov rsi, _s372
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
	mov rsi, 1
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
	jz .2068
	mov rbx, [_gpos]
	mov rsi, _s368
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2068:
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
	jz .2070
	mov rbx, [_gpos]
	mov rsi, _s369
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2070:
.2072:
	mov rbx, 1
	test rbx, rbx
	jz .2073
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .2074
	mov rbx, 6
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	test rsi, rsi
	jz .2076
	jmp .2073
.2076:
	jmp .2078
.2074:
	add rsp, 8
	mov rbx, [_gpos]
	mov rsi, _s370
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2078:
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
	jz .2079
	mov rbx, [_gpos]
	mov rsi, _s373
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2079:
	jmp .2072
.2073:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.next_eof?
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2081
	mov rbx, [_gpos]
	mov rsi, _s370
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2081:
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
	jnz .3066.54
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3066.54:
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
	jz .2083
	mov rbx, _s374
	mov rsi, 4
	mov rdi, qword [rsp + 0]
	mov r8, rsi
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push rsi
	test r9, r9
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
	sete bl
	test rbx, rbx
	jz .2085
	mov rbx, [_gpos]
	mov rsi, _s375
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2085:
	mov rbx, 0
	push rbx
	jmp .2087
.2083:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.one_cextern_arg
	mov [_rs_p], rsp
	mov rsp, rbp
.2087:
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
	jz .2088
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3067.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3067.8:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3068.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3068.15:
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
	jmp .2090
.2088:
	mov rbx, 0
	push rbx
.2090:
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
.2091:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2092
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2093
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3069.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3069.9:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3070.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3070.16:
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
	jz .2095
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2097:
	mov rbx, [_gpos]
	mov rsi, [_gtoken_stream.len]
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2098
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3071.55
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3071.55:
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
	jz .2099
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2100
.2099:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2102
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2102:
.2100:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2103
	jmp .2098
.2103:
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2097
.2098:
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
	jz .2105
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3072.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3072.10:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3073.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3073.17:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s299
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2105:
.2095:
.2093:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3074.56
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3074.56:
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
	jz .2107
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
	jmp .2108
.2107:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2110
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
	jz .2111
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
	jmp .2113
.2111:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
.2113:
	jmp .2108
.2110:
	pop rbx
	mov rsi, rbx
	mov rdi, 74
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2115
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
	jmp .2108
.2115:
	pop rbx
	mov rsi, rbx
	mov rdi, 76
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2117
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
	jz .2118
	mov rbx, [_gpos]
	mov rsi, _s377
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2118:
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
	jz .2120
	mov rbx, [_gpos]
	mov rsi, _s378
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2120:
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
	jz .2122
	mov rbx, [_gpos]
	mov rsi, _s378
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2122:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	test rsi, rsi
	jz .2124
	mov rbx, 12
	push rbx
	jmp .2126
.2124:
	mov rbx, 11
	push rbx
.2126:
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.create_reset_frame
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2108
.2117:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_in_function
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	sete bl
	test rbx, rbx
	jz .2128
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2130
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2131
.2130:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2133
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
	mov rsi, _s380
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2134:
	mov rbx, [_gpos]
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3075.57
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3075.57:
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
	jz .2136
	mov rbx, [_gpos]
	mov rsi, _s385
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2136:
	mov rbx, [_gfunction_attributes]
	pop rsi
	or rsi, rbx
	mov [_gfunction_attributes], rsi
	jmp .2131
.2133:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2139
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
	jz .2140
	mov rbx, [_gpos]
	mov rsi, _s386
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2140:
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
	jz .2142
	mov rbx, [_gpos]
	inc rbx
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3076.58
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3076.58:
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
	jnz .3077.59
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3077.59:
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
	jz .2144
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov rsi, rbx
	mov rdi, [_gtoken_stream.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3078.60
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3078.60:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _gtoken_stream
	add rbx, rsi
	mov rsi, 16
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 56], rbx
.2144:
.2142:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2146
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
	jnz .3079.61
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3079.61:
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
	mov rbx, _s387
	mov rsi, 25
	mov rdi, 2
	mov r8, 4
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
	jz .2148
	mov rbx, _s388
	mov rsi, 3
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s389
	mov rsi, 1
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2148:
	mov rbx, 1
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
.2146:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2150
	mov rbx, [_gpos]
	mov rsi, 2
	add rbx, rsi
	mov [_gpos], rbx
.2150:
	jmp .2131
.2139:
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
	jz .2153
	mov rbx, qword [_rs_p]
	add rbx, 64
	mov rsi, [_gscope_context.len]
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setne r8b
	test r8, r8
	jnz .3080.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3080.11:
	mov rsi, [_gscope_context.len]
	mov rdi, 1
	sub rsi, rdi
	mov rdi, rsi
	mov r8, [_gscope_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3081.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3081.18:
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
	jmp .2131
.2153:
	mov rbx, [_gpos]
	mov rsi, _s391
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2154:
.2131:
	jmp .2155
.2128:
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
	jz .2156
	mov rbx, qword [_rs_p]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.2156:
.2155:
.2127:
.2108:
	add rsp, 8
	mov rbx, [_gpos]
	inc rbx
	mov [_gpos], rbx
	jmp .2091
.2092:
	mov rbx, qword [_rs_p]
	mov rsi, 8
	add rbx, rsi
	mov rbx, [rbx]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3082
	mov eax, 4
	mov edi, 2
	mov rsi, _s454
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.3082:
	mov rbx, [_gfunction_context]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2158
	mov rbx, [_gtoken_stream.len]
	dec rbx
	mov rsi, _s455
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2158:
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2160
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3083.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3083.12:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3084.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3084.19:
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
	jz .2162
	mov rbx, [_gscope_context.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jnz .3085.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s297
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3085.13:
	mov rbx, [_gscope_context.len]
	mov rsi, 1
	sub rbx, rsi
	mov rsi, rbx
	mov rdi, [_gscope_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3086.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s298
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3086.20:
	mov rsi, 32
	imul rbx, rsi
	mov rsi, qword _gscope_context
	add rbx, rsi
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _s299
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2164
.2162:
	mov rbx, 0
	test rbx, rbx
	jnz .3087
	mov eax, 4
	mov edi, 2
	mov rsi, _s456
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.3087:
.2164:
.2160:
	mov rbx, [_gmain_fn_idx]
	mov rsi, 18446744073709551615
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2165
	mov rbx, _s457
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2165:
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
	jnz .3088
	mov eax, 4
	mov edi, 2
	mov rsi, _s511
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3088:
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
	jnz .3089.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3089.10:
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
.2167:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2168
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3090.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s510
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3090.1:
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
	jz .2169
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.2169:
	pop rbx
	inc rbx
	push rbx
	jmp .2167
.2168:
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
.2201:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3091.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3091.13:
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
	jz .2171
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
	jz .2173
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbx, [_ginlined_functions]
	inc rbx
	mov [_ginlined_functions], rbx
.2173:
	jmp .2175
.2171:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .3092
	mov eax, 4
	mov edi, 2
	mov rsi, _s509
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3092:
.2175:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
.2176:
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
	jz .2177
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3093.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3093.11:
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
	jnz .3094.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3094.12:
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
	jz .2178
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3095.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3095.14:
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
	jz .2180
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2182:
	mov rbx, 1
	test rbx, rbx
	jz .2183
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
	jnz .3096.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3096.13:
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
	jnz .3097.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3097.14:
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
	jz .2184
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	test rbx, rbx
	jz .2186
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.2186:
	jmp .2185
.2184:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2189
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2190
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
.2190:
	jmp .2185
.2189:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2193
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3098.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3098.15:
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
	jmp .2183
	jmp .2185
.2193:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2195
	jmp .2183
.2195:
.2194:
.2185:
	jmp .2182
.2183:
	add rsp, 8
.2180:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3099.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3099.16:
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
	jz .2197
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3100.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3100.17:
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
	jnz .3101.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3101.15:
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
	jz .2199
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.2199:
.2197:
	jmp .2179
.2178:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2203
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
	jz .2204
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
.2204:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3102.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3102.18:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
	jmp .2179
.2203:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2207
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2208
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3103.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3103.19:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov rbx, 39
	mov dword [rsi], ebx
	jmp .2210
.2208:
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
	jnz .3104.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3104.20:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.2210:
.2207:
.2179:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	jmp .2176
.2177:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3105.21
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3105.21:
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
	jnz .3106
	mov eax, 4
	mov edi, 2
	mov rsi, _s512
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3106:
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
	jz .2211
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
.2211:
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
	jz .2213
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
.2213:
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
	mov rbx, _s561
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
	jz .2219
	mov rbx, 2
	push rbx
	jmp .2220
.2219:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2222
	mov rbx, 1
	push rbx
	jmp .2220
.2222:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2224
	mov rbx, 12
	push rbx
	jmp .2220
.2224:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2226
	mov rbx, 11
	push rbx
	jmp .2220
.2226:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2228
	mov rbx, 3
	push rbx
	jmp .2220
.2228:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2230
	mov rbx, 4
	push rbx
	jmp .2220
.2230:
	mov rbx, 18446744073709551615
	mov rsi, 0
	test rsi, rsi
	jnz .3107
	mov eax, 4
	mov edi, 2
	mov rsi, _s688
	mov rdx, 74
	syscall
	mov rdi, 1
	jmp _exit
.3107:
	push rbx
.2231:
.2220:
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
	jnz .3108.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3108.6:
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
	jz .2232
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	dec rsi
	push rsi
.2234:
	mov rbx, 1
	test rbx, rbx
	jz .2235
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
	jz .2236
	jmp .2235
.2236:
	pop rbx
	dec rbx
	push rbx
	jmp .2234
.2235:
	add rsp, 8
.2232:
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
	jnz .3109.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s613
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3109.4:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jnz .3110
	mov eax, 4
	mov edi, 2
	mov rsi, _s689
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3110:
	mov rbx, _s544
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
	mov rbx, _s545
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
	mov rbx, _s584
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
	jz .2238
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
	jnz .3111.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3111.8:
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
	jz .2240
	mov rbx, _s690
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
	jmp .2241
.2240:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2243
	mov rbx, _s691
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
.2243:
.2241:
	add rsp, 8
.2238:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
gen_range:
	sub rsp, 184
	mov [_rs_p], rsp
	mov rsp, rbp
.2295:
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
.2244:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	test rbx, rbx
	jz .2245
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3112.22
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3112.22:
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
	jz .2246
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3113.23
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3113.23:
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
	jnz .3114.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3114.16:
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
	jz .2248
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
	jz .2250
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
	jmp .2252
.2250:
	mov rbx, 1
	push rbx
.2252:
	jmp .2253
.2248:
	mov rbx, 1
	push rbx
.2253:
	jmp .2254
.2246:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, 8
	mov rdi, rbx
	and rsi, rbx
	xor rbx, rbx
	cmp rdi, rsi
	sete bl
	test rbx, rbx
	jz .2255
	mov rbx, 1
	push rbx
	jmp .2257
.2255:
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
.2257:
.2254:
	pop rbx
	test rbx, rbx
	jz .2258
	mov rbx, 0
	push rbx
.2260:
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
	jz .2261
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
	jnz .3115.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s191
	mov rdx, 102
	syscall
	mov rdi, 1
	jmp _exit
.3115.9:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .2260
.2261:
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
	jz .2262
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3116.24
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3116.24:
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
	jnz .3117.62
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3117.62:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _gtoken_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s562
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
	mov rbx, _s563
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
	jnz .3118.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s178
	mov rdx, 65
	syscall
	mov rdi, 1
	jmp _exit
.3118.7:
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
	mov rbx, _s389
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
.2262:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3119.25
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3119.25:
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
	jnz .3120.26
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3120.26:
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
	jz .2264
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
	jmp .2265
.2264:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2267
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jnz .3121
	mov eax, 4
	mov edi, 2
	mov rsi, _s564
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3121:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3122.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3122.17:
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
	jz .2268
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2270
.2268:
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
	jz .2271
	mov rbx, _s565
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
.2271:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s187
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
	jz .2273
	mov rbx, _s573
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
.2273:
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
	jz .2275
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
.2275:
	add rsp, 8
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2277
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, rsi
	mov rdi, [_gir_stream.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3123.27
	mov eax, 4
	mov edi, 2
	mov rsi, _s308
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3123.27:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _gir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _s393
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
	jz .2279
	mov rbx, _s577
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
	jmp .2281
.2279:
	mov rbx, _s549
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
.2281:
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
	mov rbx, _s579
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
	jnz .3124.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s510
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3124.2:
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
	mov rbx, _s580
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
	mov rbx, _s551
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
.2277:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
.2270:
	jmp .2265
.2267:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2283
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
	jz .2284
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2286
	mov rbx, [_glabel_c]
	mov rsi, rbx
	inc rsi
	mov [_glabel_c], rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
.2286:
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
	jmp .2288
.2284:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3125.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3125.18:
	mov rbx, 48
	imul rsi, rbx
	mov rbx, qword _gfunctions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 48], rsi
	mov rbx, _s544
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
	mov rbx, _s545
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
	jz .2289
	mov rbx, _s582
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
.2289:
	mov rbx, _s583
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
.2288:
	jmp .2265
.2283:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2292
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gfunctions.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3126.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s306
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3126.19:
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
	jz .2293
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
	jmp .2296
.2293:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s544
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
	mov rbx, _s545
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
	mov rbx, _s584
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
.2296:
	jmp .2265
.2292:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2298
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
	mov rbx, _s587
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
	mov rbx, _s561
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
	mov rbx, _s588
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
	jz .2299
	mov rbx, _s577
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
	jmp .2301
.2299:
	mov rbx, _s549
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
.2301:
	mov rbx, _s589
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
	mov rbx, _s580
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
	mov rbx, _s579
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
	jnz .3127.3
	mov eax, 4
	mov edi, 2
	mov rsi, _s510
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3127.3:
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
	mov rbx, _s551
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
	mov rbx, _s590
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
	mov rbx, _s591
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
	jnz .3128.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3128.4:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2298:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2303
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
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
	jmp .2265
.2303:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2305
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2265
.2305:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2307
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s593
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
	jz .2308
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
	mov rbx, _s561
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
.2308:
	jmp .2265
.2307:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2311
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
	jnz .3129.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3129.9:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rbx, _s560
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
	mov rbx, _s595
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
.2312:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2313
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
	mov rdi, _s596
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
	mov rbx, _s597
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
	mov rbx, _s598
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
	jnz .3130.5
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3130.5:
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
	jmp .2312
.2313:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3131.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3131.6:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2311:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2315
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
	jnz .3132.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3132.10:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 144], rbx
	mov rbx, _s560
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
	mov rbx, _s595
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
.2316:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2317
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
	mov rbx, _s597
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
	mov rbx, _s600
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
	jmp .2316
.2317:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 144]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3133.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3133.7:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2315:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2319
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_prepare_push_const_word
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s601
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
	jnz .3134.6
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3134.6:
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
	jmp .2265
.2319:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2321
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3135.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3135.7:
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
	jz .2322
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 152], rsi
	mov rbx, _s602
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
	jnz .3136.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3136.8:
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
	mov rbx, _s598
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
	jmp .2324
.2322:
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
	jnz .3137.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3137.11:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 152], rbx
	mov rbx, _s560
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
	mov rbx, _s603
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
	jnz .3138.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3138.9:
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
.2325:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2326
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
	mov rbx, _s596
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
	mov rbx, _s597
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
	mov rbx, _s598
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
	jnz .3139.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3139.8:
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
	jmp .2325
.2326:
	add rsp, 8
.2324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 152]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3140.9
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3140.9:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2321:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2328
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3141.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3141.10:
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
	jnz .3142.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3142.12:
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
	jz .2329
	mov rbx, _s560
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
	mov rbx, _s604
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
	jnz .3143.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3143.11:
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
	mov rbx, _s600
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
	jnz .3144.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3144.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2331
.2329:
	mov rbx, _s560
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
	mov rbx, _s603
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
	jnz .3145.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3145.12:
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
.2332:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	test r8, r8
	jz .2333
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
	mov rbx, _s597
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
	mov rbx, _s600
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
	jmp .2332
.2333:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 168]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3146.10
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3146.10:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
.2331:
	jmp .2265
.2328:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2335
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
	jnz .3147.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3147.14:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s560
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
	mov rbx, _s605
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
	mov rbx, _s560
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
	mov rbx, _s606
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
	mov rbx, _s600
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
	jnz .3148.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3148.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2335:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2337
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
	jnz .3149.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3149.16:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 64], rbx
	mov rbx, _s560
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
	mov rbx, _s605
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
	mov rbx, _s607
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
	jnz .3150.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3150.17:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2337:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2339
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
	jnz .3151.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3151.18:
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
	jnz .3152.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3152.19:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s560
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
	mov rbx, _s605
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
	mov rbx, _s560
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
	mov rbx, _s606
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
	mov rbx, _s600
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
	mov rbx, _s607
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
	mov rbx, _s608
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
	mov rbx, _s606
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
	mov rbx, _s597
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
	mov rbx, _s609
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
	jnz .3153.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3153.20:
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
	jnz .3154.11
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3154.11:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2339:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
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
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s587
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
	mov rbx, _s561
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
	mov rbx, _s610
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
	jnz .3155.12
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3155.12:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2341:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
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
	jmp .2265
.2343:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
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
	mov rdi, _s611
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
	jnz .3156.21
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3156.21:
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
	jnz .3157.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3157.13:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2345:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s480
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
	jnz .3158.22
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3158.22:
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
	jnz .3159.14
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3159.14:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2347:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2349
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
	mov rdi, _s612
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
	jnz .3160.23
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3160.23:
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
	jnz .3161.15
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3161.15:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2349:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2351
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
	mov rbx, _s615
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
	jnz .3162.24
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3162.24:
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
	jnz .3163.16
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3163.16:
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
	jnz .3164.17
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3164.17:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2351:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2353
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
	mov rbx, _s615
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
	jnz .3165.25
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3165.25:
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
	jnz .3166.18
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3166.18:
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
	jnz .3167.19
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3167.19:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2353:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2355
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
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
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2265
.2355:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2357
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
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
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2265
.2357:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2359
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
	jnz .3168.26
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3168.26:
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
	mov rbx, _s615
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
	jnz .3169.20
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3169.20:
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
	jnz .3170.27
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3170.27:
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
	jnz .3171.28
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3171.28:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2359:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2361
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
	mov rbx, _s619
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
	mov rbx, _s620
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
	jnz .3172.29
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3172.29:
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
	jnz .3173.21
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3173.21:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2361:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2363
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
	mov rbx, _s621
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
	mov rbx, _s620
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
	jnz .3174.30
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3174.30:
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
	jnz .3175.22
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3175.22:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2363:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2365
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s587
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
	mov rbx, _s561
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
	jnz .3176.31
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3176.31:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2365:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2367
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
	mov rdi, _s638
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
	jnz .3177.32
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3177.32:
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
	jnz .3178.23
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3178.23:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2367:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2369
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
	mov rdi, _s639
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
	jnz .3179.33
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3179.33:
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
	jnz .3180.24
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3180.24:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2369:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2371
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s640
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
	jnz .3181.34
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3181.34:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2371:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2373
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
	jnz .3182.35
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3182.35:
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
	jnz .3183.25
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3183.25:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2265
.2373:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2375
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
	jnz .3184.36
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3184.36:
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
	jnz .3185.37
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3185.37:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2375:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2377
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
	jmp .2265
.2377:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2379
	mov rbx, [_grallocator_stack.len]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2380
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
	mov rbx, _s642
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
	mov rbx, _s600
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
	jmp .2382
.2380:
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
.2382:
	jmp .2265
.2379:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2384
	mov rbx, [_grallocator_stack.len]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	setb dil
	test rdi, rdi
	jz .2385
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
	mov rbx, _s642
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
	mov rbx, _s600
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
	jmp .2387
.2385:
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
.2387:
	jmp .2265
.2384:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2389
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
	jnz .3186.38
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3186.38:
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
	jnz .3187.39
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3187.39:
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
	jnz .3188.40
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3188.40:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2389:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2391
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
	jnz .3189.41
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3189.41:
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
	jnz .3190.42
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3190.42:
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
	jnz .3191.43
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3191.43:
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
	jnz .3192.44
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3192.44:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2391:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2393
	mov rbx, [_grallocator_stack.len]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	seta dil
	test rdi, rdi
	jz .2394
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
	jnz .3193.26
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3193.26:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2396
.2394:
	mov rbx, _s643
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
.2396:
	jmp .2265
.2393:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
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
	jnz .3194.45
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3194.45:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s622
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
	jnz .3195.46
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3195.46:
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
	jnz .3196.27
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3196.27:
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
	jnz .3197.28
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3197.28:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2398:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
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
	jnz .3198.47
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3198.47:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s646
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
	jnz .3199.48
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3199.48:
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
	jnz .3200.29
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3200.29:
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
	jnz .3201.30
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3201.30:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2400:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
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
	jnz .3202.49
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3202.49:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s647
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
	jnz .3203.50
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3203.50:
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
	jnz .3204.31
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3204.31:
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
	jnz .3205.32
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3205.32:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2402:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2404
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
	jnz .3206.51
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3206.51:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s648
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
	jnz .3207.52
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3207.52:
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
	jnz .3208.33
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3208.33:
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
	jnz .3209.34
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3209.34:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2404:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2406
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
	jnz .3210.53
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3210.53:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	jnz .3211.54
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3211.54:
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
	jnz .3212.35
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3212.35:
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
	jnz .3213.36
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3213.36:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2406:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2408
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
	jnz .3214.55
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3214.55:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s650
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
	jnz .3215.56
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3215.56:
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
	jnz .3216.37
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3216.37:
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
	jnz .3217.38
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3217.38:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2408:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2410
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
	jnz .3218.57
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3218.57:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	jnz .3219.58
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3219.58:
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
	jnz .3220.39
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3220.39:
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
	jnz .3221.40
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3221.40:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2410:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2412
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
	jnz .3222.59
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3222.59:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s652
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
	jnz .3223.60
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3223.60:
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
	jnz .3224.41
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3224.41:
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
	jnz .3225.42
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3225.42:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2412:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2414
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
	jnz .3226.61
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3226.61:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	mov rbx, _s653
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
	jnz .3227.62
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3227.62:
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
	jnz .3228.43
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3228.43:
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
	jnz .3229.44
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3229.44:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2414:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2416
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
	jnz .3230.63
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3230.63:
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
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s561
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
	jnz .3231.64
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3231.64:
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
	jnz .3232.45
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3232.45:
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
	jnz .3233.46
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3233.46:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2416:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2418
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
	mov rbx, _s655
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
	mov rbx, _s598
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
	jnz .3234.47
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3234.47:
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
	jnz .3235.48
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3235.48:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2418:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2420
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
	mov rbx, _s656
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
	mov rbx, _s598
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
	jnz .3236.49
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3236.49:
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
	jnz .3237.50
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3237.50:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2420:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2422
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
	mov rbx, _s672
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
	mov rbx, _s598
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
	jnz .3238.51
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3238.51:
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
	jnz .3239.52
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3239.52:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2422:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2424
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
	mov rbx, _s596
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
	mov rbx, _s598
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
	jnz .3240.53
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3240.53:
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
	jnz .3241.54
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3241.54:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2424:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2426
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
	jnz .3242.65
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3242.65:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s560
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
	mov rbx, _s606
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
	mov rbx, _s600
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
	jnz .3243.66
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3243.66:
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
	jnz .3244.55
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3244.55:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2426:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
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
	jnz .3245.67
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3245.67:
	mov rdi, qword _grallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 72], rbx
	mov rbx, _s644
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
	mov rbx, _s561
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
	mov rbx, _s560
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
	mov rbx, _s606
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
	mov rbx, _s600
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
	jnz .3246.68
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3246.68:
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
	jnz .3247.56
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3247.56:
	mov rbx, qword _grallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .2265
.2428:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
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
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s560
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
	mov rbx, _s606
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
	mov rbx, _s600
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
	jnz .3248.69
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3248.69:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2430:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
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
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 64], rsi
	mov rbx, _s560
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
	mov rbx, _s606
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
	mov rbx, _s600
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
	jnz .3249.70
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3249.70:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2265
.2432:
	pop rbx
	mov rsi, rbx
	mov rdi, 67
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2434
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_cextern_function
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2265
.2434:
	pop rbx
	mov rsi, rbx
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	test r8, r8
	jz .2436
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, rsi
	mov rdi, [_ginline_asms.len]
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .3250.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s692
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3250.1:
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
	jz .2437
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, 32
	add rdi, rbx
	mov edi, [rdi]
	add rsi, rdi
	push rsi
.2439:
	mov rbx, 1
	test rbx, rbx
	jz .2440
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
	jz .2441
	jmp .2440
.2441:
	jmp .2439
.2440:
	add rsp, 8
.2437:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, 40
	add rsi, rbx
	mov esi, [rsi]
	push rsi
.2443:
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
	jz .2444
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
	jnz .3251.63
	mov eax, 4
	mov edi, 2
	mov rsi, _s284
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.3251.63:
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
	jmp .2443
.2444:
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
	jz .2445
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
.2447:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [rsp + 0]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2448
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
	jnz .3252.71
	mov eax, 4
	mov edi, 2
	mov rsi, _s559
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3252.71:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	pop rbx
	inc rbx
	push rbx
	jmp .2447
.2448:
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
.2449:
	mov rbx, 1
	test rbx, rbx
	jz .2450
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
	jz .2451
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .3253.57
	mov eax, 4
	mov edi, 2
	mov rsi, _s554
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3253.57:
	mov rsi, qword _grallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .2453
.2451:
	add rsp, 8
.2453:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 48]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	test rdi, rdi
	jz .2454
	jmp .2450
.2454:
	jmp .2449
.2450:
	add rsp, 8
.2445:
	jmp .2265
.2436:
	mov rbx, 0
	test rbx, rbx
	jnz .3254
	mov eax, 4
	mov edi, 2
	mov rsi, _s693
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3254:
.2456:
.2265:
	add rsp, 8
.2258:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	jmp .2244
.2245:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2457
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
.2457:
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
	jz .2459
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.2459:
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
	jz .2461
	mov rbx, _s699
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
.2461:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jz .2463
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
	jz .2465
	mov rbx, _s700
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
	jmp .2467
.2465:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2467:
.2463:
	mov rbx, 1
	push rbx
.2468:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	test rdi, rdi
	jz .2469
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
	jz .2470
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2472
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2474
.2472:
	mov rbx, _s701
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
.2474:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	jmp .2475
.2470:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2476
	mov rbx, _s702
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
	jmp .2478
.2476:
	mov rbx, _s561
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
.2478:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.2475:
	pop rbx
	inc rbx
	push rbx
	jmp .2468
.2469:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	test rsi, rsi
	jz .2479
	mov rbx, _s700
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
.2479:
	mov rbx, _s703
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
	jz .2481
	mov rbx, _s523
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
	jz .2483
	mov rbx, _s526
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
	mov rbx, _s527
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
.2485:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2486
	mov rbx, _s530
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
	jnz .3255.7
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3255.7:
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
	jmp .2485
.2486:
	add rsp, 8
	jmp .2487
.2483:
	mov rbx, _s531
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
	jz .2488
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
	jmp .2490
.2488:
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
.2490:
	mov rbx, _s532
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
	mov rbx, _s533
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
.2487:
	jmp .2482
.2481:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2492
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2493
	mov rbx, _s534
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
	mov rbx, _s389
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
.2493:
	mov rbx, _s535
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
	mov rbx, _s536
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
	mov rbx, _s537
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
.2495:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gcfunctions.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2496
	mov rbx, _s538
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
	jnz .3256.8
	mov eax, 4
	mov edi, 2
	mov rsi, _s310
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3256.8:
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
	jmp .2495
.2496:
	add rsp, 8
	jmp .2482
.2492:
	mov rbx, 0
	test rbx, rbx
	jnz .3257
	mov eax, 4
	mov edi, 2
	mov rsi, _s539
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3257:
.2497:
.2482:
	mov rbx, _s540
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
	jz .2498
	mov rbx, _s541
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
	jmp .2500
.2498:
	mov rbx, _s542
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
.2500:
	mov rbx, _s543
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
	mov rbx, _s544
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
	mov rbx, _s545
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
	mov rbx, _s546
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
	mov rbx, _s547
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
	mov rbx, _s548
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
	jz .2501
	mov rbx, _s549
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
	jmp .2503
.2501:
	mov rbx, _s550
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
.2503:
	mov rbx, _s551
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
	mov rbx, _s552
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
	jz .2504
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2506
	mov rbx, _s694
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
	jmp .2508
.2506:
	mov rbx, _s695
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
.2508:
	jmp .2505
.2504:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2510
	mov rbx, _s696
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
	jmp .2505
.2510:
	mov rbx, 0
	test rbx, rbx
	jnz .3258
	mov eax, 4
	mov edi, 2
	mov rsi, _s697
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3258:
.2511:
.2505:
	mov rbx, 0
	push rbx
.2512:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gslits.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2513
	pop rbx
	mov rsi, rbx
	mov rdi, _s592
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
	mov rbx, _s698
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
	jnz .3259.4
	mov eax, 4
	mov edi, 2
	mov rsi, _s510
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.3259.4:
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
	jmp .2512
.2513:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2514
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2516
	mov rbx, _s704
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
	jmp .2518
.2516:
	mov rbx, _s705
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
.2518:
	jmp .2515
.2514:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2520
	mov rbx, _s706
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
	jmp .2515
.2520:
	mov rbx, 0
	test rbx, rbx
	jnz .3260
	mov eax, 4
	mov edi, 2
	mov rsi, _s707
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3260:
.2521:
.2515:
	mov rbx, 0
	push rbx
.2522:
	pop rbx
	mov rsi, rbx
	mov rdi, [_gvar_context.len]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2523
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, [_gvar_context.len]
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .3261.13
	mov eax, 4
	mov edi, 2
	mov rsi, _s303
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.3261.13:
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
	jz .2524
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
	jz .2526
	mov rbx, _s708
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2527
.2526:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2529
	mov rbx, _s709
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .2527
.2529:
	mov rbx, 0
	test rbx, rbx
	jnz .3262
	mov eax, 4
	mov edi, 2
	mov rsi, _s710
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3262:
.2530:
.2527:
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
.2524:
	pop rbx
	inc rbx
	push rbx
	jmp .2522
.2523:
	add rsp, 8
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2531
	mov rbx, _s711
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
	mov rbx, _s712
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
	mov rbx, _s713
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
	jmp .2532
.2531:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2534
	mov rbx, _s714
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
	mov rbx, _s715
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
	mov rbx, _s716
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
	jmp .2532
.2534:
	mov rbx, 0
	test rbx, rbx
	jnz .3263
	mov eax, 4
	mov edi, 2
	mov rsi, _s717
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.3263:
.2535:
.2532:
	mov rbx, _s718
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
	mov r8, 4
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
	jnz .3264.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s525
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.3264.2:
	mov rbx, 0
	mov [_gfwrite_buffer.len], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 48
	ret
usage:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	jmp .3265.1
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3266.1
	mov eax, 4
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3266.1:
.3265.1:
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call OS.to_pretty_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s4
	mov rsi, 39
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s5
	mov rsi, 34
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s6
	mov rsi, 67
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s7
	mov rsi, 76
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s8
	mov rsi, 73
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s9
	mov rsi, 76
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s10
	mov rsi, 76
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s11
	mov rsi, 71
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s12
	mov rsi, 47
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s13
	mov rsi, 45
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s14
	mov rsi, 69
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s15
	mov rsi, 78
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s16
	mov rsi, 58
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s17
	mov rsi, 76
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s18
	mov rsi, 57
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s19
	mov rsi, 77
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s20
	mov rsi, 66
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s21
	mov rsi, 43
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s22
	mov rsi, 13
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s23
	mov rsi, 75
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s24
	mov rsi, 55
	mov rdi, 2
	mov r8, 4
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
	mov rdi, _s160
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
	jz .2536
	mov rbx, 1
	mov [_gbackend_type], rbx
	jmp .2537
.2536:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _s161
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
	jz .2539
	mov rbx, 2
	mov [_gbackend_type], rbx
	jmp .2537
.2539:
	mov rbx, _s162
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2540:
.2537:
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
	mov rdi, 33
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
	jz .2541
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2541:
	mov rbx, _s33
	mov rsi, 0
	mov rdi, 18446744073709551516
	mov r8, 512
	mov r9, 552
	mov rax, r9
	mov r10, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
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
	jz .2543
	mov rbx, _s33
	mov rsi, 10
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
	jz .2545
	mov rbx, _s135
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2545:
.2543:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call get_executable_path
	mov [_rs_p], rsp
	mov rsp, rbp
	add rsp, 8
	mov rbx, _s33
	mov rsi, 57
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
	jz .2547
	mov rbx, _s140
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2547:
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
	jz .2549
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s741
	mov rsi, 27
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2549:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2551
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s742
	mov rsi, 1
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2551:
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
	jz .2553
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
	mov rdi, _s728
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
.2553:
	mov rbx, [_gbackend_type]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2555
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s160
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
	mov rdi, _s729
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s730
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, _s160
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
	jmp .2556
.2555:
	mov rbx, [_gbackend_type]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2558
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s161
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
	mov rdi, _s141
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
	mov rdi, _s743
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s744
	mov qword [rsi], rdi
	mov rsi, qword _gdebug_symbols
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	test rdi, rdi
	jz .2559
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s745
	mov qword [rbx], rdi
	mov rbx, 8
	add rsi, rbx
	mov rbx, rsi
	mov rdi, _s150
	mov qword [rbx], rdi
	push rsi
.2559:
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rbx, 0
	mov qword [rsi], rbx
	mov rbx, _s161
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
.2558:
.2556:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2561
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 304]
	mov rdi, qword [rbx + 312]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2563
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s746
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
	mov rdi, _s141
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
	mov rbx, _s746
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
	jmp .2565
.2563:
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rsi, rbx
	mov rdi, _s747
	mov qword [rsi], rdi
	mov rsi, 8
	add rbx, rsi
	mov rsi, rbx
	mov rdi, _s748
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
	mov rbx, _s747
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
.2565:
.2561:
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
	jz .2566
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2568
	mov rbx, _s142
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2569
.2568:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2571
	mov rbx, _s144
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2569
.2571:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2573
	mov rbx, _s145
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2569
.2573:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2575
	mov rbx, _s146
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2575:
.2569:
.2566:
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
	jz .2576
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2576:
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2578
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
	jz .2580
	mov rbp, rsp
	mov rsp, [_rs_p]
	call symlink_exe
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2580:
.2578:
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
	mov rbx, 2
	push rbx
	jmp .3267.2
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .3268.2
	mov eax, 4
	mov edi, 2
	mov rsi, _s0
	mov rdx, 75
	syscall
	mov rdi, 1
	jmp _exit
.3268.2:
.3267.2:
	mov [_gtarget_os], rbx
	mov rbx, 1
	push rbx
.2582:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2583
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
	mov rbx, _s141
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
	jz .2584
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2586
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2586:
	mov rbx, 1
	mov [_gargparse_mode], rbx
	jmp .2585
.2584:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s147
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
	mov rbx, 2
	mov [_gargparse_mode], rbx
	jmp .2585
.2589:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s148
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
	jz .2593
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2594
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2594:
	mov rbx, 3
	mov [_gargparse_mode], rbx
	jmp .2585
.2593:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
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
	jz .2597
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2598
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2598:
	mov rbx, 4
	mov [_gargparse_mode], rbx
	jmp .2585
.2597:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s150
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
	mov rbx, qword _gdebug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2604
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2604:
	mov rbx, qword _gdebug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2601:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s151
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
	jz .2607
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2608
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2608:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2610
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2610:
	mov rbx, qword _gverbose_mode
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2607:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s152
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
	pop rbx
	test rbx, rbx
	jz .2613
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2614
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2614:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 3], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .2585
.2613:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s153
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
	test rbx, rbx
	jz .2617
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2618
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2618:
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2620
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2620:
	mov rbx, qword _gobject_file
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2617:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s154
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
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s155
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
	pop rsi
	or rsi, rbx
	test rsi, rsi
	jz .2623
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .2585
.2623:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s156
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
	jz .2625
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
	jz .2626
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2626:
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2625:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s157
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
	jz .2629
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2630
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2630:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword [_rs_p]
	add rbx, 1
	xor rdi, rdi
	mov dil, [rbx]
	or rsi, rdi
	test rsi, rsi
	jz .2632
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2632:
	mov rbx, qword [_rs_p]
	add rbx, 1
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2629:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s158
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
	jz .2635
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2636
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2636:
	mov rbx, qword _gtrace_calls
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2638
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2638:
	mov rbx, qword _gtrace_calls
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2635:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, _s159
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
	jz .56.115
	add rsp, 8
	pop rbx
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memeq
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .58.115
.56.115:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.115:
	pop rbx
	test rbx, rbx
	jz .2641
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	test rdi, rdi
	jz .2642
	mov rbp, rsp
	mov rsp, [_rs_p]
	call assert_args
	mov [_rs_p], rsp
	mov rsp, rbp
.2642:
	mov rbx, qword _gstrip_assert
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2644
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2644:
	mov rbx, qword _gstrip_assert
	mov rsi, 1
	mov byte [rbx], sil
	jmp .2585
.2641:
	mov rbx, [_gargparse_mode]
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2647
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2649
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2649:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 51], rdi
	mov qword [rbx + 43], rsi
	jmp .2648
.2647:
	mov rbx, [_gargparse_mode]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2652
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2653
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2653:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 11]
	mov rdi, qword [rbx + 19]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 35], rdi
	mov qword [rbx + 27], rsi
	jmp .2648
.2652:
	mov rbx, [_gargparse_mode]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2656
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
	jmp .2648
.2656:
	mov rbx, [_gargparse_mode]
	mov rsi, 4
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2658
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
	jz .2659
	mov rbx, _s165
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2659:
	pop rbx
	mov [_gtarget_os], rbx
	jmp .2648
.2658:
	mov rbx, [_gargparse_mode]
	mov rsi, 3
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2662
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
	jz .2663
	mov rbx, _s166
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2663:
	pop rbx
	mov [_geval.recurse_depth], rbx
	jmp .2648
.2662:
	mov rbx, 0
	test rbx, rbx
	jnz .3269
	mov eax, 4
	mov edi, 2
	mov rsi, _s167
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.3269:
.2665:
.2648:
	mov rbx, 0
	mov [_gargparse_mode], rbx
.2646:
.2585:
	pop rbx
	inc rbx
	push rbx
	jmp .2582
.2583:
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
	jz .2666
	mov rbx, _s168
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
	mov r8, 4
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
	mov r8, 4
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
	mov rsi, _s143
	mov rdi, 1
	mov r8, 4
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
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2666:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jz .2668
	mov rbx, qword _gobject_file
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2670
	mov rbx, _s169
	mov rsi, 3
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
	jmp .2672
.2670:
	mov rbx, _s170
	mov rsi, 5
	mov rdi, qword [_rs_p]
	mov qword [rdi + 35], rsi
	mov qword [rdi + 27], rbx
.2672:
	jmp .2673
.2668:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 27]
	mov rdi, qword [rbx + 35]
	mov rbx, _s171
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
	jz .56.116
	add rsp, 8
	pop rbx
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memeq
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .58.116
.56.116:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
.58.116:
	pop rbx
	test rbx, rbx
	jz .2674
	mov rbx, qword [_rs_p]
	add rbx, 2
	mov rsi, 1
	mov byte [rbx], sil
.2674:
.2673:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 43]
	mov rdi, qword [rbx + 51]
	mov rbx, 4
	mov rdi, 33
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
	jz .2676
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s172
	mov rsi, 18
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2676:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2678
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s176
	mov rsi, 15
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2678:
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
	mov rbx, _s280
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
	jz .2680
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2680:
	mov rbx, [_gtarget_os]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2682
	mov rbx, _s290
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
	jmp .2683
.2682:
	mov rbx, [_gtarget_os]
	mov rsi, 2
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	test rdi, rdi
	jz .2685
	mov rbx, _s292
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
	jmp .2683
.2685:
	mov rbx, 0
	test rbx, rbx
	jnz .3270
	mov eax, 4
	mov edi, 2
	mov rsi, _s293
	mov rdx, 70
	syscall
	mov rdi, 1
	jmp _exit
.3270:
.2686:
.2683:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2687
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s294
	mov rsi, 8
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s295
	mov rsi, 8
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2687:
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
	mov rbx, _s458
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
	jz .2689
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s459
	mov rsi, 12
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s460
	mov rsi, 8
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2689:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2691
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream.dump
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2691:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2693
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s508
	mov rsi, 17
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2693:
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
	mov rbx, _s513
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
	jz .2695
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s514
	mov rsi, 26
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s515
	mov rsi, 25
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s516
	mov rsi, 17
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2695:
	mov rbx, qword [_rs_p]
	add rbx, 2
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	test rsi, rsi
	jz .2697
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
	mov rdi, _s517
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
	jz .2699
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.start_bold_error
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s30
	mov rsi, 7
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s519
	mov rsi, 24
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s520
	mov rsi, 14
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2699:
	pop rbx
	mov [_gfwrite_buffer.fd_loc], rbx
	jmp .2701
.2697:
	mov rbx, 1
	mov [_gfwrite_buffer.fd_loc], rbx
.2701:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2702
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s521
	mov rsi, 21
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s522
	mov rsi, 17
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2702:
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
	mov rbx, _s719
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
	jz .2704
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 75
	ret
.2704:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2706
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s720
	mov rsi, 10
	mov rdi, 2
	mov r8, 4
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
	jnz .3271
	mov eax, 4
	mov edi, 2
	mov rsi, _s721
	mov rdx, 71
	syscall
	mov rdi, 1
	jmp _exit
.3271:
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
	jz .2708
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s722
	mov rsi, 14
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	jmp .2710
.2708:
	mov rbx, 2
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s723
	mov rsi, 15
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2710:
.2706:
	mov rbx, [_gfwrite_buffer.fd_loc]
	mov rsi, 6
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	test rsi, rsi
	jz .2711
	mov rbx, _s724
	mov rsi, 39
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2711:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2713
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s725
	mov rsi, 15
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2713:
	mov rbx, qword _gverbose_mode
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	jz .2715
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s726
	mov rsi, 29
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2715:
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
	mov rbx, _s749
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
	jz .2717
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s750
	mov rsi, 16
	mov rdi, 2
	mov r8, 4
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
	mov r8, 4
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2717:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 3]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jz .2719
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
.2721:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	test r8, r8
	jz .2722
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
	jmp .2721
.2722:
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
	jz .2723
	mov rbp, rsp
	mov rsp, [_rs_p]
	call notice.start_bold_notice
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _s175
	mov rsi, 6
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s751
	mov rsi, 15
	mov rdi, 2
	mov r8, 4
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
	mov rbx, _s173
	mov rsi, 2
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
.2723:
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
	jz .2725
	mov rbx, _s752
	mov rsi, 29
	mov rdi, 2
	mov r8, 4
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 1
	mov rax, rsi
	mov rdi, rbx
	syscall
.2725:
.2719:
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
_s119: db "EPROCLIM: Too many processes", 10, 0
_s120: db "EBADRPC: RPC struct is bad", 10, 0
_s121: db "ERPCMISMATCH: RPC version wrong", 10, 0
_s122: db "EPROGUNAVAIL: RPC prog. not avail", 10, 0
_s123: db "EPROGMISMATCH: Program version wrong", 10, 0
_s124: db "EPROCUNAVAIL: Bad procedure for program", 10, 0
_s125: db "EFTYPE: Inappropriate file type or format", 10, 0
_s126: db "EAUTH: Authentication error", 10, 0
_s127: db "ENEEDAUTH: Need authenticator", 10, 0
_s128: db "ENOATTR: Attribute not found", 10, 0
_s129: db "EDOOFUS: Programming error", 10, 0
_s130: db "ENOTCAPABLE: Capabilities insufficient", 10, 0
_s131: db "ECAPMODE: Not permitted in capability mode", 10, 0
_s132: db "EINTEGRITY: Integrity check failed", 10, 0
_s133: db "ELAST: Integrity check failed", 10, 0
_s134: db "ERRNO: Unknown", 10, 0
_s135: db "failed to remove existing symlink at path `/usr/local/bin/stas`, missing permissions?", 0
_s136: db 27, "[1m", 27, "[31mlib/salloc.stas:7:40: ", 27, "[39m", 27, "[22massertation failed, 'salloc.guard_size: static buffer length exceeded'", 10, 0
_s137: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:458:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s138: db 27, "[1m", 27, "[31mlib/salloc.stas:18:26: ", 27, "[39m", 27, "[22massertation failed, 'salloc.rewind: cannot rewind allocation stack to higher length'", 10, 0
_s139: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:463:4: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for OSes not Linux|FreeBSD'", 10, 0
_s140: db "failed to symlink executable to path `/usr/local/bin/stas`, missing permissions?", 0
_s141: db "-o", 0
_s142: db "supply output file for `-o`", 0
_s143: db 10, 0
_s144: db "supply backend type for `-b`", 0
_s145: db "supply integer for `-comptime-depth`", 0
_s146: db "supply os for `-os`", 0
_s147: db "-b", 0
_s148: db "-comptime-depth", 0
_s149: db "-os", 0
_s150: db "-g", 0
_s151: db "-v", 0
_s152: db "-r", 0
_s153: db "-c", 0
_s154: db "--help", 0
_s155: db "-h", 0
_s156: db "-dump-ir", 0
_s157: db "-dump-tok", 0
_s158: db "-trace-calls", 0
_s159: db "-unsafe", 0
_s160: db "fasm", 0
_s161: db "nasm", 0
_s162: db "unknown backend", 0
_s163: db "linux", 0
_s164: db "freebsd", 0
_s165: db "unknown OS for `-os`", 0
_s166: db "invalid integer for `-comptime-depth`", 0
_s167: db 27, "[1m", 27, "[31mstas.stas:373:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s168: db "supply stas file", 0
_s169: db "a.o", 0
_s170: db "a.out", 0
_s171: db "-", 0
_s172: db "cannot read file `", 0
_s173: db "`", 10, 0
_s174: db "[33m", 0
_s175: db "LOG:  ", 0
_s176: db "scanning file `", 0
_s177: db "FATAL: Failed to get current time", 0
_s178: db 27, "[1m", 27, "[31msrc/formatting.stas:36:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s179: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:776:13: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: syscall `stat` failed'", 10, 0
_s180: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:780:19: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: failed to call `stat`'", 10, 0
_s181: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:791:12: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: `mmap` call failed'", 10, 0
_s182: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:798:15: ", 27, "[39m", 27, "[22massertation failed, 'read_file?: failed to close file descriptor'", 10, 0
_s183: db 27, "[1m", 27, "[31msrc/scanner.stas:20:24: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s184: db 27, "[1m", 27, "[31msrc/stringbuffer.stas:8:5: ", 27, "[39m", 27, "[22massertation failed, 'String memory exceeded limit'", 10, 0
_s185: db 27, "[1m", 27, "[31msrc/formatting.stas:48:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s186: db "unterminated string literal", 0
_s187: db ":", 0
_s188: db ": ", 0
_s189: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:164:24: ", 27, "[39m", 27, "[22massertation failed, 'Array64.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s190: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:127:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64<<: append exceeded bounds in Array64'", 10, 0
_s191: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:123:13: ", 27, "[39m", 27, "[22massertation failed, 'Array64[]: index out of bounds'", 10, 0
_s192: db " | ", 0
_s193: db "    ", 0
_s194: db "       ", 0
_s195: db "escape character does not exist", 0
_s196: db "unhandled escape character", 0
_s197: db ".", 0
_s198: db "/", 0
_s199: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:665:13: ", 27, "[39m", 27, "[22massertation failed, 'getwd: failed to get current working directory'", 10, 0
_s200: db "lib", 0
_s201: db "..", 0
_s202: db "unable to locate file to include", 0
_s203: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:703:9: ", 27, "[39m", 27, "[22massertation failed, 'is_dir: syscall `stat` failed'", 10, 0
_s204: db "file specified to include is a directory", 0
_s205: db "including file `", 0
_s206: db 27, "[1m", 27, "[31msrc/tokens.stas:391:38: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s207: db "unterminated character literal", 0
_s208: db "empty character literal", 0
_s209: db "character literals must contain a single character", 0
_s210: db "file to include is not a string", 0
_s211: db "9223372036854775808", 0
_s212: db "18446744073709551615", 0
_s213: db "number overflows", 0
_s214: db 27, "[1m", 27, "[31mlib/stdlib/string.stas:347:17: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s215: db "include", 0
_s216: db "{", 0
_s217: db "}", 0
_s218: db "->", 0
_s219: db "fn", 0
_s220: db "const", 0
_s221: db "assert", 0
_s222: db "argc", 0
_s223: db "argv", 0
_s224: db "ret", 0
_s225: db "if", 0
_s226: db "else", 0
_s227: db "elif", 0
_s228: db "while", 0
_s229: db "break", 0
_s230: db "continue", 0
_s231: db "+", 0
_s232: db "*", 0
_s233: db "%", 0
_s234: db "++", 0
_s235: db "--", 0
_s236: db "%%", 0
_s237: db ">>", 0
_s238: db "<<", 0
_s239: db "&", 0
_s240: db "|", 0
_s241: db "~", 0
_s242: db "!", 0
_s243: db "^", 0
_s244: db "swap", 0
_s245: db "dup", 0
_s246: db "over", 0
_s247: db "over2", 0
_s248: db "rot", 0
_s249: db "rot4", 0
_s250: db "drop", 0
_s251: db "=", 0
_s252: db "!=", 0
_s253: db ">", 0
_s254: db "<", 0
_s255: db ">=", 0
_s256: db "<=", 0
_s257: db ">s", 0
_s258: db "<s", 0
_s259: db ">=s", 0
_s260: db "<=s", 0
_s261: db "w8", 0
_s262: db "w16", 0
_s263: db "w32", 0
_s264: db "w64", 0
_s265: db "r8", 0
_s266: db "r16", 0
_s267: db "r32", 0
_s268: db "r64", 0
_s269: db "reserve", 0
_s270: db "auto", 0
_s271: db "pop", 0
_s272: db "addr", 0
_s273: db "envp", 0
_s274: db "sizeof", 0
_s275: db "cextern", 0
_s276: db "asm", 0
_s277: db "comptime", 0
_s278: db "?def", 0
_s279: db "unexpected EOF when parsing file to include", 0
_s280: db "scanning took ", 0
_s281: db "[34m", 0
_s282: db "TIME: ", 0
_s283: db " ms", 10, 0
_s284: db 27, "[1m", 27, "[31msrc/tokens.stas:376:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s285: db "name", 0
_s286: db "string_lit", 0
_s287: db "number_lit", 0
_s288: db 27, "[1m", 27, "[31msrc/tokens.stas:210:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s289: db " -> ", 0
_s290: db "TARGET_LINUX", 0
_s291: db 27, "[1m", 27, "[31msrc/parserdefs.stas:356:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s292: db "TARGET_FREEBSD", 0
_s293: db 27, "[1m", 27, "[31mstas.stas:426:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s294: db "parsing ", 0
_s295: db " tokens", 10, 0
_s296: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:397:24: ", 27, "[39m", 27, "[22massertation failed, 'Array32.init_with_buffer_sz_bytes: size must be a multiple of 8 bytes'", 10, 0
_s297: db 27, "[1m", 27, "[31msrc/parserdefs.stas:399:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s298: db 27, "[1m", 27, "[31msrc/parserdefs.stas:365:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s299: db "unclosed conditional scope", 0
_s300: db "forbidden word in const function", 0
_s301: db 27, "[1m", 27, "[31msrc/parser.stas:1448:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s302: db "expected variable name", 0
_s303: db 27, "[1m", 27, "[31msrc/parserdefs.stas:330:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s304: db "name is already an existing variable", 0
_s305: db "variable declared here", 0
_s306: db 27, "[1m", 27, "[31msrc/parserdefs.stas:410:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s307: db "name is already an existing function", 0
_s308: db 27, "[1m", 27, "[31msrc/parserdefs.stas:294:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s309: db "function declared here", 0
_s310: db 27, "[1m", 27, "[31msrc/parserdefs.stas:648:23: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s311: db "name is already an existing C extern function", 0
_s312: db "unexpected EOF in variable declaration", 0
_s313: db "referenced variable is not a constant", 0
_s314: db "unknown constant name", 0
_s315: db "unexpected EOF when parsing constant expression", 0
_s316: db "const expressions can only call const functions", 0
_s317: db "not enough values to consume for function call", 0
_s318: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:356:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32[]: index out of bounds'", 10, 0
_s319: db "backtrace", 0
_s320: db "not enough values to consume for operation", 0
_s321: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:360:13: ", 27, "[39m", 27, "[22massertation failed, 'Array32<<: append exceeded bounds in Array32'", 10, 0
_s322: db 27, "[1m", 27, "[31msrc/parserdefs.stas:308:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s323: db "unknown variable name or const function", 0
_s324: db "cannot get the size of a constant", 0
_s325: db "not enought values on the stack to pop into an automatic variable", 0
_s326: db 27, "[1m", 27, "[31msrc/parser.stas:411:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s327: db "cannot pop into a buffer", 0
_s328: db "cannot get address of a buffer, buffer is already an address", 0
_s329: db "cannot edit a constant", 0
_s330: db "cannot get address of a constant as it does not reside in memory", 0
_s331: db 27, "[1m", 27, "[31msrc/parser.stas:426:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s332: db "unknown variable", 0
_s333: db "expected constant name", 0
_s334: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:368:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.pop: array is empty'", 10, 0
_s335: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:364:15: ", 27, "[39m", 27, "[22massertation failed, 'Array32.top: array is empty'", 10, 0
_s336: db "unsupported token inside a constant expression", 0
_s337: db "comptime constant functions recursion depth limit reached", 0
_s338: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:135:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.pop: array is empty'", 10, 0
_s339: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:452:27: ", 27, "[39m", 27, "[22massertation failed, 'Array32.search_kv?: array length is not multiple of two'", 10, 0
_s340: db 27, "[1m", 27, "[31msrc/eval.stas:220:25: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s341: db 27, "[1m", 27, "[31msrc/eval.stas:229:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s342: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:111:16: ", 27, "[39m", 27, "[22massertation failed, '&Array64.top: array is empty'", 10, 0
_s343: db 27, "[1m", 27, "[31mlib/stdlib/array.stas:131:15: ", 27, "[39m", 27, "[22massertation failed, 'Array64.top: array is empty'", 10, 0
_s344: db 27, "[1m", 27, "[31msrc/eval.stas:234:30: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s345: db 27, "[1m", 27, "[31msrc/eval.stas:240:19: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s346: db "constant expression must contain a value", 0
_s347: db "more than one unhandled value on left on the constant expression", 0
_s348: db 27, "[1m", 27, "[31msrc/parser.stas:1410:37: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s349: db "expected value, constant name, expression scope, or `?def`", 0
_s350: db "auto variables cannot have a size of zero", 0
_s351: db 27, "[1m", 27, "[31msrc/parserdefs.stas:344:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s352: db "function name must not be an intrinsic", 0
_s353: db "a function name cannot begin with an an underscore", 0
_s354: db "unexpected EOF in function declaration", 0
_s355: db "function return and argument counts must be numbers", 0
_s356: db "new scope must proceed after function header", 0
_s357: db "unexpected token in function declaration", 0
_s358: db "function attributes conflict", 0
_s359: db "main", 0
_s360: db "the main function is not inlinable", 0
_s361: db "the main function may not be const", 0
_s362: db "the main function must accept and return zero values", 0
_s363: db 27, "[1m", 27, "[31msrc/parserdefs.stas:432:32: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s364: db 27, "[1m", 27, "[31msrc/parser.stas:276:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s365: db 27, "[1m", 27, "[31msrc/parserdefs.stas:381:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s366: db "expected name of constant", 0
_s367: db "unexpected EOF when parsing const expression", 0
_s368: db "external C functions can only be used when compiling with `-c`", 0
_s369: db "expected name of external C function", 0
_s370: db "unexpected EOF when parsing external C function", 0
_s371: db "argument size specification must be 8, 16, 32 or 64", 0
_s372: db "unexpected keyword inside C function arguments, expected a number", 0
_s373: db "external C functions with more than 6 arguments are not supported", 0
_s374: db "void", 0
_s375: db "unexpected name, expected number or 'void'", 0
_s376: db 27, "[1m", 27, "[31msrc/parserdefs.stas:674:34: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s377: db "unexpected EOF in comptime declaration", 0
_s378: db "expected if block after comptime", 0
_s379: db 27, "[1m", 27, "[31msrc/parserdefs.stas:394:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s380: db "expected name as function attribute", 0
_s381: db "noinline", 0
_s382: db "inline", 0
_s383: db "noreturn", 0
_s384: db "noeval", 0
_s385: db "unknown function attribute", 0
_s386: db "a scope must follow a static assert to open an expression", 0
_s387: db "static assertation failed", 0
_s388: db ", '", 0
_s389: db "'", 0
_s390: db "a scope must come after an else statement", 0
_s391: db "unknown toplevel token", 0
_s392: db "no value on stack to consume for assertion", 0
_s393: db 0
_s394: db "assertation failed, '", 0
_s395: db "'", 10, 0
_s396: db "assertation failed", 10, 0
_s397: db "inline functions cannot call themselves", 0
_s398: db "const functions cannot call non const functions", 0
_s399: db 27, "[1m", 27, "[31msrc/parser.stas:148:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s400: db "const functions can only invoke constant variables", 0
_s401: db 27, "[1m", 27, "[31msrc/parser.stas:1113:7: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s402: db "unknown function or variable", 0
_s403: db "no value on stack to consume for if statement", 0
_s404: db "a scope must come after an if statement", 0
_s405: db "cannot declare a while loop inside an existing while loop header", 0
_s406: db "not inside while loop body", 0
_s407: db "unreachable code", 0
_s408: db "no value on stack to consume for while header", 0
_s409: db "no value on stack to consume for else if statement", 0
_s410: db "unhandled data on the stack", 0
_s411: db "not enough values on the stack on function return", 0
_s412: db 27, "[1m", 27, "[31msrc/parser.stas:711:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s413: db "scope assertation failed, more values on the stack than expected (TODO: write count)", 0
_s414: db "scope assertation failed, less values on the stack than expected (TODO: write count)", 0
_s415: db "unexpected EOF when parsing else statement", 0
_s416: db "the stack must remain the same with single branches", 0
_s417: db 27, "[1m", 27, "[31msrc/parser.stas:827:10: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s418: db "the stack must remain the same each with else if branch", 0
_s419: db "unbalanced stack on both if and else branches, else has more than expected (TODO: write count)", 0
_s420: db "unbalanced stack on both if and else branches, else has less than expected (TODO: write count)", 0
_s421: db "block expects body, an unhandled elif or while keyword may be causing this", 0
_s422: db 27, "[1m", 27, "[31msrc/parser.stas:139:40: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s423: db 27, "[1m", 27, "[31msrc/parser.stas:1237:7: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented for const functions'", 10, 0
_s424: db "unhandled data on the stack for early return", 0
_s425: db "not enough values on the stack on early return", 0
_s426: db "a number must appear after the arrow assert operator", 0
_s427: db "a scope must come after the arrow assert operator", 0
_s428: db "unexpected EOF in assembly invocation", 0
_s429: db "rbx", 0
_s430: db "rcx", 0
_s431: db "rsi", 0
_s432: db "rdi", 0
_s433: db "r9", 0
_s434: db "r10", 0
_s435: db "r11", 0
_s436: db "r12", 0
_s437: db "r13", 0
_s438: db "r14", 0
_s439: db "r15", 0
_s440: db "rdx", 0
_s441: db "rax", 0
_s442: db "name is not a 64 bit register", 0
_s443: db "64 bit register is already on the argument list", 0
_s444: db "unexpected token, expected 64 bit register string", 0
_s445: db "unexpected EOF when parsing register list", 0
_s446: db "64 bit register is already on the return list", 0
_s447: db "new scope must proceed after assembly invocation", 0
_s448: db "unexpected EOF when parsing inline assembly body", 0
_s449: db "expected assembly string", 0
_s450: db 27, "[1m", 27, "[31msrc/asm.stas:35:36: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s451: db "cannot define a function inside a function", 0
_s452: db "must proceed after an if statement or chained `elif`", 0
_s453: db 27, "[1m", 27, "[31msrc/parser.stas:1330:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s454: db 27, "[1m", 27, "[31msrc/parser.stas:1764:28: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s455: db "unexpected EOF when parsing function, scopes may be unclosed", 0
_s456: db 27, "[1m", 27, "[31msrc/parser.stas:1774:6: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s457: db "no main function", 0
_s458: db "parsing took ", 0
_s459: db " functions, ", 0
_s460: db " labels", 10, 0
_s461: db "tok[]	data	inst", 10, 10, 0
_s462: db "	", 0
_s463: db "push_str", 0
_s464: db "push_num", 0
_s465: db "push_local_addr", 0
_s466: db "pop_local_stack_var", 0
_s467: db "push_local_stack_var", 0
_s468: db "push_global_var_name", 0
_s469: db "pop_global_stack_var", 0
_s470: db "push_global_stack_var", 0
_s471: db "push_argc", 0
_s472: db "push_argv", 0
_s473: db "do_cond_jmp", 0
_s474: db "do_jmp", 0
_s475: db "label", 0
_s476: db "fn_prelude", 0
_s477: db "fn_leave", 0
_s478: db "fn_call", 0
_s479: db "plus", 0
_s480: db "sub", 0
_s481: db "mul", 0
_s482: db "div", 0
_s483: db "mod", 0
_s484: db "inc", 0
_s485: db "dec", 0
_s486: db "divmod", 0
_s487: db "shr", 0
_s488: db "shl", 0
_s489: db "not", 0
_s490: db "b_and", 0
_s491: db "b_or", 0
_s492: db "b_not", 0
_s493: db "b_xor", 0
_s494: db "equ", 0
_s495: db "nequ", 0
_s496: db "gt", 0
_s497: db "lt", 0
_s498: db "gte", 0
_s499: db "lte", 0
_s500: db "s_gt", 0
_s501: db "s_lt", 0
_s502: db "s_gte", 0
_s503: db "s_lte", 0
_s504: db "push_envp", 0
_s505: db "c_fn_call", 0
_s506: db "asm_invoc", 0
_s507: db 27, "[1m", 27, "[31msrc/parserdefs.stas:273:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s508: db "dce pass started", 10, 0
_s509: db 27, "[1m", 27, "[31msrc/dce.stas:61:34: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s510: db 27, "[1m", 27, "[31msrc/dce.stas:21:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s511: db 27, "[1m", 27, "[31msrc/dce.stas:11:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s512: db 27, "[1m", 27, "[31msrc/dce.stas:142:43: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s513: db "dce took ", 0
_s514: db " used functions, of which ", 0
_s515: db " are eligible for inline", 10, 0
_s516: db " string literals", 10, 0
_s517: db ".tmp", 0
_s518: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:757:13: ", 27, "[39m", 27, "[22massertation failed, 'create_new_file_fd?: syscall `open` failed'", 10, 0
_s519: db "cannot create new file `", 0
_s520: db "` for writing", 10, 0
_s521: db "generating code from ", 0
_s522: db " IR instructions", 10, 0
_s523: db "use64", 0
_s524: db 27, "[1m", 27, "[31msrc/write.stas:16:26: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s525: db 27, "[1m", 27, "[31msrc/write.stas:9:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s526: db "format ELF64", 0
_s527: db "section '.text' executable align 16", 0
_s528: db "public _start", 0
_s529: db "public _exit", 0
_s530: db "extrn ", 0
_s531: db "format ELF64 executable ", 0
_s532: db "segment readable executable", 0
_s533: db "entry _start", 0
_s534: db "%line 0+0 '", 0
_s535: db "[BITS 64]", 0
_s536: db "[global _start]", 0
_s537: db "[section .text]", 0
_s538: db "[extern ", 0
_s539: db 27, "[1m", 27, "[31msrc/gen.stas:879:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s540: db "_start:", 0
_s541: db "	mov [_arg_p], rdi", 0
_s542: db "	mov [_arg_p], rsp", 0
_s543: db "	mov qword [_rs_p], _rs_top", 0
_s544: db "	mov rbp, rsp", 0
_s545: db "	mov rsp, [_rs_p]", 0
_s546: db "	call main", 0
_s547: db "	xor rdi, rdi", 0
_s548: db "_exit:", 0
_s549: db "	mov eax, 1", 0
_s550: db "	mov eax, 60", 0
_s551: db "	syscall", 0
_s552: db "	nop", 0
_s553: db 27, "[1m", 27, "[31msrc/x86.stas:323:29: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s554: db 27, "[1m", 27, "[31msrc/x86.stas:248:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s555: db "	push ", 0
_s556: db 27, "[1m", 27, "[31msrc/x86.stas:48:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s557: db 27, "[1m", 27, "[31msrc/x86.stas:207:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s558: db 27, "[1m", 27, "[31msrc/x86.stas:208:46: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s559: db 27, "[1m", 27, "[31msrc/x86.stas:254:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s560: db "	mov ", 0
_s561: db ", ", 0
_s562: db "%line ", 0
_s563: db "+0 '", 0
_s564: db 27, "[1m", 27, "[31msrc/gen.stas:180:30: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s565: db "public ", 0
_s566: db "_a", 0
_s567: db "_b", 0
_s568: db "_c", 0
_s569: db "_d", 0
_s570: db "_e", 0
_s571: db "_f", 0
_s572: db "_g", 0
_s573: db "	sub rsp, ", 0
_s574: db "	mov [_rs_p], rsp", 0
_s575: db "	mov rsp, rbp", 0
_s576: db "[35m", 0
_s577: db "	mov eax, 4", 0
_s578: db "	mov rdi, 2", 0
_s579: db "	mov rdx, ", 0
_s580: db "	mov rsi, _s", 0
_s581: db "	jmp ", 0
_s582: db "	add rsp, ", 0
_s583: db "	ret", 0
_s584: db "	call ", 0
_s585: db 27, "[1m", 27, "[31msrc/x86.stas:215:27: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s586: db "	pop ", 0
_s587: db "	test ", 0
_s588: db "	jnz ", 0
_s589: db "	mov edi, 2", 0
_s590: db "	mov rdi, 1", 0
_s591: db "	jmp _exit", 0
_s592: db "_s", 0
_s593: db "qword [_rs_p]", 0
_s594: db "	add ", 0
_s595: db ", qword [_rs_p]", 0
_s596: db "	mov qword [", 0
_s597: db " + ", 0
_s598: db "], ", 0
_s599: db "qword [", 0
_s600: db "]", 0
_s601: db "qword _g", 0
_s602: db "	mov [_g", 0
_s603: db ", _g", 0
_s604: db ", [_g", 0
_s605: db ", qword [_arg_p]", 0
_s606: db ", [", 0
_s607: db ", 8", 0
_s608: db "	lea ", 0
_s609: db " * 8 + 8]", 0
_s610: db "	jz ", 0
_s611: db "add", 0
_s612: db "imul", 0
_s613: db 27, "[1m", 27, "[31msrc/x86.stas:260:20: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s614: db 27, "[1m", 27, "[31msrc/x86.stas:406:18: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s615: db "	xor rdx, rdx", 0
_s616: db "	div ", 0
_s617: db "	inc ", 0
_s618: db "	dec ", 0
_s619: db "	shr ", 0
_s620: db ", cl", 0
_s621: db "	shl ", 0
_s622: db "	sete ", 0
_s623: db "bl", 0
_s624: db "cl", 0
_s625: db "sil", 0
_s626: db "dil", 0
_s627: db "r8b", 0
_s628: db "r9b", 0
_s629: db "r10b", 0
_s630: db "r11b", 0
_s631: db "r12b", 0
_s632: db "r13b", 0
_s633: db "r14b", 0
_s634: db "r15b", 0
_s635: db "dl", 0
_s636: db "al", 0
_s637: db 27, "[1m", 27, "[31msrc/x86.stas:156:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s638: db "and", 0
_s639: db "or", 0
_s640: db "	not ", 0
_s641: db "xor", 0
_s642: db "qword [rsp + ", 0
_s643: db "	add rsp, 8", 0
_s644: db "	xor ", 0
_s645: db "	cmp ", 0
_s646: db "	setne ", 0
_s647: db "	seta ", 0
_s648: db "	setb ", 0
_s649: db "	setae ", 0
_s650: db "	setbe ", 0
_s651: db "	setg ", 0
_s652: db "	setl ", 0
_s653: db "	setge ", 0
_s654: db "	setle ", 0
_s655: db "	mov byte [", 0
_s656: db "	mov word [", 0
_s657: db "bx", 0
_s658: db "cx", 0
_s659: db "si", 0
_s660: db "di", 0
_s661: db "r8w", 0
_s662: db "r9w", 0
_s663: db "r10w", 0
_s664: db "r11w", 0
_s665: db "r12w", 0
_s666: db "r13w", 0
_s667: db "r14w", 0
_s668: db "r15w", 0
_s669: db "dx", 0
_s670: db "ax", 0
_s671: db 27, "[1m", 27, "[31msrc/x86.stas:120:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s672: db "	mov dword [", 0
_s673: db "ebx", 0
_s674: db "ecx", 0
_s675: db "esi", 0
_s676: db "edi", 0
_s677: db "r8d", 0
_s678: db "r9d", 0
_s679: db "r10d", 0
_s680: db "r11d", 0
_s681: db "r12d", 0
_s682: db "r13d", 0
_s683: db "r14d", 0
_s684: db "r15d", 0
_s685: db "edx", 0
_s686: db "eax", 0
_s687: db 27, "[1m", 27, "[31msrc/x86.stas:84:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s688: db 27, "[1m", 27, "[31msrc/gen.stas:68:5: ", 27, "[39m", 27, "[22massertation failed, 'unimplemented'", 10, 0
_s689: db 27, "[1m", 27, "[31msrc/gen.stas:101:22: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s690: db "	and rax, 0xFF", 0
_s691: db "	and rax, 0xFFFF", 0
_s692: db 27, "[1m", 27, "[31msrc/asm.stas:23:24: ", 27, "[39m", 27, "[22massertation failed", 10, 0
_s693: db 27, "[1m", 27, "[31msrc/gen.stas:757:7: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s694: db "section '.rodata' align 8", 0
_s695: db "segment readable", 0
_s696: db "[section .rodata]", 0
_s697: db 27, "[1m", 27, "[31msrc/gen.stas:917:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s698: db ": db ", 0
_s699: db "0", 10, 0
_s700: db 34, 0
_s701: db ", ", 34, 0
_s702: db 34, ", ", 0
_s703: db ", 0", 10, 0
_s704: db "section '.bss' writeable align 8", 0
_s705: db "segment readable writeable", 0
_s706: db "[section .bss]", 0
_s707: db 27, "[1m", 27, "[31msrc/gen.stas:941:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s708: db ": rb ", 0
_s709: db ": resb ", 0
_s710: db 27, "[1m", 27, "[31msrc/gen.stas:956:8: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s711: db "_arg_p: rq 1", 0
_s712: db "_rs_p: rq 1", 0
_s713: db "_rs: rb ", 0
_s714: db "_arg_p: resq 1", 0
_s715: db "_rs_p: resq 1", 0
_s716: db "_rs: resb ", 0
_s717: db 27, "[1m", 27, "[31msrc/gen.stas:973:5: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s718: db "_rs_top:", 0
_s719: db "gen took ", 0
_s720: db "generated ", 0
_s721: db 27, "[1m", 27, "[31mstas.stas:496:38: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s722: db " KiBs of code", 10, 0
_s723: db " bytes of code", 10, 0
_s724: db "FATAL: Failed to close file descriptor", 10, 0
_s725: db "wrote code to `", 0
_s726: db "executing assembler backend `", 0
_s727: db 27, "[1m", 27, "[31mstas.stas:21:9: ", 27, "[39m", 27, "[22massertation failed, 'unreachable'", 10, 0
_s728: db ".o", 0
_s729: db "-m", 0
_s730: db "1048576", 0
_s731: db "PATH", 0
_s732: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:385:16: ", 27, "[39m", 27, "[22massertation failed, '", 34, "PATH", 34, " enviroment variable not found'", 10, 0
_s733: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:493:12: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `fork` invocation failed'", 10, 0
_s734: db "/dev/null", 0
_s735: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:499:57: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: opening `/dev/null` failed'", 10, 0
_s736: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:503:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stdout with `dup2`'", 10, 0
_s737: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:506:34: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: failed to clear stderr with `dup2`'", 10, 0
_s738: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:516:10: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `execve` invocation failed'", 10, 0
_s739: db 27, "[1m", 27, "[31mlib/stdlib/os.stas:523:16: ", 27, "[39m", 27, "[22massertation failed, 'execute_child?: `wait4` invocation failed'", 10, 0
_s740: db "execute_child?: child process was terminated by signal ", 0
_s741: db "Failed to execute process `", 0
_s742: db "`", 0
_s743: db "-O0", 0
_s744: db "-felf64", 0
_s745: db "-Fdwarf", 0
_s746: db "ld", 0
_s747: db "chmod", 0
_s748: db "+x", 0
_s749: db "backend took ", 0
_s750: db "created binary `", 0
_s751: db "execve binary `", 0
_s752: db "FATAL: Could not execve file", 10, 0
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
