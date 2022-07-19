; https://github.com/newtonsart/vscode-assembly
global _start

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

	call_func:
		push rbp
		mov rbp, rsp

		; - local var 0
		sub rsp, 8 
		mov qword [rbp-8], 0
		; - local end

		; mov qword [rbp-8], rdi
		; push 5
		; --- RDI is overwritten!

		mov qword [rbp-8], rdi
		push 5
		; --- right way!

		mov rdi, qword [rbp-8]
		call exit

		pop rbp
		ret

	; START
	_start:
		mov rdi, 15
		call call_func

		mov rdi, 0
		call exit

	; nasm -felf64 local_stack.asm && ld local_stack.o && ./a.out || echo $?