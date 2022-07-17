#include<unistd.h>

const char * string = "This is a null terminated string!\n";

/* int strlen(char * input){
    int count = 0;
    while (input[count] != 0){
        count += 1;
    }
    return count;
} */

/* int strlen(const char * ptr){
    int count = 0;
    while (*ptr++){
        count++;
    }
    return count;
} */

int main(){
    write(1, string, strlen(string));
    return 0;
}

/* strlen:
    mov rdx, 0            ; int count = 0;
    jmp strloop 
stradd:
    add rdx, 1            ; count++;
    add rdi, 1            ; ptr++;
strloop:
    movzx eax, byte [rdi] ; | *ptr
    test al, al           ; | *ptr != 0
    jne stradd            ; | while (*ptr != 0)
    mov rax, rdx          ; return count;
    ret */

/* int strlen(const char * ptr){
    strlen: ────────────────┐
        int count = 0;      │
        goto strloop;       │
    stradd: <───────────────┼──────────┐
        count++;            │          │
        ptr++;              │          │
    strloop: <──────────────┘          │
        if (*ptr != 0) {goto stradd; ──┘}
        return count;
} */

/* 

Here's an equivalent simple C program to my assembly solution:

```c
#include<unistd.h> // for write system call wrapper function

const char * string = "This is a null terminated string!\n";

int strlen(const char * ptr){
	int count = 0;
	while (*ptr++){
		count++;
	}
	return count;
}

int main(){
	write(1, string, strlen(string)); // write system call
	return 0;
}
``` */