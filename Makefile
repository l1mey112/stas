.PHONY: run
run:
	@v -g -enable-globals run .

.PHONY: fasm
fasm:
	@v -g -enable-globals run . > a.out.fasm
	fasm a.out.fasm
	./a.out

.PHONY: gdb-fasm
gdb-fasm:
	@v -g -enable-globals run . > a.out.fasm
	fasm a.out.fasm
	gdb ./a.out