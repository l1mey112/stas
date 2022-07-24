; -------- print_loop --------
global _start
section .text
print_loop:
        push rbp
        mov rbp, rsp
        mov qword [rbp - 8], rdi ; arg init 'count'
        push qword [rbp - 8] ; push arg 'count'
while_cclhjaqvnxhr_begin:
        pop rdi
        push rdi
        push rdi
        push qword 0
        pop rsi ; >
        pop rdi
        xor rax, rax
        cmp rdi, rsi
        setg al
        push rax
        pop rax ; while conditional
        test al, al
        je while_cclhjaqvnxhr_end
while_cclhjaqvnxhr:
     
	

    pop rdi
    dec rdi
    push rdi
	jmp while_cclhjaqvnxhr_begin
while_cclhjaqvnxhr_end:
	add rsp, 8 ; MAKE SURE TO DROP OFF STACK
	           ; STACK SIM IS PARAMOUNT HOLY SHIT
    pop rbp
    ret

; -------- END --------
; -------- main --------
main:
    push rbp
    mov rbp, rsp
    ;sub rsp, 0
    push qword 5
	pop qword rdi
    call print_loop
    ;leave
	pop rbp
    ret

; -------- END --------


_start:
	call main

	mov rdi, 0
	mov rax, 60
	syscall