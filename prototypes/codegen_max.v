import term

enum IR {
	add
	sub
	push
	swap
	dup
	drop
	flush
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

[flag]
enum RegState {
	free
	used
	aliased
	bool_type
}

type Alias = Reg
type Unit = Reg | u64 | Alias

struct RegAllocator {
mut:
	regs       []RegState = []RegState{len: int(Reg._sz_), init: .free}
	unit_stack []Unit
}

fn (mut a RegAllocator) flush() {
	for i in a.unit_stack {
		match i {
			Alias, Reg, u64 {
				print_asm('push ${i.str()}')
			}
		}
	}
	unsafe { a.unit_stack.len = 0 }
	a.regs = []RegState{len: int(Reg._sz_), init: .free}
}

fn (mut a RegAllocator) r_free(r Reg) {
	a.regs[int(r)] = .free
}

fn (mut a RegAllocator) r_allocate() Reg {
	for idx, mut i in a.regs {
		if i.has(.free) {
			i = .used
			return unsafe { Reg(idx) }
		}
	}
	panic('exausted registers')
	// TODO: call `flush_bottom_up()`
}

fn (mut a RegAllocator) top() Unit {
	if a.unit_stack.len == 0 {
		r := a.r_allocate()
		print_asm("pop $r")
		a.unit_stack << r
		return r
	} else {
		return a.unit_stack.last()
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

fn (mut a RegAllocator) shift_responsibility(r Reg) {
	e := a.r_allocate()
	
	print_asm('mov ${e}, ${r}')

	a.regs[int(e)].set(.aliased)
	
	for idx, i in a.unit_stack {
		if i is Alias && i as Alias == r {
			a.unit_stack[idx] = e
		}
	}
}

fn (mut a RegAllocator) mutate(r Reg) {
	if a.regs[int(r)].has(.aliased) {
		a.shift_responsibility(r)
		a.regs[int(r)].toggle(.aliased)
	}
}

fn execute(program []Instruction) []Unit {
	mut a := RegAllocator{}
	for i in program {
		match i.inst {
			.push {
				a.unit_stack << i.data
			}
			.flush {
				a.flush()
			}
			.sub {
				mut r1 := a.pop()
				mut r2 := a.pop()

				if r

				if r2 is u64 && r1 is u64 {
					a.unit_stack << (r2 as u64) + (r1 as u64)
				} else if r2 is Reg && r1 is Reg {
					a.mutate(r2)
					a.unit_stack << r2
					print_asm('sub ${r2}, ${r1}')
				} else if r2 is Reg && r1 is u64 {
					a.mutate(r2)
					a.unit_stack << r2
					print_asm('sub ${r2}, ${r1}')
				} else if r2 is u64 && r1 is Reg {
					r3 := a.r_allocate()
					print_asm('mov ${r3}, ${r2 as u64}')
					a.unit_stack << r3
					a.r_free(r1 as Reg)
					print_asm('sub ${r3}, ${r1}')
				} else {
					assert false, 'unreachable'
				}
			}
			.dup {
				r := a.top()
				
				if r is u64 {
					a.unit_stack << r
				} else if r is Reg {
					a.regs[int(r)].set(.aliased)
					a.unit_stack << Alias(r)
				} else if r is Alias {
					a.unit_stack << r
				}
			}
			else {
				assert false, 'unimplemented'
			}
		}
	}
	return a.unit_stack
}

fn main() {
	program := [
		ia(.push, 0)
		ia(.push, 1)
		i(.flush)
		i(.dup) // the add will not edit the real register and keep the aliased one
		i(.sub)
	//	ia(.push, 10)
	//	i(.drop)
	]

	a := execute(program)
	println(a)
}

fn i(t IR) Instruction { return Instruction{inst: t} }
fn ia(t IR, v u64) Instruction { return Instruction{inst: t, data: v} }

fn print_asm(a string) {
	println(term.bold(term.red("	${a}")))
}