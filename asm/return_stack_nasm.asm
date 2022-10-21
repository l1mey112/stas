BITS 64
global _start

section .text

_start:
	mov qword [_rs_p], _rs_top
	mov rbp, rsp
	mov rsp, [_rs_p]
    call _addr_0
	xor rdi, rdi
_exit:
    mov eax, 60
    syscall
_addr_0:
	; fn_prelude
	mov [_rs_p], rsp
	mov rsp, rbp

	; fn_call
	mov rbp, rsp
	mov rsp, [_rs_p]
	call _addr_1
	mov [_rs_p], rsp
	mov rsp, rbp

;	pop rax
;	db 0xcc ; gdb 'i reg' -> rax == 5

	; fn_leave
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
_addr_1:
	; fn_prelude
	mov [_rs_p], rsp
	mov rsp, rbp

	push 5

	; fn_leave
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret

section .bss

_rs_p: resq 1
_rs: resb 65536
_rs_top: