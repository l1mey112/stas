# stas
A werid little stack based programming language and compiler written in V, created to learn the ins and outs of compilers.

stas - st(ack) as(sembly)

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
