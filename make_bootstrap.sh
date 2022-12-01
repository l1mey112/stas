#!/bin/sh

make_exe() {
	os=$(uname)
	if [ "$os" = 'Linux' ]; then
		fasm -m 1048576 bootstrap/x86-64_linux.fasm.asm stas
	elif [ "$os" = 'FreeBSD' ]; then
		fasm -m 1048576 bootstrap/x86-64_freebsd.fasm.asm stas
	fi
	chmod +x stas
}

set -xe

if [ ! -f "./stas" ]; then
	make_exe
fi

./stas stas.stas -o stas1 -r stas.stas -o stas2 -r stas.stas -o stas3 -r -h

diff stas2 stas3
./stas3 stas.stas -os linux           -o - > bootstrap/x86-64_linux.fasm.asm
./stas3 stas.stas -os linux   -b nasm -o - > bootstrap/x86-64_linux.nasm.asm
./stas3 stas.stas -os freebsd         -o - > bootstrap/x86-64_freebsd.fasm.asm
./stas3 stas.stas -os freebsd -b nasm -o - > bootstrap/x86-64_freebsd.nasm.asm

cp stas3 stas
./test.vsh

git clean -fX

make_exe