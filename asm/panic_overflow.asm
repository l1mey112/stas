; https://github.com/newtonsart/vscode-assembly
global _start

;section .rodata
;	panic_string: db "integer overflow",10,0

section .text
	strlen:
		mov rdx, 0
		jmp strloop 
		jmp strloop 
	stradd:
		add rdx, 1 ; counts len
		add rdi, 1 
	strloop:
		movzx eax, byte [rdi]
		test al, al
		jne stradd
		mov rax, rdx
		ret
	write:
		mov rdx, rsi
		mov rsi, rdi
		mov rax, 1 ; sys_write
		mov rdi, 1 ; stdout
		syscall
		ret
	print:
		mov rbx, rdi
		call strlen
		mov rdi, rbx
		mov rsi, rax
		call write
		ret
	exit:
		mov rax, 60
		syscall
	panic_arith_str: db "unsigned integer overflow",10,0
	panic_arith:
		mov rdi, panic_arith_str
		call print
		mov rdi, 1
		call exit

	square:
		imul rdi, rdi
		jc panic_arith
		mov rax, rdi
		ret

	; START
	_start:
		mov rdi, 0xFFFFFFF
		call square

		mov rdi, 5
		lea rax, [rel exit]
		call rax

	; for signed values   -> check for overflow flag
	; for unsigned values -> check for carry flag