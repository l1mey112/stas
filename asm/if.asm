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

		if_sdsdsdsds_begin: ; while
			pop rax
			test al, al
			je if_sdsdsdsds_else
		if_sdsdsdsds_body: ; do
			
			; stuff

			jmp if_sdsdsdsds_end
		if_sdsdsdsds_else:

		if_sdsdsdsds_end:

		; -----

		if_sdsdsdsds_begin: ; while
			pop rax
			test al, al
			je if_sdsdsdsds_end
		if_sdsdsdsds_body: ; do
			; stuff
		if_sdsdsdsds_end:

		mov rdi, 0
		call exit

	; test reg, reg is perfectly equivalent to cmp reg, 0