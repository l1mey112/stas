import term

enum Reg {
	r1
	r2
	r3
	r4
	r5
	r6
	r7
	r8
	_sz_
}

/*
lm
 —
Today at 9:46 AM
regs = []Register?
units = []&Registers
register { rc int reg r }
if reg in regs .rc > 0 -> reg in units??
that means update
units have a reference count to the struct register in regs
units contain a reference to the register in regs
*/

struct Register {
mut:
	rc int
}

struct None {}

struct RegAllocator {
mut:
	regs  []Register = []Register{len: int(Reg._sz_)}
	units []Reg
}

fn (a []Register) str() string {
	mut s := ''
	for idx, i in a {
		r := unsafe { Reg(idx) }
		s += "${term.bold(r.str())}"
		if i.rc > 0 {
			s += " " + term.bold(term.red("${i.rc}"))
		}
		s += " "
	}
	return s
}

fn (ra RegAllocator) idx(a Reg) &Register {
	return &ra.regs[int(a)]
}

fn (mut ra RegAllocator) r_free(a Reg) {
	mut r := ra.idx(a)
	r.rc--
	assert r.rc >= 0
}

fn (mut ra RegAllocator) r_allocate() Reg {
	for idx in Reg.r1 .. Reg._sz_ {
		mut e := ra.idx(idx)
		assert e.rc >= 0
		if e.rc == 0 {
			e.rc++
			return unsafe { Reg(idx) }
		}
	}
	panic('exausted registers')
	// TODO: find reg with smallest dependancies to commit to stack
}

fn (mut ra RegAllocator) top() Reg {
	if ra.units.len == 0 {
		r := ra.r_allocate()
		print_asm("pop $r")
		ra.units << r
		return ra.top()
	} else {
		return ra.units.last()
	}
}

fn (mut ra RegAllocator) pop() Reg {
	if ra.units.len == 0 {
		r := ra.r_allocate()
		print_asm("pop $r")
		return r
	} else {
		return ra.units.pop()
	}
}

fn (mut ra RegAllocator) mutate(a Reg) {
	mut r := ra.idx(a)
	if r.rc > 1 {
		// FISHY(?): least recent to most recent
		
		r1 := ra.r_allocate()

		print_asm("mov $r1, $a")

		for mut i in ra.units {
			if i == a && r.rc > 1 {
				i = r1
				r.rc--
			}
		}
	}
}

enum IR {
	push
	dup
	add
}

struct Instruction {
	inst IR
	data u64
}

fn execute(mut ra RegAllocator, program []Instruction) {
	for i in program {
		//println(i.inst)
		match i.inst {
			.push {
				r1 := ra.r_allocate()
				print_asm("mov $r1, $i.data")
				ra.units << r1
			}
			.dup {
				r1 := ra.top()
				ra.idx(r1).rc++
				ra.units << r1
			}
			.add {
				// TODO:
				//   ra.has(2)
				//   ra.mutate(2) // idx
				// INSTEAD OF:
				ra.mutate(ra.units[ra.units.len - 2])
				r1 := ra.pop()
				r2 := ra.pop()

				print_asm('add $r2, $r1')

				ra.r_free(r1)
				ra.units << r2
			}
		}
		//println(ra)
	}
}

fn main() {
	mut a := RegAllocator{}

	program := [
		Instruction{.push, 88}
		Instruction{.dup, 0}
		Instruction{.add, 0}
	]

	execute(mut a, program)
	println(a)
}

fn print_asm(a string) {
	println(term.bold(term.red("	${a}")))
}