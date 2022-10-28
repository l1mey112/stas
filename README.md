# `stas - st(ack) as(sembler)` 

A stack based compiled programming language.

```
include 'std.stas'

fn main 0 0 {
    'Hello world!\n' puts
}
```

It has evolved and evolved over time as I learnt compiler theory from the ground up. About 3 complete rewrites have taken place. The syntax and structure is settled and work is being done to write the compiler in itself. The current compiler is written in the V programming language.

This is my first serious programming langauge, and it's gotta be good.

Follow the initial journey with all of the guesswork on my blog [`tags/stas`](https://blog.l-m.dev/tags/stas/), all of that figuring out got to the initial V version of the compiler.

## programming in stas

As you know, concatenative stack based programming. Think forth. Programmed in python all your life? Don't know forth? Gloss over these sources.

- [Starting FORTH Part 1 - Forth Inc](https://www.forth.com/starting-forth/1-forth-stacks-dictionary/)
- [Stack-oriented programming - Wikipedia](https://en.wikipedia.org/wiki/Stack-oriented_programming)
- [Concatenative language wiki](https://concatenative.org/wiki/view/Front%20Page)
- [Concatenative programming language - Wikipedia](https://en.wikipedia.org/wiki/Concatenative_programming_language)
- [Reverse Polish notation - Wikipedia](https://en.wikipedia.org/wiki/Reverse_Polish_notation)

Comments are denoted with semicolons. Checkout the `files/` directory for examples, it contains implementations of rule 110, rule 90 and rule 30, among others and growing.

TODO: Guide?

## spec

It generates optimised x86_64 assembly for systems using the Linux kernel. It interfaces with the operating system kernel through syscalls and not through libc. The compiler only emits statically linked binaries for now. This means limited portability among other operating systems and architectures.

```
  (text)     |  (tokens)         (IR)            (assembly)      |  (ELF)
             |                                                   |
             |             /-- parser  --\   /--- codegen ----\  |
 input.stas ->- scanning - |             | - |                | ->- fasm
             |             \-- checker --/   \- optimisation -/  |
```

The assembly dialect is Intel, made to be compiled with the fasm, the flat assembler.

## debugging

Besides the compile time checks, it supports breakpoints with the `_breakpoint` keyword, coupled with some scripts inside GDB it allows you to easily inspect the program at runtime.

```
fn main 0 0 {
    0 while dup 10 < {
        _breakpoint
        ++
    }
    drop
}
```

```
./stasgdb while.stas
flat assembler  version 1.73.30  (1048576 kilobytes memory, x64)
3 passes, 1000 bytes.
Reading symbols from ./a.out...
(No debugging symbols found in ./a.out)
Catchpoint 1 (signal SIGTRAP)

$1 = 0
$2 = 1
$3 = 2
$4 = 3
$5 = 4
$6 = 5
$7 = 6
$8 = 7
$9 = 8
$10 = 9
```

It also supports scope guards.

```
const value { 88 77 + }

fn function_a 0 1 {
    value
}

fn main 0 0 {
    -> 2 {
        3 3
    }

    drop drop

    -> 0 {
        function_a ; <- main.stas:13:9: backtrace
    }

    function_a 165 = assert
    function_a 166 = assert -> "assert message"
}
```

```
main.stas:12:8: scope assertation failed, 1 more value on the stack than expected
main.stas:13:9: backtrace
```

Scope guards assist in debugging, just by skimming a program you know what scopes are self contained and what ones arent. Runtime assertations are also supported and an additional message can be attached. Assertations can also be evaluated at compile time statically.
