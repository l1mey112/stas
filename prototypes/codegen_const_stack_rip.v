import term

enum IR {
	add
	sub
	push
	swap
	eq
	neq
	bool_not
	jmp_if
	jmp
	dup
	drop
	label
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

type Unit = Flags | Reg | u64

fn (u Unit) str() string {
	match u {
		Reg, u64 {
			return u.str()
		}
		Flags {
			return "f_${u as Flags}"
		}
	}
}

// TODO: Unit(memory_access)
// TODO: Unit(label)

struct RegAllocator {
mut:
	reg_used   []bool = []bool{len: int(Reg._sz_)}
	unit_stack []Unit
	flags_set  bool
}

fn (mut a RegAllocator) flush() {
	for i in a.unit_stack {
		match i {
			Flags {
				f := a.realise_flag(i)
				print_asm('push ${f}')
			}
			Reg, u64 {
				print_asm('push ${i.str()}')
			}
		}
	}

	assert !a.flags_set

	unsafe { a.unit_stack.len = 0 }
	a.reg_used = []bool{len: int(Reg._sz_)}
}

fn (mut a RegAllocator) flush_bottom_up() {
	assert false, 'unimplemented'

	// TODO: implement a way to flush from the bottom up.
	//       if a register is found, remove it from the list.
	//       else, keep searching.
	//       its way more efficient than a complete flush

}

fn (mut a RegAllocator) r_allocate() Reg {
	for idx, mut i in a.reg_used {
		if i == false {
			i = true
			return unsafe { Reg(idx) }
		}
	}
	panic('exausted registers')
	// TODO: call `flush_bottom_up()`
}

fn (mut a RegAllocator) r_free(r Reg) {
	a.reg_used[int(r)] = false
}

fn print_label(a u64) {
	println(term.bold(term.red("l_${a}:")))
}

fn print_asm(a string) {
	println(term.bold(term.red("	${a}")))
}

fn mov_to(r Reg, v u64) {
	print_asm('mov ${r}, ${v}')
}

fn (e Flags) to_postfix() string {
	return match e {
		.eq {
			'e'
		}
		.neq {
			'ne'
		}
	}
}

fn (e Flags) inverse() Flags {
	return match e {
		.eq {
			.neq
		}
		.neq {
			.eq
		}
	}
}

fn (mut a RegAllocator) realise_flag(f Flags) Reg {
	assert a.flags_set

	r_1 := a.r_allocate()
	print_asm('xor ${r_1}, ${r_1}')
	print_asm('set${f.to_postfix()} ${r_1}')

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
		if i == 0 {
			break
		}
	}

	a.flags_set = false
}

fn (mut a RegAllocator) unpack_cmp() (Unit, Unit, bool) {
	if a.flags_set {
		a.flush_flags()
	}

	mut r_1 := a.pop()
	mut r_2 := a.pop()

	if r_1 is Flags {
		r_1 = a.realise_flag(r_1 as Flags)
	}
	if r_2 is Flags {
		r_2 = a.realise_flag(r_2 as Flags)
	}
	if r_1 is Reg {
		a.r_free(r_1 as Reg)
	}
	if r_2 is Reg {
		a.r_free(r_2 as Reg)
	}

	if r_2 is u64 && r_1 is u64 {
		return r_2, r_1, true
	} else if r_2 is Reg && r_1 is u64 {
		return r_2, r_1, false
	} else if r_2 is u64 && r_1 is Reg {
		return r_1, r_2, false
	} else {
		return r_2, r_1, false
	}
}

fn (mut a RegAllocator) unpack_arith(associative bool) (Unit, Unit, bool) {
	mut r_1 := a.pop()
	mut r_2 := a.pop()

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

fn (mut a RegAllocator) pop() Unit {
	if a.unit_stack.len == 0 {
		r := a.r_allocate()
		print_asm("pop $r")
		return r
	} else {
		return a.unit_stack.pop()
	}
}

fn execute(program []Instruction) []Unit {
	mut a := RegAllocator{}
	for i in program {
		// println(a.unit_stack)

		match i.inst {
			.add {
				op1, op2, c := a.unpack_arith(true)
				if !c {
					print_asm('add ${op1}, ${op2}')
				} else {
					a.unit_stack << (op1 as u64) + (op2 as u64)
				}
			}
			.sub {
				op1, op2, c := a.unpack_arith(false)
				if !c {
					print_asm('sub ${op1}, ${op2}')
				} else {
					a.unit_stack << (op1 as u64) - (op2 as u64)
				}
			}
			.push {
				a.unit_stack << i.data
			}
			.swap {
				r_1 := a.pop()
				r_2 := a.pop()

				a.unit_stack << r_1
				a.unit_stack << r_2
			}
			.eq {
				op1, op2, c := a.unpack_cmp()
				if !c {
					print_asm('cmp ${op1}, ${op2}')
					a.unit_stack << Flags.eq
					a.flags_set = true
				} else {
					a.unit_stack << u64((op1 as u64) == (op1 as u64))
				}
			}
			.neq {
				op1, op2, c := a.unpack_cmp()
				if !c {
					print_asm('cmp ${op1}, ${op2}')
					a.unit_stack << Flags.neq
					a.flags_set = true
				} else {
					a.unit_stack << u64((op1 as u64) != (op1 as u64))
				}
			}
			.bool_not {
				r_1 := a.pop()

				if r_1 is Flags {
					a.unit_stack << r_1.inverse()
				} else {
					assert false, 'unimplemented'				
				}
			}
			.jmp {
				a.flush()
				print_asm('jmp l_${i.data}')
			}
			.jmp_if {
				r_1 := a.pop()

				if r_1 is Flags {
					a.flags_set = false
				}

				a.flush()

				if r_1 is Flags {
					print_asm('j${r_1.to_postfix()} l_${i.data}')
				} else if r_1 is Reg {
					print_asm('test ${r_1}, ${r_1}')
					print_asm('jnz l_${i.data}')
				} else {
					// perform comptime branching
				}
			}
			.dup {
				// TODO: some sort of reference unit?
				//       because sometimes operations
				//       do not actually edit that
				//       register so duplicating it is
				//       useless. probably not though

				mut r_1 := a.pop()
				r_2 := a.r_allocate()

				if r_1 is Flags {
					r_1 = a.realise_flag(r_1 as Flags)
				}
				print_asm("mov ${r_2}, ${r_1}")
				a.unit_stack << r_1
				a.unit_stack << r_2
			}
			.drop {
				if a.unit_stack.len == 0 {
					print_asm("drop")
				} else {
					r_1 := a.unit_stack.pop()

					if r_1 is Reg {
						a.r_free(r_1)
					} else if r_1 is Flags {
						assert a.flags_set
						a.flags_set = false
					}
				}
			}
			.label {
				a.flush()
				print_label(i.data)
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
	}
	return a.unit_stack
}

fn i(t IR) Instruction {
	return Instruction{inst: t}
}

fn ia(t IR, v u64) Instruction {
	return Instruction{inst: t, data: v}
}

fn (i Instruction) str() string {
	mut r := term.bold("${i.inst}\t")
	r += term.green(match i.inst {
		.label {
			'l_${i.data}'
		}
		.push {
			'$${i.data}'
		}
		.jmp_if {
			'l_${i.data}'
		}
		else {''}
	})
	return r
}

fn (i []Instruction) str() string {
	mut a := ''
	for ii in i {
		a += ii.str() + "\n"
	}
	return a
}

fn main() {
	/* program := [
		ia(.push, 0)
		ia(.label, 0)
		i(.dup)
		ia(.push, 10)
		i(.neq)
		ia(.jmp_if, 1)
		ia(.push, 1)
		i(.add)
		ia(.jmp, 0)
		ia(.label, 1)
		i(.drop)
	] */

	program := [
		ia(.push, 0)
		ia(.label, 0)
		ia(.push, 1)
		i(.add)
		i(.dup)
		ia(.push, 10)
		i(.neq)
		ia(.jmp_if, 0)
		i(.drop)
	]

	println(program)

	execute(program)
}
