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
	println:
		push rdi
		call strlen
		pop rdi
		mov rsi, rax
		call write
		sub rsp, 1
		mov byte [rsp], 10
		mov rdi, rsp
		mov rsi, 1
		call write
		add rsp, 1
		ret
	_start:
		pop rbx
	.lp:
		test rbx, rbx
		je .done
		
		pop rdi
		call println

		dec rbx
		jmp .lp
	.done:
		mov rax, 60
		mov rdi, 0
		syscall

	; nasm -felf64 printargs.asm && ld printargs.o && ./a.out