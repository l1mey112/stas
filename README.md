# `stas - st(ack) as(sembler)` 

A stack based compiled systems programming language.

```
include <std.stas>

fn main {
    'Hello world!\n' puts
}
```

Loosely inspired by FORTH with a modern syntax, stas is a general purpose low level stack based systems programming language. With syntax designed to be short and consise, programs written in stas take a concatenative form. A form where functions and operations mutate the stack in a pipeline where each output is anothers input.

The stas programming language compiler supports x86_64 systems using the Linux and FreeBSD kernels and can cross compile to both with ease. Unencumbered by a C library, stas utilises OS specific native system calls to interact with the system. The full POSIX API and it's definitions are avaliable in the standard library.

This is my first ever programming language and compiler, the initial journey with all of the guesswork has been documented on my blog at [`tags/stas`](https://blog.l-m.dev/tags/stas/), these show the small steps taken to achieve initial V version of the compiler. The V source code of the bootstrap compiler is in [a-different-branch](https://github.com/l1mey112/stas/tree/0.1.0-v-compiler).

## release changelogs

A release changelog is a complete post outlining all additional features added between releases, and if you're lucky, how they are implemented.

- [stas `0.1.1` Changelog](https://blog.l-m.dev/posts/release-stas-0.1.1/) - [Github Release](https://github.com/l1mey112/stas/releases/tag/0.1.1)
- [stas `0.1.2` Changelog](https://blog.l-m.dev/posts/release-stas-0.1.2/) - [Github Release](https://github.com/l1mey112/stas/releases/tag/0.1.2)
- [stas `0.1.3` Changelog](https://blog.l-m.dev/posts/release-stas-0.1.3/) - [Github Release](https://github.com/l1mey112/stas/releases/tag/0.1.3)
- [stas `0.2.0` Changelog](https://blog.l-m.dev/posts/release-stas-0.2.0/) - [Github Release](https://github.com/l1mey112/stas/releases/tag/0.2.0)

## programming in stas

Guides created by myself.

- [Intro To The stas Programming Language - Core Features](https://blog.l-m.dev/posts/intro-to-stas-1/)
- [Intro To The stas Programming Language - Variables And Memory](https://blog.l-m.dev/posts/intro-to-stas-2/)

As you know, concatenative stack based programming. Think forth. Gloss over these sources.

- [Starting FORTH Part 1 - Forth Inc](https://www.forth.com/starting-forth/1-forth-stacks-dictionary/)
- [Stack-oriented programming - Wikipedia](https://en.wikipedia.org/wiki/Stack-oriented_programming)
- [Concatenative language wiki](https://concatenative.org/wiki/view/Front%20Page)
- [Concatenative programming language - Wikipedia](https://en.wikipedia.org/wiki/Concatenative_programming_language)
- [Reverse Polish notation - Wikipedia](https://en.wikipedia.org/wiki/Reverse_Polish_notation)

Comments are denoted with semicolons. Checkout the `files/` directory for examples, it contains implementations of rule 110, rule 90 and rule 30, among others and growing.

## bootstrapping stas

[The-stas-compiler-is-written-in-stas.](./stas.stas) To avoid the chicken or the egg scenario, precompiled assembly files reside in the [bootstrap/](bootstrap/) directory.

Use FASM, the [flat-assembler](https://flatassembler.net/), to compile the binaries.

```sh
$ fasm -m 1048576 bootstrap/x86-64_linux.fasm.asm stas
$ doas|sudo ./stas symlink
$ stas -h
....
```

```
$ ./stas
stas 0.2.0 Copyright (C) 2022  l-m.dev

USAGE: ./stas [OPTIONS] [FILE]

  -o <output>             Specify '-o -' to dump assembly to stdout
  -g                      Debug info. Most effective with the `nasm` backend
  -b <backend>            Assemblers `nasm` or `fasm` as compiler backend
  -c                      Create object file for linking, will not call `ld`
  -r                      Execute file after compiling. Arguments after this
                          switch will ignored and passed to the program
  -v                      Activate verbose mode
  -os <os>                `linux` | `freebsd`
  -dump-tok               Dump token information after scanning stage
  -dump-ir                Dump intermediate representation after parsing stage
  -unsafe                 Currently only strips assertions
  -comptime-depth <num>   Adjust compile time recursion depth for evaluating
                          comptime functions. Default: 12
  -trace-calls            Compiled executable will have function calls traced
                          at runtime. Will not trace inlined calls
  -h, --help              Show this message

SUBCOMMANDS

  ./stas symlink          Will create a symbolic link to the stas compiler
                          inside `/usr/local/bin/stas`

```

## spec

It generates optimised x86-64 assembly for systems using the Linux kernel. It interfaces with the operating system kernel through syscalls and not through libc. The compiler only emits statically linked binaries for now. This means limited portability among other operating systems and architectures.

The stas compiler generates decently optimised assembly by converting stack based operations to ones that work register to register. It does this through the [register-allocator](./src/x86.stas) present in the compiler.

A dead code elimination pass takes place between the parser and code generation passes. Here, it is also determined which functions will be automatically inlined. Inlining a function removes the overhead of switching between the return stack and the data stack during a function call. The DCE pass also handles optimising tail recursion calls.

```
  (text)     |  (tokens)         (IR)            (assembly)      | (ELF/assembly)
             |                                                   |
             |             /-- parser  --\   /--- codegen ----\  |
 input.stas ->- scanning - |             | - |                | ->- backend
             |             \-- checker --/   \- optimisation -/  |
```

## IDE support

Currently, only a [Visual Studio Code extension](https://github.com/l1mey112/stas-vscode) exists supporting syntax highlighting. Freely avaliable in the vscodium extension store, download a copy from [open-vsx](https://open-vsx.org/extension/l-m/stas-vscode).

<!-- ## debugging

Besides the compile time checks, it supports breakpoints with the `_breakpoint` keyword, coupled with some scripts inside GDB it allows you to easily inspect the program at runtime.

```
fn main {
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

fn main {
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
