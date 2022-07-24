import strings

struct VarT {
	t Token 
	i int
}

[heap]
struct IR_function{
mut:
	name string
	args []string
	vari int = 1
	vars map[string]VarT
	slit map[string]Token
	body []IR_Statement

	var_offset int
	is_stack_frame bool
}

/* struct IR_VAR_INIT {
	var string
}

fn (i IR_VAR_INIT) gen(ctx &IR_function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], 255 ; var init \'$i.var\''
} */

struct IR_VAR_INIT_STR {
	var string
	data string
}
fn (i IR_VAR_INIT_STR) gen(ctx &IR_function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], $i.data ; var init \'$i.var\''
}

struct IR_VAR_INIT_NUMBER {
	var string
	data u64
}
fn (i IR_VAR_INIT_NUMBER) gen(ctx &IR_function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], $i.data ; var init \'$i.var\''
}

struct IR_PUSH_STR_VAR {var string}
fn (i IR_PUSH_STR_VAR) gen(ctx &IR_function) string {
	return '	push qword $i.var'
}

struct IR_PUSH_VAR {var string}
fn (i IR_PUSH_VAR) gen(ctx &IR_function) string {
	for idx, a in ctx.args {
		if a == i.var {
			return '	push qword [rbp - ${(idx+1)*8}] ; push arg \'$i.var\''
		}
	}
	return '	push qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}]'
}

const arg_regs = [
	'rdi'
	'rsi'
	'rdx'
	'rcx'
	'r8'
	'r9'
]

struct IR_CALL_FUNC {func string argc int}
fn (i IR_CALL_FUNC) gen(ctx &IR_function) string {
	mut args := strings.new_builder(15)
	mut arg := i.argc
	for _ in 0 .. i.argc {
		arg--
		args.writeln('	pop ${arg_regs[arg]}')
	}
	args.write_string('	call $i.func')

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

fn (mut i IR_function) gen_rodata(g &Gen) string {
	mut f := strings.new_builder(60)
	for k, d in i.slit {
		f.writeln("$k: db ${parse_string(d,g)}, 0")
	}
	return f.str()
}

fn (mut i IR_function) gen() string {
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
	if i.is_stack_frame {
		total_stack_frame := i.var_offset + i.vars.len*8
		f.writeln('	sub rsp, ${total_stack_frame}')
	}

	for s in i.body {
		data := s.gen(i)
		if data == '' {
			eprintln(f.str())
			panic("none $s")
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

fn (i IR_function) get_var(str string) bool {
	return str in i.args || str in i.vars
}

struct IR_if{
mut:
	top   []IR_Statement
	body  []IR_Statement
	other []IR_Statement
}

fn (i IR_if) gen(ctx &IR_function) string {
	return ''
}

struct IR_while{
mut:
	top   []IR_Statement
	body  []IR_Statement
}

fn (i IR_while) gen(ctx &IR_function) string {
	mut f := strings.new_builder(120)
	prepend := new_while_hash()
	f.writeln('${prepend}_begin:')

	for s in i.top {
		data := s.gen(ctx)
		if data == '' {
			eprintln(f.str())
			panic("none $s")
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
		data := s.gen(ctx)
		if data == '' {
			eprintln(f.str())
			panic("none $s")
		}
		f.writeln(data)
	}
	f.writeln('	jmp ${prepend}_begin')
	f.write_string('${prepend}_end:')
	return f.str()
}