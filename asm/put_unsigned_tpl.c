#include<stdint.h>
#include<stdio.h>

void main(){
	uint64_t num = 1255556;
	char buf[21];
	
	int idx = 0;
	while (num){
		buf[idx] = num % 10 + 48;
		num /= 10;
		idx++;
	}
	buf[idx] = 0;
	printf("%s\n",buf);
}