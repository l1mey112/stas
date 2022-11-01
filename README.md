# `stas - st(ack) as(sembler)` 

A stack based compiled programming language.

```
include 'std.stas'

fn main 0 0 {
    'Hello world!\n' puts
}
```

A concatenative stack based compiled programming language, stas is a programming language that has evolved as my skills with compiler theory grew. ~~The syntax and structure is settled and work is being done to write the compiler in itself. The current compiler is written in the V programming language.~~ The current compiler is written in stas. stas as a language has been successfully selfhosted, a long time goal of mine.

Follow the initial journey with all of the guesswork on my blog at [`tags/stas`](https://blog.l-m.dev/tags/stas/), these show the small steps taken to achieve initial V version of the compiler. The V source code of the bootstrap compiler is in [a-different-branch](https://github.com/l1mey112/stas/tree/0.1.0-v-compiler).

## bootstrapping stas

[The-stas-compiler-is-written-in-stas.](./stas.stas) To avoid the chicken or the egg scenario, precompiled assembly files reside in the [bootstrap/](bootstrap/) directory.

Use FASM, the [flat-assembler](https://flatassembler.net/), to compile the binaries. In the future, the NASM assembler backend will be avaliable.

```sh
$ fasm -m 1048576 bootstrap/x86-64_linux.fasm.asm stas
$ ./stas stas.stas -o stas
$ ./stas stas.stas -o stas
$ ./stas stas.stas -o stas
$ ./stas stas.stas -o stas
$ ./stas stas.stas -o stas
$ ./stas stas.stas -o stas
$ ./stas stas.stas -o stas
  ....
  ....
```

```
$ ./stas -h
stas 0.1.0 Copyright (C) 2022  l-m.dev

USAGE: ./stas [OPTIONS] [FILE]

  -o <output>    Specify '-o -' to dump assembly to stdout
  -g             Debug symbols. Most effective with the `nasm` backend
  -b <backend>   Assemblers `nasm` or `fasm` as compiler backend
  -h             Show this message
```
(The NASM backend and debug symbols are a work in progress.)

## spec

It generates optimised x86-64 assembly for systems using the Linux kernel. It interfaces with the operating system kernel through syscalls and not through libc. The compiler only emits statically linked binaries for now. This means limited portability among other operating systems and architectures.

The stas compiler generates decently optimised assembly by converting stack based operations to ones that work register to register. It does this through the [register-allocator](./src/x86.stas) present in the compiler.

A dead code elimination pass takes place between the parser and code generation passes. Here, it is also determined which functions will be automatically inlined. Inlining a function removes the overhead of switching between the return stack and the data stack during a function call.

```
  (text)     |  (tokens)         (IR)            (assembly)      |  (ELF)
             |                                                   |
             |             /-- parser  --\   /--- codegen ----\  |
 input.stas ->- scanning - |             | - |                | ->- fasm
             |             \-- checker --/   \- optimisation -/  |
```

## programming in stas

As you know, concatenative stack based programming. Think forth. Programmed in python all your life? Don't know forth? Gloss over these sources.

- [Starting FORTH Part 1 - Forth Inc](https://www.forth.com/starting-forth/1-forth-stacks-dictionary/)
- [Stack-oriented programming - Wikipedia](https://en.wikipedia.org/wiki/Stack-oriented_programming)
- [Concatenative language wiki](https://concatenative.org/wiki/view/Front%20Page)
- [Concatenative programming language - Wikipedia](https://en.wikipedia.org/wiki/Concatenative_programming_language)
- [Reverse Polish notation - Wikipedia](https://en.wikipedia.org/wiki/Reverse_Polish_notation)

Comments are denoted with semicolons. Checkout the `files/` directory for examples, it contains implementations of rule 110, rule 90 and rule 30, among others and growing.

TODO: Guide?

```
include 'std.stas'

fn main 0 0 {
    0 while dup 100 < {
        dup putuln         ; put a number to stdout
        ++
    }
    drop
}
```

<!-- ## debugging

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

Scope guards assist in debugging, just by skimming a program you know what scopes are self contained and what ones arent. Runtime assertations are also supported and an additional message can be attached. Assertations can also be evaluated at compile time statically. -->
