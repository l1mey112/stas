#!/bin/sh

set -xe

if [ ! -f "./stas" ]; then
	fasm -m 1048576 bootstrap/x86-64_linux.fasm.asm stas
fi

./stas stas.stas -o stas1 -r stas.stas -o stas2 -r stas.stas -o stas3 -r -h

diff stas2 stas3
./stas3 stas.stas                      -o - > bootstrap/x86-64_linux.fasm.asm
./stas3 stas.stas              -b nasm -o - > bootstrap/x86-64_linux.nasm.asm
./stas3 stas.stas --os freebsd         -o - > bootstrap/x86-64_freebsd.fasm.asm
./stas3 stas.stas --os freebsd -b nasm -o - > bootstrap/x86-64_freebsd.nasm.asm

cp stas3 stas
./test.vsh

git clean -fX