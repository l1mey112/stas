; https://github.com/newtonsart/vscode-assembly
global _start

section .data
	string: db "null terminated string!",10,0
		; 10 is the newline character

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
	_start:
		mov rdi, string
		call strlen ; get length of string in rax

		mov rdi, string
		mov rsi, rax
		call write ; call with string and string length
	exit:
		mov rax, 60
		mov rdi, 0
		syscall