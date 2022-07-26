set pagination off
set logging file gdb.output
set logging on

define hook-nexti
    ref
end
lay regs
b main

run

display *(unsigned long *)($rsp)
lay asm
