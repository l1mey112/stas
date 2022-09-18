fn writeln(a string) {
	println(a)
}

const fn_arg_regs = [
	'rdi'
	'rsi'
	'rdx'
	'rcx'
	'r8'
	'r9'
]

struct GenContext {
	tokens []Token
mut:
	pos int
	stackdepth int
	in_func bool
	in_if bool
	does_current_func_ret bool
	funcs map[string] struct {
		ret bool
		args int
	}
}

fn get_asm(tokens []Token) {
	writeln('format ELF64 executable')
	writeln('segment readable executable')
	writeln('entry _start')
	writeln('_start:')
	writeln('call main')
	writeln('xor rdi, rdi')
	writeln('_exit:')
	writeln('mov rax, 60')
	writeln('syscall')

	mut ctx := GenContext{tokens: tokens}

	ctx.gen()
}

fn (mut c GenContext) gen_if() {
	mut branchdepth := 0
	mut contains_else := false

	mut tpos := c.pos
	for c.tokens[tpos].tok != .endif_block {
		if c.tokens[tpos].tok == .else_block {
			assert !contains_else, "multiple else blocks while parsing if statement"
			contains_else = true
		}
		tpos++
		assert tpos < c.tokens.len, "unexpected EOF when parsing if statement"
	}

	label := '.${c.pos}_if'

	writeln('pop rax')
	writeln('test al, al')
	if contains_else {
		writeln('je ${label}_else')
	} else {
		writeln('je ${label}_end')
	}
	writeln('$label:')

	assert c.stackdepth > 0, "no value on stack to consume for if statement"
	c.stackdepth--

	branchdepth = c.stackdepth
	for {
		c.pos++	
		ret := c.genone()

		if ret == -1 {
			branchdepth -= c.stackdepth
			break
		}

		assert tpos < c.tokens.len, "unexpected EOF when parsing if statement"
	}
	if contains_else {
		writeln('jmp ${label}_end')
		writeln('${label}_else:')
		mut elsebranchdepth := c.stackdepth
		for {
			c.pos++	
			ret := c.genone()

			if ret == -1 {
				elsebranchdepth -= c.stackdepth
				break
			}

			assert tpos < c.tokens.len, "unexpected EOF when parsing else in if statement"
		}
		assert elsebranchdepth == branchdepth, "unbalaced stack on both if and else branches"
	}
	writeln('${label}_end:')
}

fn (mut c GenContext) genone() int {
	match c.tokens[c.pos].tok {
		.add {
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('add rsi, rdi')
			writeln('push rsi')
				c.stackdepth--
		}
		.sub {
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('sub rsi, rdi')
			writeln('push rsi')
				c.stackdepth--
		}
		.mul {
			writeln('pop rdi')
			writeln('pop rsi')
			writeln('imul rsi, rdi')
			writeln('push rsi')
				c.stackdepth--
		}
		.div {
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor edx, edx')
			writeln('div rdi')
			writeln('push rax')
				c.stackdepth--
		}
		.mod {
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor edx, edx')
			writeln('div rdi')
			writeln('push rdx')
				c.stackdepth--
		}
		.divmod {
			writeln('pop rdi')
			writeln('pop rax')
			writeln('xor rdx, rdx')
			writeln('div rdi')
			writeln('push rax')
			writeln('push rdx')
		}
		.inc {
			writeln('pop rdi')
			writeln('inc rdi')
			writeln('push rdi')
		}
		.dec {
			writeln('pop rdi')
			writeln('dec rdi')
			writeln('push rdi')
		}
		.equal {
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('sete al')
			writeln('push rax')
				c.stackdepth--
		}
		.notequal {
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('setne al')
			writeln('push rax')
				c.stackdepth--
		}
		.greater {
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('seta al')
			writeln('push rax')
				c.stackdepth--
		}
		.less {
			writeln('pop rsi')
			writeln('pop rdi')
			writeln('xor rax, rax')
			writeln('cmp rdi, rsi')
			writeln('setb al')
			writeln('push rax')
				c.stackdepth--
		}
		.shr {
			writeln('pop rcx')
			writeln('pop rdi')
			writeln('shr rdi, cl')
			writeln('push rdi')
				c.stackdepth--
		}
		.shl {
			writeln('pop rcx')
			writeln('pop rdi')
			writeln('shl rdi, cl')
			writeln('push rdi')
				c.stackdepth--
		}
		.drop {
			writeln('add rsp, 8')
				c.stackdepth--
		}
		.ret {
			if c.does_current_func_ret {
				assert  c.stackdepth > 0, "no value on stack to consume for returning"
					c.stackdepth--
				writeln('pop rax')
			}
			writeln('leave')
			writeln('ret')
		}
		.endfunc {
			if c.does_current_func_ret {
				assert  c.stackdepth == 1, "no value on stack to consume for returning"
					c.stackdepth = 0
				c.does_current_func_ret = false
				writeln('pop rax')
			} else {
				assert  c.stackdepth == 0, "unhandled elements on the stack"
			}
			// unhandled data is perfectly fine
			// just issue a warning

			c.stackdepth = 0 // makes sure
			writeln('leave')
			writeln('ret')

			c.in_func = false
		}
		.if_block {
			c.gen_if()
		}
		.else_block, .endif_block {
			return -1
		}
		.number_lit {
			num := c.tokens[c.pos].lit.u64()
			writeln('push $num')
			
			c.stackdepth++
		}
		.name {
			assert c.tokens[c.pos].lit in c.funcs, "unknown function or value name"
				c.stackdepth -= c.funcs[c.tokens[c.pos].lit].args
			assert  c.stackdepth >= 0, "not enough arguments to consume from stack"
			
			mut argc := c.funcs[c.tokens[c.pos].lit].args
			for argc > 0 {
				argc--
				writeln('pop ${fn_arg_regs[argc]}')
			}
			
			writeln('call ${c.tokens[c.pos].lit}')
			if c.funcs[c.tokens[c.pos].lit].ret {
				writeln('push rax')
					c.stackdepth++
			}
		}
		.deref8, .deref16, .deref32, .deref64, .write8, .write16, .write32, .write64 {panic("")}
		.string_lit, .d_define, .d_enddef, .d_include, .reserve {panic("")}
		.__breakpoint_inspect {
			assert  c.stackdepth > 0, "must contain at least one value on the stack to inspect"
			writeln('mov rax, [rsp-8]')
			writeln('db 0xcc') // int 3
		}
		else {panic("${c.tokens[c.pos]}")}
	}
	return 0
}

fn (mut c GenContext) gen() {
	for {
		if c.pos >= c.tokens.len {
			break
		}
		if c.in_func {
			c.genone()
		} else {
			match c.tokens[c.pos].tok {
				.func {
					c.gen_func()
				}
				else {
					panic("----- ${c.tokens[c.pos]}")
				}
			}
		}
		assert  c.stackdepth >= 0, "stack empty, cannot consume a value"
		c.pos++
	}
	assert !c.in_func, "unexpected EOF, function was not ended"
	assert 'main' in c.funcs, "no main function"

	/* println('----------------')
	println(funcs) */
}

fn (mut c GenContext) gen_func() {
	c.pos++
	assert c.pos < c.tokens.len, "unexpected EOF when parsing function"
	assert c.tokens[c.pos].tok == .name, "function name must not be an intrinsic"
	assert c.tokens[c.pos].lit[0] != `_`, "function name must not contain an underscore"
	fn_name := c.tokens[c.pos].lit

	c.pos++
	assert c.pos < c.tokens.len, "unexpected EOF when parsing function"
	mut fn_rets := false 
	mut fn_args := 0
	if c.tokens[c.pos].tok != .do_block {
		assert c.tokens[c.pos].tok == .number_lit, "function argument count must be a number"
		fn_args = c.tokens[c.pos].lit.int()
		// the way the scanner has been set up, this can never fail. forget the strconv above
		
		assert fn_args <= 6, "function must not accept more that 6 arguments"
		// just a setup for when stack locals come into place

		c.pos++
		assert c.pos < c.tokens.len, "unexpected EOF when parsing function"
		if c.tokens[c.pos].tok == .retarrw {
			fn_rets = true
			c.does_current_func_ret = true
			c.pos++
			assert c.pos < c.tokens.len, "unexpected EOF when parsing function"
		}
		assert c.tokens[c.pos].tok == .do_block, "functions must not contain arguments, for now"
	}
	
	c.funcs[fn_name] = struct {
		ret: fn_rets
		args: fn_args
	}
	c.in_func = true
		c.stackdepth += fn_args // setup stack with args
	writeln('$fn_name:')
	writeln('push rbp')
	writeln('mov rbp, rsp')

	for i := 0 ; i < fn_args ; i++ {
		writeln('push ${fn_arg_regs[i]}')
	}
}