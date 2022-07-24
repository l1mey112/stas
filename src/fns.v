import strings

struct VarT {
	t Token 
	i int
}

[heap]
struct Function{
mut:
	name string
	args []string
	vari int = 1
	vars map[string]VarT
	slit map[string]Token
	body []IR_Statement

	var_offset int
	is_stack_frame bool

	no_return bool
	/*	main ! in do --- end
	        ~~~              */
}

/* struct IR_VAR_INIT {
	var string
}

fn (i IR_VAR_INIT) gen(mut ctx Function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], 255 ; var init \'$i.var\''
} */

struct IR_VAR_INIT_STR {
	var string
	data string
}
fn (i IR_VAR_INIT_STR) gen(mut ctx Function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], $i.data ; var init \'$i.var\''
}

struct IR_VAR_INIT_NUMBER {
	var string
	data u64
}
fn (i IR_VAR_INIT_NUMBER) gen(mut ctx Function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], $i.data ; var init \'$i.var\''
}

// ---- push 

// pushes must increment depth otherwise segfault!

struct IR_PUSH_NUMBER {data u64}
fn (i IR_PUSH_NUMBER) gen(mut ctx Function) string {
	return "	push qword $i.data"
}

struct IR_PUSH_STR_VAR {var string}
fn (i IR_PUSH_STR_VAR) gen(mut ctx Function) string {
	return '	push qword $i.var'
}

struct IR_PUSH_VAR {var string}
fn (i IR_PUSH_VAR) gen(mut ctx Function) string {
	for idx, a in ctx.args {
		if a == i.var {
			return '	push qword [rbp - ${(idx+1)*8}] ; push arg \'$i.var\''
		}
	}
	return '	push qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}]'
}

// ---- push

const arg_regs = [
	'rdi'
	'rsi'
	'rdx'
	'rcx'
	'r8'
	'r9'
]

struct IR_CALL_FUNC {func string argc int no_return bool}
fn (i IR_CALL_FUNC) gen(mut ctx Function) string {
	mut args := strings.new_builder(25)
	mut arg := i.argc
	for _ in 0 .. i.argc {
		arg--
		args.writeln('	pop ${arg_regs[arg]}')
	}
	args.write_string('	call $i.func')
	if !i.no_return {
		args.write_string('\n	push rax')
	}

	return args.str()
}

const (
	escape_ch = {
		`a` : '0x07'
		`b` : '0x08'
		`e` : '0x1B'
		`f` : '0x0C'
		`n` : '0x0A'
		`r` : '0x0D'
		`t` : '0x09'
		`v` : '0x0B'
	}
)

// parse string escape chars
fn parse_string(tok Token, g &Gen) string {
	str := tok.lit[1 .. tok.lit.len-1] // trim quotes
	mut ret := strings.new_builder(str.len)
	if str == '' {
		g.s.error_tok("Empty literal string",tok)
	}
	ret.write_u8(`'`)
	mut pos := 0
	for {
		c := str[pos]
		if c == `\\` {
			pos++
			if pos >= str.len {
				g.s.error_tok("Unhandled escape character",tok)
			}
			nextc := str[pos]
			if nextc == `\\` {
				ret.write_u8(c)
				continue
			}
			escape := escape_ch[nextc] or {
				g.s.error_tok("Escape char '${nextc.ascii_str()}' does not exist",tok)
			}
			if pos+1 >= str.len {
				ret.write_string("', $escape")
				break
			} else {
				ret.write_string("', $escape, '")
			}
		} else {
			ret.write_u8(c)
		}

		pos++
		if pos >= str.len {
			ret.write_u8(`'`)
			break
		}
	}
	return ret.str()
}

fn (mut i Function) gen_rodata(g &Gen) string {
	mut f := strings.new_builder(60)
	for k, d in i.slit {
		f.writeln("$k: db ${parse_string(d,g)}, 0")
	}
	return f.str()
}

fn (mut i Function) gen() string {
	mut f := strings.new_builder(120)
	f.writeln(
		'$i.name:\n' +
		'	push rbp\n' +
		'	mov rbp, rsp'
	)
	for idx, a in i.args {
		f.writeln('	mov qword [rbp - ${(idx+1)*8}], ${arg_regs[idx]} ; arg init \'$a\'')
	}
	i.var_offset = i.args.len*8
	total_stack_frame := i.var_offset + i.vars.len*8
	
	i.is_stack_frame = i.is_stack_frame && total_stack_frame != 0
	
	if i.is_stack_frame {
		f.writeln('	sub rsp, ${total_stack_frame}')
	}

	for mut s in i.body {
		data := s.gen(mut i)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in function] $s")
		}
		f.writeln(data)
	}

	if i.is_stack_frame {
		f.writeln('	leave')
	} else {
		f.writeln('	pop rbp')
	}
	f.write_string('	ret')
	return f.str()
}

struct IR_RETURN {}
fn (i IR_RETURN) gen(mut ctx Function) string {
	return 
	'	pop rax\n' + 
	if ctx.is_stack_frame {
		'	leave\n'
	} else {
		'	pop rbp\n'
	} + '	ret'	
}

fn (i Function) get_var(str string) bool {
	return str in i.args || str in i.vars
}

struct IR_IF{
mut:
	top   []IR_Statement
	body  []IR_Statement
	other []IR_Statement
}

fn (i IR_IF) gen(mut ctx Function) string {
	mut f := strings.new_builder(120)
	prepend := new_if_hash()
	f.writeln('${prepend}_begin:')

	for s in i.top {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in if top] $s")
		}
		f.writeln(data)
	}
	f.writeln(
		'	pop rax ; if conditional\n' +
		'	test al, al'
	)
	f.writeln(if i.other.len != 0 {
		'	je ${prepend}_else'
	} else {
		'	je ${prepend}_end'
	})
	f.writeln('${prepend}_body:')

	for s in i.body {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in if body] $s")
		}
		f.writeln(data)
	}
	if i.other.len != 0 {
		f.writeln('	jmp ${prepend}_end')
		f.writeln('${prepend}_else:')
		for s in i.other {
			data := s.gen(mut ctx)
			if data == '' {
				eprintln(f.str())
				panic("returned none [in if body] $s")
			}
			f.writeln(data)
		}
	}
	f.write_string('${prepend}_end:')
	return f.str()
}

struct IR_WHILE{
mut:
	top   []IR_Statement
	body  []IR_Statement
}

fn (i IR_WHILE) gen(mut ctx Function) string {
	mut f := strings.new_builder(120)
	prepend := new_while_hash()
	f.writeln('${prepend}_begin:')

	for s in i.top {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in while top] $s")
		}
		f.writeln(data)
	}
	f.writeln(
		'	pop rax ; while conditional\n' +
		'	test al, al\n' +
		'	je ${prepend}_end'
	)
	f.writeln('${prepend}:')

	for s in i.body {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in while body] $s")
		}
		f.writeln(data)
	}
	f.writeln('	jmp ${prepend}_begin')
	f.write_string('${prepend}_end:')
	return f.str()
}