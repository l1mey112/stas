[BITS 64]
global _start
; stas panic: panic.asm:2232:2
;        msg: Assertation failed.
section .rodata:
	lit_aaaa: db "stas panic: panic.asm:2232:2",10,"       msg: entrirepanicmessage!",10,0
	lit_aaab: db "panic.asm: panic!",10,0
section .text
;_panic:
;	push rdi
;	push rsi
;	push rdx
;	push rcx
;	mov rdx, 12
;	mov rsi, .msg
;	mov rax, 1
;	mov rdi, 2
;	syscall
;	pop rdx
;	pop rsi
;	mov rax, 1
;	mov rdi, 2
;	syscall
;	pop rdx
;	pop rsi
;	mov rax, 1
;	mov rdi, 2
;	syscall
;	mov rax, 60
;	mov rdi, 1
;	syscall
;_panic.msg: db "stas fatal! "
;_start:
;	push 0
;
;	pop rax
;	test al, al
;	jne .next_0
;	mov rdi, lit_aaaa
;	mov rsi, 14
;	mov rdx, lit_aaab
;	mov rcx, 18
;	call _panic
_panic:
	mov rdx, rsi
	mov rsi, rdi
	mov rax, 1 ; sys_write
	mov rdi, 2 ; stderr
	syscall
	mov rdi, 1
	jmp _exit
_start:
	push 0
	pop rax
	test al, al
	jne .next_0
	mov rdi, lit_aaaa
	mov rsi, 62
	jmp _panic
.next_0:
	nop
	xor rdi, rdi
_exit:
	mov rax, 60
	syscall

; nasm -felf64 panic.asm -o panic.o && ld panic.o -o panic && ./panic
