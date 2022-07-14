section .bss
section .text
	nl_ch: db 10

global _start
section .text
	write:
		mov rdx, rsi
		mov rsi, rdi
		mov rax, 1 ; sys_write
		mov rdi, 1 ; stdout
		syscall
		ret
	uput:
		push rbp
		mov rbp, rsp
		mov rbx, rbp
		sub rsp, 20 
			; make space for 20 units
			; leave instruction handles the rest

		mov rcx, 0 ; str len
		test rdi, rdi
		je uput_zero

		mov rsi, 10
	uput_nextc:
		dec rbx
		
		mov rax, rdi        ; move to divide reg
		xor edx, edx        ; clear remainder reg
		div rsi
		mov rdi, rax        ; move out of divide reg

		add edx, 48         ; conv digit to ascii
		mov byte [rbx], dl
		inc rcx
		
		test rdi, rdi
		jne uput_nextc      ; while != 0
	uput_end:
		mov rdi, rbx
		mov rsi, rcx
		call write
		leave
		ret
	uput_zero:
		mov rcx, 1
		mov byte [rbx], '0'
		jmp uput_end
	newline:
		mov rdi, nl_ch
		mov rsi, 1
		call write
		ret
	_start:
		mov rdi, 173456789033
		call uput
		
		call newline

		mov rdi, 0
		call uput

		call newline
		
	exit:
		mov rax, 60
		mov rdi, 0
		syscall