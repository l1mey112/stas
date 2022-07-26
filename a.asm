[BITS 64]
global _start
section .rodata
	lit_BLBYOTECTDJU: db '', 0x0A, 0
section .text
write:                            ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'buf'
	mov qword [rbp - 16], rsi     ; | ARG VAR STACK INIT 'count'
	sub rsp, 16                   ; | CREATE STACK FRAME
	push qword 1                  ; <- LITERAL NUMBER
	push qword 1                  ; <- LITERAL NUMBER
	push qword [rbp - 8]          ; <- PUSH ARG 'buf'
	push qword [rbp - 16]         ; <- PUSH ARG 'count'
	pop rdx                       ; ~ INTRINSIC - SYSCALL3
	pop rsi
	pop rdi
	pop rax
	syscall
	push rax
	add rsp, 8                    ; ~ STACK - DROP
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
endl:                             ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	push qword lit_BLBYOTECTDJU   ; <- STRING VAR
	push qword 1                  ; <- LITERAL NUMBER

	pop rsi                       ; + INIT FUNCTION ARGS

	pop rdi                       ; + INIT FUNCTION ARGS
	call write                    ; + CALL FUNCTION
	pop rbp
	ret                           ; | RETURN TO CALLER
strlen:                           ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'buf'
	sub rsp, 8                    ; | CREATE STACK FRAME
	push qword [rbp - 8]          ; <- PUSH ARG 'buf'
while_CCLHJAQVNXHR_begin:         ; <> WHILE - START
	pop rdi                       ; ~ STACK - DUPLICATE
	push rdi
	push rdi
	xor rax,rax                   ; INTRINSIC - DEREF U8
	pop rdi
	mov al, byte [rdi]
	push rax
	push qword 0                  ; <- LITERAL NUMBER
	pop rsi                       ; ~ CONDITIONAL - NOT EQUAL
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setne al
	push rax
	pop rax                       ; <> WHILE - CHECK CONDITIONAL
	test al, al
	je while_CCLHJAQVNXHR_end
while_CCLHJAQVNXHR:               ; <> WHILE - BODY
	pop rdi                       ; ~ OPERATOR - INCREMENT
	inc rdi
	push rdi
	jmp while_CCLHJAQVNXHR_begin
while_CCLHJAQVNXHR_end:           ; <> WHILE - END
	push qword [rbp - 8]          ; <- PUSH ARG 'buf'
	pop rdi                       ; ~ OPERATOR - SUBTRACT
	pop rsi
	sub rsi, rdi
	push rsi
	pop rax                       ; | RETURN VALUE FUNCTION
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
print:                            ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'buf'
	sub rsp, 8                    ; | CREATE STACK FRAME
	push qword [rbp - 8]          ; <- PUSH ARG 'buf'
	push qword [rbp - 8]          ; <- PUSH ARG 'buf'

	pop rdi                       ; + INIT FUNCTION ARGS
	call strlen                   ; + CALL FUNCTION
	push rax                      ; + RETURN VALUE FUNCTION

	pop rsi                       ; + INIT FUNCTION ARGS

	pop rdi                       ; + INIT FUNCTION ARGS
	call write                    ; + CALL FUNCTION
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
println:                          ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'buf'
	sub rsp, 8                    ; | CREATE STACK FRAME

	pop rdi                       ; + INIT FUNCTION ARGS
	call print                    ; + CALL FUNCTION
	call endl                     ; + CALL FUNCTION
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
memset:                           ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'ptr'
	mov qword [rbp - 16], rsi     ; | ARG VAR STACK INIT 'val'
	mov qword [rbp - 24], rdx     ; | ARG VAR STACK INIT 'len'
	sub rsp, 24                   ; | CREATE STACK FRAME
	push qword [rbp - 8]          ; <- PUSH ARG 'ptr'
while_DNBEJYMHWYJW_begin:         ; <> WHILE - START
	pop rdi                       ; ~ STACK - DUPLICATE
	push rdi
	push rdi
	push qword [rbp - 8]          ; <- PUSH ARG 'ptr'
	push qword [rbp - 24]         ; <- PUSH ARG 'len'
	pop rdi                       ; ~ OPERATOR - ADD
	pop rsi
	add rsi, rdi
	push rsi
	pop rsi                       ; ~ CONDITIONAL - LESS THAN
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	setb al
	push rax
	pop rax                       ; <> WHILE - CHECK CONDITIONAL
	test al, al
	je while_DNBEJYMHWYJW_end
while_DNBEJYMHWYJW:               ; <> WHILE - BODY
	pop rdi                       ; ~ STACK - DUPLICATE
	push rdi
	push rdi
	push qword [rbp - 16]         ; <- PUSH ARG 'val'
	pop rax                       ; INTRINSIC - WRITE PTR U8
	pop rdi
	mov byte [rdi], al
	pop rdi                       ; ~ OPERATOR - INCREMENT
	inc rdi
	push rdi
	jmp while_DNBEJYMHWYJW_begin
while_DNBEJYMHWYJW_end:           ; <> WHILE - END
	add rsp, 8                    ; ~ STACK - DROP
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
uput:                             ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'num'
	sub rsp, 44                   ; | CREATE STACK FRAME
	mov qword [rbp - 16], 0       ; VAR STACK INIT 'pos'
	mov qword [rbp - 24], 0       ; VAR STACK INIT 'len'
if_ELFJEVXJVVYH_begin:            ; ?? IF - START
	push qword [rbp - 8]          ; <- PUSH ARG 'num'
	push qword 0                  ; <- LITERAL NUMBER
	pop rsi                       ; ~ CONDITIONAL - EQUAL
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	sete al
	push rax
	pop rax                       ; ?? IF - CHECK CONDITIONAL
	test al, al
	je if_ELFJEVXJVVYH_end
if_ELFJEVXJVVYH_body:             ; ?? IF - BODY
	mov rax, rbp
	sub rax, 44
	push rax                      ; <- PUSH BUFFER PTR 'buf'
	push qword 48                 ; <- LITERAL NUMBER
	pop rax                       ; INTRINSIC - WRITE PTR U8
	pop rdi
	mov byte [rdi], al
	mov rax, rbp
	sub rax, 44
	push rax                      ; <- PUSH BUFFER PTR 'buf'
	push qword 1                  ; <- LITERAL NUMBER

	pop rsi                       ; + INIT FUNCTION ARGS

	pop rdi                       ; + INIT FUNCTION ARGS
	call write                    ; + CALL FUNCTION
	pop rax                       ; | EARLY RETURN VALUE
	leave                         ; | 
	ret                           ; | EARLY RETURN TO CALLER
if_ELFJEVXJVVYH_end:              ; ?? IF - END
	mov rax, rbp
	sub rax, 44
	push rax                      ; <- PUSH BUFFER PTR 'buf'
	push qword 20                 ; <- LITERAL NUMBER
	pop rdi                       ; ~ OPERATOR - ADD
	pop rsi
	add rsi, rdi
	push rsi
	pop qword [rbp - 16]          ; POP INTO VAR 'pos'
	push qword [rbp - 8]          ; <- PUSH ARG 'num'
while_FYUITPCAGCSW_begin:         ; <> WHILE - START
	pop rdi                       ; ~ STACK - DUPLICATE
	push rdi
	push rdi
	push qword 0                  ; <- LITERAL NUMBER
	pop rsi                       ; ~ CONDITIONAL - GREATER THAN
	pop rdi
	xor rax, rax
	cmp rdi, rsi
	seta al
	push rax
	pop rax                       ; <> WHILE - CHECK CONDITIONAL
	test al, al
	je while_FYUITPCAGCSW_end
while_FYUITPCAGCSW:               ; <> WHILE - BODY
	push qword [rbp - 16]         ; <- PUSH VAR 'pos'
	pop rdi                       ; ~ OPERATOR - DECREMENT
	dec rdi
	push rdi
	pop qword [rbp - 16]          ; POP INTO VAR 'pos'
	push qword 10                 ; <- LITERAL NUMBER
	pop rdi                       ; ~ OPERATOR - DIVIDE AND MODULO
	pop rax
	xor rdx, rdx
	div rdi
	push rax
	push rdx
	push qword 48                 ; <- LITERAL NUMBER
	pop rdi                       ; ~ OPERATOR - ADD
	pop rsi
	add rsi, rdi
	push rsi
	push qword [rbp - 16]         ; <- PUSH VAR 'pos'
	pop rdi                       ; ~ STACK - SWAP
	pop rsi
	push rdi
	push rsi
	pop rax                       ; INTRINSIC - WRITE PTR U8
	pop rdi
	mov byte [rdi], al
	push qword [rbp - 24]         ; <- PUSH VAR 'len'
	pop rdi                       ; ~ OPERATOR - INCREMENT
	inc rdi
	push rdi
	pop qword [rbp - 24]          ; POP INTO VAR 'len'
	jmp while_FYUITPCAGCSW_begin
while_FYUITPCAGCSW_end:           ; <> WHILE - END
	add rsp, 8                    ; ~ STACK - DROP
	push qword [rbp - 16]         ; <- PUSH VAR 'pos'
	push qword [rbp - 24]         ; <- PUSH VAR 'len'

	pop rsi                       ; + INIT FUNCTION ARGS

	pop rdi                       ; + INIT FUNCTION ARGS
	call write                    ; + CALL FUNCTION
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
uputln:                           ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	mov qword [rbp - 8], rdi      ; | ARG VAR STACK INIT 'num'
	sub rsp, 8                    ; | CREATE STACK FRAME
	push qword [rbp - 8]          ; <- PUSH ARG 'num'

	pop rdi                       ; + INIT FUNCTION ARGS
	call uput                     ; + CALL FUNCTION
	call endl                     ; + CALL FUNCTION
	leave                         ; | RELEASE STACK FRAME
	ret                           ; | RETURN TO CALLER
main:                             ; ----- FUNCTION -----
	push rbp
	mov rbp, rsp
	pop rbp
	ret                           ; | RETURN TO CALLER
_start:
	call main
	mov rdi, 0
	mov rax, 60
	syscall
