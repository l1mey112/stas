import term

enum IR {
	add
	push
	swap
	push_r
	new_r
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

type Unit = Reg | u64

// TODO: Unit(memory_access)
// TODO: Unit(label)
// TODO: Unit(FLAGS)

struct RegAllocator {
mut:
	reg_used   []bool = []bool{len: int(Reg._sz_)}
	unit_stack []Unit
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

fn (mut a RegAllocator) r_free(r Reg) {
	a.reg_used[int(r)] = false
}

fn print_asm(a string) {
	println(term.bold(term.red(a)))
}

fn mov_to(r Reg, v u64) {
	print_asm('mov ${r}, ${v}')
}

fn execute(program []Instruction) {
	mut a := RegAllocator{}

	// TODO: add flag to ignore forced order in math exprs like add and mul

	for i in program {
		match i.inst {
			.add {
				r_1 := a.unit_stack.pop()
				r_2 := a.unit_stack.pop()

				// 1. If both are constants, perform folding
				// 2. If order matters:
				//    1. If the first operand is a constant and the other, 
				//       a register, flush the constant to a register and
				//       perform the instruction.
				//    2. If the second operand is a constant and the first,
				//       a register, perform the instruction as is.
				// 3. If order does not matter:
				//    1. Swap if needed to make the register the first operand,
				//       then perform the instruction.
				// 4. Both registers? Perform the instruction as is.

				if r_2 is u64 && r_1 is u64 {
					a.unit_stack << r_2 + r_1
				} else if r_2 is Reg && r_1 is u64 {
					print_asm('add ${r_2}, ${r_1}')
					a.unit_stack << r_2
				} else if r_2 is u64 && r_1 is Reg {
					r_3 := a.r_allocate()
					mov_to(r_3, r_2)
					print_asm('add ${r_3}, ${r_1}')
					a.unit_stack << r_3
					a.r_free(r_1)
				} else {
					print_asm('add ${r_2 as Reg}, ${r_1 as Reg}')
					a.unit_stack << r_2
					a.r_free(r_1 as Reg)
				}
			}
			.push {
				a.unit_stack << i.data
			}
			.swap {
				r_1 := a.unit_stack.pop()
				r_2 := a.unit_stack.pop()

				a.unit_stack << r_1
				a.unit_stack << r_2
			}
			.push_r {
				r_1 := a.r_allocate()
				mov_to(r_1, i.data)
				a.unit_stack << r_1
			}
			.new_r {
				r_1 := a.r_allocate()

				print_asm('pop ${r_1}')
				
				a.unit_stack << r_1
			}
		}



		// println("${i.inst} ${i.data}\t${a.unit_stack}")
	}
}

fn main() {
	program := [
		Instruction{.push, 5}
		Instruction{.new_r, 0},
		Instruction{.swap, 0}
		Instruction{.add, 0},
	]

	execute(program)
}
