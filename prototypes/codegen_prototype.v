import term

enum IR {
	add
	push
}

struct Instruction {
	inst IR
	data u64
}

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

struct RegAllocator {
mut:
	reg_used []bool = []bool{len: int(Reg._sz_)}
	reg_debt []Reg
}

fn (mut a RegAllocator) r_allocate() Reg {
	for idx, mut i in a.reg_used {
		if i == false {
			i = true
			return unsafe { Reg(idx) }
		}
	}
	panic('exausted registers')
}

fn (mut a RegAllocator) r_pop_debt() Reg {
	if a.reg_debt.len == 0 {
		return a.r_allocate()
	} else {
		return a.reg_debt.pop()
	}
}

fn (mut a RegAllocator) r_free(r Reg) {
	a.reg_used[int(r)] = false
}

fn print_asm(a string) {
	println(term.bold(term.red(a)))
}

fn reverse_execution(program []Instruction) {
	mut a := RegAllocator{}

	mut p := []string{}

	for i in program.reverse() {
		// println(i)
		match i.inst {
			.add {
				r_1 := a.r_pop_debt()
				r_2 := a.r_pop_debt()
				p << 'add ${r_1}, ${r_2}'
				a.reg_debt << r_2
				a.reg_debt << r_1
			}
			.push {
				r_1 := a.reg_debt.pop()
				p << 'mov ${r_1}, ${i.data}'
			}
		}
		// println(a)
	}

	for i in p.reverse() {
		print_asm(i)
	}
}

// TODO: strings, add string label unit

fn main() {
	program := [
		Instruction{.push, 5},
		Instruction{.push, 5},
		Instruction{.add, 0},
		Instruction{.push, 5},
		Instruction{.add, 0},
		Instruction{.push, 5},
		Instruction{.add, 0},
	]

	reverse_execution(program)
}
