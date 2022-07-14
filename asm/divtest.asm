global _start

section .text
	_start:
		mov rdi, 15733
		mov rsi, 10
	loop:
		mov rax, rdi ; move to divide reg
        xor edx, edx ; clear remainder reg
        div rsi
        mov rdi, rax ; move out of divide reg

		test rdi, rdi
		jne loop ; while != 0
	exit:
		mov rax, 60
		mov rdi, 0
		syscall

;	uput:
;		push rbp
;        mov rbp, rsp
;		; largest u64 -> 18446744073709551615, 20 long + 1 null
;		sub rbp, 20 ; 20 char buffer
;		mov rbx, rbp
;
;		mov rax, rdi
;		test rdi, rdi
;		je uput_is_zero
;
;		mov r12, 0
;	uput_next_char:
;		mov byte [rbx], 'a'
;		inc r12
;		inc rbx
;		cmp r12, 10
;		jne uput_next_char
;	uput_write:
;		; write ptr
;		mov rdi, rbp
;		mov rsi, r12
;		call write
;		pop rbp
;        ret
;	uput_is_zero:
;		mov r12, 1
;		mov byte [rbx], '0'
;		jmp uput_write