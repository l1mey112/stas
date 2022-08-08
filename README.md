# stas
A werid little stack based programming language and compiler written in V, created to learn the ins and outs of compilers.

stas - st(ack) as(sembly)

### blog.l-m.dev
[Part 1](https://blog.l-m.dev/posts/compiler-part-1/)

[Part 2](https://blog.l-m.dev/posts/compiler-part-2/)

[Part 3](https://blog.l-m.dev/posts/compiler-part-3/)

[Part 4](https://blog.l-m.dev/posts/compiler-part-4/)

[Part 5](https://blog.l-m.dev/posts/compiler-part-5/)

[https://blog.l-m.dev/tags/stas/](https://blog.l-m.dev/tags/stas/)

### Hello world!

```
#include "std.stas"

main ! in do
  "Hello World!" println
end
```

Checkout the `files/` directory for more examples, the language is in heavy development and evolving over time!

### How to compile and run stas
*In this state? Really?*

- Install V [vlang/v](https://github.com/vlang/v)
- Install [NASM](https://nasm.us/)
- (Optional) Install [bat](https://github.com/sharkdp/bat)

I use `stas.sh` for quick compiler development. It compiles and runs the entire project and passes the correct arguments to the compiler.

### Disclaimer

Due to the nature of the language, my goals are to emit only statically linked binaries (no libc). It is my intention to communicate with the Linux Kernel using system calls. Make of that what you will. This means limited portability among other operating systems and archutectures.

The language supports the amd64 / x86-64 chipset and operating systems using the Linux Kernel.

```
$ ./stas.sh -h                                     
stas 0.0.2 2d120cf
-----------------------------------------------
Usage: stas [options] [ARGS]

Description: Compiler for a stack based programming language

Options:
  -r, --run                 run program after compiling, then deletes
  -s, --show                open nasm assembly output in a bat process
  -o                        output to file (accepts *.asm, *.S, *.o, *)
  -g                        compile with debug symbols
  -v, --version             output version information and exit
  -h, --help                display this help and exit
```

```sh
./stas.sh files/memset.stas -g -r
```
```sh
./stas.sh files/arrays.stas -o assembly.asm
```
```sh
./stas.sh files/main.stas -g
gdb a.out
```
