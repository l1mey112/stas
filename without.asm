use64
format ELF64 executable
segment readable executable
entry _start
_start:
    mov [_arg_p], rsp
    mov qword [_rs_p], _rs_top
    mov rbp, rsp
    mov rsp, [_rs_p]
    call __fn_2427
    xor rdi, rdi
_exit:
    mov eax, 60
    syscall
    nop
__fn_1935:
    sub rsp, 44
    mov [_rs_p], rsp
    mov rsp, rbp
    pop rbx
    pop rcx
    mov rsi, qword [_rs_p]
    mov qword [rsi + 0], rcx
    mov rsi, rbx
    mov rdi, 0
    xor rax, rax
    cmp rsi, rdi
    sete al
    push rbx
    test al, al
    jz .11
    add rsp, 8
    mov rbx, qword [_rs_p]
    add rbx, 8
    mov rcx, 48
    mov rax, rcx
    mov byte [rbx], al
    mov rbx, qword [_rs_p]
    mov rcx, qword [rbx + 0]
    mov rbx, qword [_rs_p]
    add rbx, 8
    mov rsi, 1
    push rcx
    push rbx
    push rsi
    mov rbx, 1
    mov rax, rbx
    pop rdx
    pop rsi
    pop rdi
    syscall
    mov rbp, rsp
    mov rsp, [_rs_p]
    add rsp, 44
    ret
.11:
    mov rbx, 0
    mov rcx, qword [_rs_p]
    mov qword [rcx + 36], rbx
    mov rcx, qword [_rs_p]
    add rcx, 8
    mov rsi, 20
    add rcx, rsi
    mov rsi, qword [_rs_p]
    mov qword [rsi + 28], rcx
.13:
    pop rbx
    mov rcx, rbx
    mov rsi, 0
    xor rax, rax
    cmp rcx, rsi
    seta al
    push rbx
    test al, al
    jz .14
    mov rbx, qword [_rs_p]
    mov rcx, qword [rbx + 28]
    dec rcx
    mov rbx, qword [_rs_p]
    mov qword [rbx + 28], rcx
    mov rbx, 10
    pop rax
    xor rdx, rdx
    div rbx
    mov rbx, 48
    add rdx, rbx
    mov rbx, qword [_rs_p]
    mov rsi, qword [rbx + 28]
    mov rbx, rax
    mov rax, rdx
    mov byte [rsi], al
    mov rsi, qword [_rs_p]
    mov rdi, qword [rsi + 36]
    inc rdi
    mov rsi, qword [_rs_p]
    mov qword [rsi + 36], rdi
    push rbx
    jmp .13
.14:
    add rsp, 8
    mov rbx, qword [_rs_p]
    mov rcx, qword [rbx + 0]
    mov rbx, qword [_rs_p]
    mov rsi, qword [rbx + 28]
    mov rbx, qword [_rs_p]
    mov rdi, qword [rbx + 36]
    push rcx
    push rsi
    push rdi
    mov rbx, 1
    mov rax, rbx
    pop rdx
    pop rsi
    pop rdi
    syscall
    mov rbp, rsp
    mov rsp, [_rs_p]
    add rsp, 44
    ret
__fn_2365:
    mov [_rs_p], rsp
    mov rsp, rbp
    pop rbx
    mov rcx, rbx
    push rbx
    push rcx
.39:
    pop rbx
    mov rcx, rbx
    xor rax, rax
    mov al, [rcx]
    mov rcx, 0
    mov rsi, rax
    xor rax, rax
    cmp rsi, rcx
    setne al
    push rbx
    test al, al
    jz .40
    pop rbx
    inc rbx
    push rbx
    jmp .39
.40:
    pop rbx
    pop rcx
    sub rbx, rcx
    push rbx
    mov rbp, rsp
    mov rsp, [_rs_p]
    ret
__fn_2396:
    mov [_rs_p], rsp
    mov rsp, rbp
    pop rbx
    mov rcx, rbx
    mov rsi, qword [_arg_p]
    mov rsi, [rsi]
    xor rax, rax
    cmp rcx, rsi
    setae al
    push rbx
    test al, al
    jz .44
    add rsp, 8
    mov rbx, 0
    mov rcx, 0
    push rbx
    push rcx
    mov rbp, rsp
    mov rsp, [_rs_p]
    ret
.44:
    mov rbx, 8
    pop rcx
    imul rcx, rbx
    mov rbx, qword [_arg_p]
    add rbx, 8
    add rcx, rbx
    mov rcx, [rcx]
    mov rbx, rcx
    push rcx
    push rbx
    mov rbp, rsp
    mov rsp, [_rs_p]
    call __fn_2365
    mov [_rs_p], rsp
    mov rsp, rbp
    mov rbp, rsp
    mov rsp, [_rs_p]
    ret
__fn_2427:
    mov [_rs_p], rsp
    mov rsp, rbp
    mov rbx, 0
    push rbx
.46:
    pop rbx
    mov rcx, rbx
    mov rsi, qword [_arg_p]
    mov rsi, [rsi]
    xor rax, rax
    cmp rcx, rsi
    setb al
    push rbx
    test al, al
    jz .47
    mov rbx, _slit_9
    mov rcx, 9
    push rbx
    push rcx
    mov rbx, 1
    pop rcx
    pop rsi
    push rbx
    push rsi
    push rcx
    mov rbx, 1
    mov rax, rbx
    pop rdx
    pop rsi
    pop rdi
    syscall
    pop rbx
    mov rcx, rbx
    push rbx
    push rcx
    mov rbx, 1
    pop rcx
    push rbx
    push rcx
    mov rbp, rsp
    mov rsp, [_rs_p]
    call __fn_1935
    mov [_rs_p], rsp
    mov rsp, rbp
    mov rbx, _slit_10
    mov rcx, 2
    push rbx
    push rcx
    mov rbx, 1
    pop rcx
    pop rsi
    push rbx
    push rsi
    push rcx
    mov rbx, 1
    mov rax, rbx
    pop rdx
    pop rsi
    pop rdi
    syscall
    pop rbx
    mov rcx, rbx
    push rbx
    push rcx
    mov rbp, rsp
    mov rsp, [_rs_p]
    call __fn_2396
    mov [_rs_p], rsp
    mov rsp, rbp
    mov rbx, 1
    pop rcx
    pop rsi
    push rbx
    push rsi
    push rcx
    mov rbx, 1
    mov rax, rbx
    pop rdx
    pop rsi
    pop rdi
    syscall
    mov rbx, 1
    mov rcx, _slit_0
    mov rsi, 1
    push rbx
    push rcx
    push rsi
    mov rbx, 1
    mov rax, rbx
    pop rdx
    pop rsi
    pop rdi
    syscall
    pop rbx
    inc rbx
    push rbx
    jmp .46
.47:
    add rsp, 8
    mov rbp, rsp
    mov rsp, [_rs_p]
    ret
segment readable
_slit_0: db 10, 0
_slit_1: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 115, 116, 97, 116, 32, 116, 104, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_2: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 111, 112, 101, 110, 32, 102, 105, 108, 101, 32, 39, 0
_slit_3: db 39, 10, 0
_slit_4: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 109, 109, 97, 112, 32, 102, 105, 108, 101, 32, 39, 0
_slit_5: db 39, 10, 0
_slit_6: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 99, 108, 111, 115, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_7: db 116, 114, 117, 101, 0
_slit_8: db 102, 97, 108, 115, 101, 0
_slit_9: db 65, 114, 103, 117, 109, 101, 110, 116, 32, 0
_slit_10: db 58, 32, 0
segment readable writable
_global___curbrk: rb 8
_arg_p: rq 1
_rs_p: rq 1
_rs: rb 65536
_rs_top:
