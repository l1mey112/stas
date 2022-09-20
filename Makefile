.PHONY: run
run:
	@v -g -enable-globals run .

.PHONY: fasm
fasm:
	@v -g -enable-globals run . > a.out.fasm
	fasm a.out.fasm a.out
	./a.out

.PHONY: gdb-fasm
gdb-fasm:
	@v -g -enable-globals run . obj > a.o.fasm
	fasm a.o.fasm a.o
	ld a.o -o a.out
	gdb ./a.out

.PHONY: clean
clean:
	rm *.o *.out *.fasm