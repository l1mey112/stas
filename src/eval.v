fn eval_one_inst(mut const_stack []u64, pos u32) bool {
	ir_data := ir_stream[pos].data
	ins := ir_stream[pos].inst

	match true {
		ins == .push_num {
			const_stack << ir_data
		}
		ins == .plus && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a + b
		}
		ins == .sub && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a - b
		}
		ins == .mul && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a * b
		}
		ins == .div && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a / b
		}
		ins == .mod && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a % b
		}
		ins == .inc && const_stack.len >= 1 {
			const_stack[const_stack.len - 1]++
		}
		ins == .dec && const_stack.len >= 1 {
			const_stack[const_stack.len - 1]--
		}
		ins == .divmod && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a / b
			const_stack << a % b
		}
		ins == .shr && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a >> b
		}
		ins == .shl && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a << b
		}
		ins == .b_and && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a & b
		}
		ins == .b_or && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a | b
		}
		ins == .b_not && const_stack.len >= 1 {
			b := const_stack.pop()
			const_stack << ~b
		}
		ins == .b_xor && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a ^ b
		}
		ins == .swap && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << b
			const_stack << a
		}
		ins == .dup && const_stack.len >= 1 {
			b := const_stack.pop()
			const_stack << b
			const_stack << b
		}
		ins == .over && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a
			b
		}
		ins == .rot && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a
			b
		}
		ins == .rot4 && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << a
			b
		}
		ins == .drop && const_stack.len >= 1 {
			const_stack.pop()
		}
		ins == .equ && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(a == b)
		}
		ins == .nequ && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(a != b)
		}
		ins == .gt && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(a > b)
		}
		ins == .lt && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(a < b)
		}
		ins == .gte && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(a >= b)
		}
		ins == .lte && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(a <= b)
		}
		ins == .s_gt && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(i64(a) > i64(b))
		}
		ins == .s_lt && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(i64(a) < i64(b))
		}
		ins == .s_gte && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(i64(a) >= i64(b))
		}
		ins == .s_lte && const_stack.len >= 2 {
			b := const_stack.pop()
			a := const_stack.pop()
			const_stack << u64(i64(a) <= i64(b))
		}
		/* ins == ._assert && const_stack.len >= 1 {
			c := const_stack.pop()

			if c == 0 {
				eprint('(comptime) ')
				eprint(slits[ir_data])
				exit(1)
			}
		} */
		else {
			return false
		}
	}
	return true
}
