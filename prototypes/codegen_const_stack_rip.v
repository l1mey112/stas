import term

enum IR {
	add
	push
	swap
	eq
	neq
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

enum Flags {
	eq
	neq
}

type Unit = Reg | u64 | Flags

// TODO: Unit(memory_access)
// TODO: Unit(label)
// TODO: Unit(FLAGS)

struct RegAllocator {
mut:
	reg_used   []bool = []bool{len: int(Reg._sz_)}
	unit_stack []Unit
	flags_set  bool
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

fn (mut a RegAllocator) realise_flag(f Flags) Reg {
	assert a.flags_set

	postfix := match f {
		.eq {
			"e"
		}
		.neq {
			"ne"
		}
	}

	r_1 := a.r_allocate()
	print_asm('xor ${r_1}, ${r_1}')
	print_asm('set${postfix} ${r_1}')

	a.flags_set = false

	return r_1
}

fn (mut a RegAllocator) flush_flags() {
	assert a.flags_set

	mut i := a.unit_stack.len
	for true {
		i--
		if a.unit_stack[i] is Flags {
			a.unit_stack[i] = a.realise_flag(a.unit_stack[i] as Flags)
		}
		if i == 0 { break }
	}

	a.flags_set = false
}

// TODO: unpack_cmp -> for FLAGS

fn (mut a RegAllocator) unpack_arith(associative bool) (Unit, Unit, bool) {
	mut r_1 := a.unit_stack.pop()
	mut r_2 := a.unit_stack.pop()

	if r_1 is Flags {
		r_1 = a.realise_flag(r_1 as Flags)
	}
	if r_2 is Flags {
		r_2 = a.realise_flag(r_2 as Flags)
	}

	if r_2 is u64 && r_1 is u64 {
		return r_2, r_1, true
	} else if r_2 is Reg && r_1 is u64 {
		a.unit_stack << r_2
		return r_2, r_1, false
	} else if r_2 is u64 && r_1 is Reg {
		if !associative {
			r_3 := a.r_allocate()
			mov_to(r_3, r_2 as u64)
			a.unit_stack << r_3
			a.r_free(r_1 as Reg)
			return r_3, r_1, false
		} else {
			a.unit_stack << r_1
			return r_1, r_2, false
		}
	} else {
		a.unit_stack << r_2
		a.r_free(r_1 as Reg)
		return r_2, r_1, false
	}
}

fn execute(program []Instruction) {
	mut a := RegAllocator{}

	// TODO: add flag to ignore forced order in math exprs like add and mul

	for i in program {
		match i.inst {
			.add {
				op1, op2, c := a.unpack_arith(true)
				if !c {
					print_asm('add ${op1}, ${op2}')
				} else {
					a.unit_stack << (op1 as u64) + (op2 as u64)
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
			.eq {
				if a.flags_set {
					a.flush_flags()
				}

				r_1 := a.unit_stack.pop()
				r_2 := a.unit_stack.pop()
				
				print_asm('cmp ${r_2}, ${r_1}')

				a.unit_stack << Flags.eq
			}
			.neq {
				if a.flags_set {
					a.flush_flags()
				}

				r_1 := a.unit_stack.pop()
				r_2 := a.unit_stack.pop()
				
				print_asm('cmp ${r_2}, ${r_1}')

				a.unit_stack << Flags.neq
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
	//	Instruction{.swap, 0},
		Instruction{.add, 0},
	]

	execute(program)
}
