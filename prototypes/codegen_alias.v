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

enum RegState {
	non
	alias
	aliased
}

struct Register {
mut:
	r   Reg
	typ RegState = .non
}

fn (r Register) str() string {
	ee := if r.typ != .non {', ${r.typ}'} else {''}
	return 'Register(${r.r}${ee})'
}

type Unit = Register | u64

[flag]
enum RegFreeState {
	free
	used
	aliased
}

struct RegAllocator {
mut:
	regs       []RegFreeState = []RegFreeState{len: int(Reg._sz_), init: .free}
	unit_stack []Unit
}

fn (mut a RegAllocator) flush() {
	for i in a.unit_stack {
		match i {
			Register {
				print_asm('push ${i.r}')
			}
			u64 {
				print_asm('push ${i}')
			}
		}
	}

	unsafe { a.unit_stack.len = 0 }
	a.regs = []RegFreeState{len: int(Reg._sz_), init: .free}
}

fn (mut a RegAllocator) r_free(r Reg) {
	a.regs[int(r)].set(.free)
	a.regs[int(r)].clear(.used)
}

fn (mut a RegAllocator) r_allocate() Reg {
	for idx, mut i in a.regs {
		if i.has(.free) {
			if i.has(.aliased) {
				// SHOULD BE LOWEST PRIORITY
				assert false, 'unimplemented'
			} else {
				a.regs[int(idx)] = .used
				return unsafe { Reg(idx) }
			}
		}
	}
	panic('exausted registers')
	// TODO: call `flush_bottom_up()`
}

fn (mut a RegAllocator) top() Unit {
	if a.unit_stack.len == 0 {
		r := a.r_allocate()
		print_asm("pop $r")
		a.unit_stack << Register{r: r}
		return a.top()
	} else {
		return a.unit_stack.last()
	}
}

fn (mut a RegAllocator) pop() Unit {
	if a.unit_stack.len == 0 {
		r := a.r_allocate()
		print_asm("pop $r")
		return Register{r: r}
	} else {
		return a.unit_stack.pop()
	}
}

/* 	print_asm('mov ${e}, ${r}')

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
		a.regs[int(r)].toggle(.aliased) */


fn (mut a RegAllocator) mutate(r Register) Register {
	if r.typ == .alias {
		e := a.r_allocate()
		print_asm('mov ${e}, ${r.r}')

		return Register{r: e, typ: .non}
	} else if r.typ == .aliased {
		assert false, 'unimplemented'
	}

	assert false, 'unimplemented'
	panic("hello")
}

fn execute(program []Instruction) {
	mut a := RegAllocator{}
	for i in program {
		match i.inst {
			.push {
				a.unit_stack << i.data
			}
			.flush {
				a.flush()
			}
			.swap {
				r1 := a.pop()
				r2 := a.pop()

				a.unit_stack << r1
				a.unit_stack << r2
			}
			.sub {
				mut r1 := a.pop()
				mut r2 := a.pop()

				if r2 is u64 && r1 is u64 {
					a.unit_stack << (r2 as u64) - (r1 as u64)
				} else if r2 is Register && r1 is u64 {
					if (r2 as Register).typ != .non {
						r2 = a.mutate(r2 as Register)
					}
					a.unit_stack << r2
					print_asm('sub ${(r2 as Register).r}, ${r1 as u64}')
				} else if r2 is u64 && r1 is Register {
					r3 := a.r_allocate()
					print_asm('mov ${r3}, ${r2 as u64}')
					a.unit_stack << Register{r: r3}
					a.r_free((r1 as Register).r)
					print_asm('sub ${r3}, ${(r1 as Register).r}')
				} else {
					a.unit_stack << r2
					a.r_free((r1 as Register).r)
					print_asm('sub ${(r2 as Register).r}, ${(r1 as Register).r}')
				}
			}
			.dup {
				r := a.top()
				if r is u64 {
					a.unit_stack << r
				} else if r is Register {
					if r.typ != .alias {
						a.unit_stack[a.unit_stack.len - 1] = Register {r.r, .alias}
						a.regs[int(r.r)] = RegFreeState.used | RegFreeState.aliased
					}
					mut d := r
					d.typ = .alias
					a.unit_stack << d
				}
			}
			else {
				assert false, 'unimplemented'
			}
		}
	}
	println(a.unit_stack)
	println(a.regs)
}

fn main() {
	program := [
		i(.flush)
		i(.dup)
		ia(.push, 5)
	//	i(.swap)
		i(.sub)
	//	i(.flush)
	//	i(.dup) // the add will not edit the real register and keep the aliased one
	//	i(.sub)
	//	ia(.push, 10)
	//	i(.drop)
	]

	execute(program)
}

fn i(t IR) Instruction { return Instruction{inst: t} }
fn ia(t IR, v u64) Instruction { return Instruction{inst: t, data: v} }

fn print_asm(a string) {
	println(term.bold(term.red("	${a}")))
}