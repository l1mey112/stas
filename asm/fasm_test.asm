use64
format ELF64 executable
segment readable executable
entry _start
_start:
	test rax, rax

	xor rdi, rdi
_exit:
    mov eax, 60
    syscall