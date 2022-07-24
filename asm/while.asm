; https://github.com/newtonsart/vscode-assembly
global _start
	hello_str: db "Hello!",10,0
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
	; START
	_start:
		; 4
		; while @ 0 > do
		; 	"Loop!" println
		; 	--
		; end

		push 4 ; 10
		while_sdsdsdsds_begin: ; while
			pop rdi
			push rdi
			push rdi ; @ dup

			push 0

			pop rsi
			pop rdi
			xor rax, rax
			cmp rdi, rsi
			setg al
			push rax

			pop rax
			test al, al
			je while_sdsdsdsds_end
		while_sdsdsdsds: ; do
			push hello_str
			pop rdi
			call print

			pop rdi
			dec rdi
			push rdi
			jmp while_sdsdsdsds_begin
		while_sdsdsdsds_end:

		mov rdi, 0
		call exit

	; test reg, reg is perfectly equivalent to cmp reg, 0