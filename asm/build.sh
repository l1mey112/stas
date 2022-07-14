nasm -g -F stabs -felf64 -o put_unsigned.o put_unsigned.asm
# with -F stabs, it works!
ld put_unsigned.o -o put_unsigned
./put_unsigned
#gdb put_unsigned

#rm put_unsigned put_unsigned.o