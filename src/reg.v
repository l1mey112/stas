enum Reg {
	rbx
	rcx
	rsi
	rdi
	r8
	r9
	r10
	r11
	r12
	r13
	r14
	r15
	rdx
	rax
	_size_
	_nil_
}

__global rallocator_stack = []Reg{}
__global rallocator_mask = u32(0xFFFFFFFF)

fn r_b_clear(r Reg) {
	rallocator_mask &= ~(1 << int(r))
}
fn r_b_set(r Reg) {
	rallocator_mask |= 1 << int(r)
}
fn r_is_used(r Reg) bool {
	return (rallocator_mask & (1 << int(r))) == 0
}

fn r_push_const(n u64) {
	a := r_alloc()
	rallocator_stack << a
	r_b_clear(a)
	writeln('    mov $a, $n')
}

fn r_push_const_word(s string) {
	a := r_alloc()
	rallocator_stack << a
	r_b_clear(a)
	writeln('    mov $a, $s')
}

fn r_push(r Reg) {
	rallocator_stack << r
	r_b_clear(r)
}

fn r_dup(r Reg) {
	a := r_alloc()
	rallocator_stack << a
	r_b_clear(a)
	writeln('    mov $a, $r')
}

fn C.ffs (int) int

fn r_alloc() Reg {
	mut r_idx := C.ffs(rallocator_mask)
	if r_idx == 0 || r_idx >= int(Reg._size_) {
		panic("no more regs")
	}
	r_idx -= 1

	a := unsafe { Reg(r_idx) }
	
	return a
}

fn r_pop() Reg {
	if rallocator_stack.len > 0 {
		a := rallocator_stack.pop()
		r_b_clear(a)
		return a
	} else {
		a := r_alloc()
		r_b_clear(a)
		writeln('    pop $a')
		return a
	}
}

fn r_free(r Reg) {
	r_b_set(r)
}

fn r_top() Reg {
	if rallocator_stack.len > 0 {
		return rallocator_stack.last()
	} else {
		a := r_alloc()
		rallocator_stack << a
		writeln('    pop $a')
		return a
	}
}

fn r_pop_r(r Reg) {
	if rallocator_stack.len > 0 {
		a := rallocator_stack.pop()
		if a == r {
			return
		}
		
		r_b_set(a)
		if r_is_used(r) {
			r_release(r)
		}
		writeln('    mov $r, $a')
	} else {
		assert r_is_used(r)
		writeln('    pop $r')
	}
}

fn r_flush() {
	for n in rallocator_stack {
		writeln('    push $n')
	}
	
	unsafe { rallocator_stack.len = 0 }
	rallocator_mask = u32(0xFFFFFFFF)
}

fn r_drop() {
	if rallocator_stack.len > 0 {
		a := rallocator_stack.pop()
		r_b_set(a)
	} else {
		writeln('    add rsp, 8')
	}
}

/* fn r_get_top_tmp(r Reg) {
	if !r_is_used(r) {
		a := r_alloc()
		writeln('    mov $a, $r')
	} else {
		a := r_top()
		writeln('    mov $r, $a')
	}
} */

fn r_release(r Reg) {
	if r_is_used(r) {
		idx := rallocator_stack.index(r)
		assert idx != -1, "a"

		a := r_alloc()
		writeln('    mov $a, $r')
		
		r_b_set(r) // r is not used anymore
		rallocator_stack[idx] = a
	}
}