format ELF64 executable
entry _start

segment readable executable

_start:
    mov rax, 1 
    mov rdi, 1
    mov rsi, string
    mov rdx, 13 
    syscall
    mov rax, 60
    xor rdi, rdi
    syscall

segment readable writeable
string db "Hello world!",10
