import strings

struct VarT {
	t Token 
	i int
}
struct BufT {
	s int
}

[heap]
struct Function{
mut:
	name string
	args []string
	vari int = 1
	vars map[string]VarT
	bufs map[string]BufT
	slit map[string]Token
	body []IR_Statement

	var_offset int
	buf_offset int
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
	return "\t"+annotate('mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], $i.data','; VAR STACK INIT \'$i.var\'')
}

struct IR_VAR_INIT_NUMBER {
	var string
	data u64
}
fn (i IR_VAR_INIT_NUMBER) gen(mut ctx Function) string {
	return "\t"+annotate('mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], $i.data','; VAR STACK INIT \'$i.var\'')
}

struct IR_POP_NUM_VAR {var string}
fn (i IR_POP_NUM_VAR) gen(mut ctx Function) string {
	return "\t"+annotate('pop qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}]','; POP INTO VAR \'$i.var\'')
}

// ---- push 

struct IR_PUSH_NUMBER {data u64}
fn (i IR_PUSH_NUMBER) gen(mut ctx Function) string {
	return "\t"+annotate('push qword $i.data','; <- LITERAL NUMBER')
}

struct IR_PUSH_STR_VAR {var string}
fn (i IR_PUSH_STR_VAR) gen(mut ctx Function) string {
	return '\t'+annotate('push qword $i.var','; <- STRING VAR')
}

struct IR_PUSH_VAR {var string}
fn (i IR_PUSH_VAR) gen(mut ctx Function) string {
	for idx, a in ctx.args {
		if a == i.var {
			return '\t'+annotate("push qword [rbp - ${(idx+1)*8}]","; <- PUSH ARG '$i.var'")
		}
	}
	return '\t'+annotate("push qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}]","; <- PUSH VAR '$i.var'")
}

struct IR_PUSH_BUF_PTR {var string}
fn (i IR_PUSH_BUF_PTR) gen(mut ctx Function) string {
	mut offset := 0
	for name, buf_t in ctx.bufs {
		if name == i.var {
			return 
				'\tmov rax, rbp\n' +
				'\tsub rax, ${ctx.buf_offset+offset+buf_t.s}\n' +
				'\t'+annotate("push rax","; <- PUSH BUFFER PTR '$i.var'")
		}
		offset += buf_t.s
	}
	panic("")
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
	mut args := strings.new_builder(40)
	mut arg := i.argc
	for _ in 0 .. i.argc {
		arg--
		arg_statement := 'pop ${arg_regs[arg]}'
		args.writeln('\n\t${annotate(arg_statement,'; + INIT FUNCTION ARGS')}')
	}
	args.write_string('\t${annotate('call $i.func','; + CALL FUNCTION')}')
	if !i.no_return {
		args.write_string('\n\t${annotate('push rax','; + RETURN VALUE FUNCTION')}')
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
		error_tok("Empty literal string",tok)
	}
	ret.write_u8(`'`)
	mut pos := 0
	for {
		c := str[pos]
		if c == `\\` {
			pos++
			if pos >= str.len {
				error_tok("Unhandled escape character",tok)
			}
			nextc := str[pos]
			if nextc == `\\` {
				ret.write_u8(c)
				continue
			}
			escape := escape_ch[nextc] or {
				error_tok("Escape char '${nextc.ascii_str()}' does not exist",tok)
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
		f.writeln("\t$k: db ${parse_string(d,g)}, 0")
	}
	return f.str()
}

fn (mut i Function) gen() string {
	mut f := strings.new_builder(120)
	f.writeln(
		annotate('$i.name:','    ; ----- FUNCTION -----\n') +
		'	push rbp\n' +
		'	mov rbp, rsp'
	)
	for idx, a in i.args {
		init_statement := 'mov qword [rbp - ${(idx+1)*8}], ${arg_regs[idx]}'
		f.writeln('\t${annotate(init_statement,'; | ARG VAR STACK INIT ' + "\'$a\'")}')
	}
	i.var_offset = i.args.len*8
	i.buf_offset = i.var_offset + i.vars.len*8
	mut total_buf_size := 0
	for _, b in i.bufs {
		total_buf_size += b.s
	} 
	total_stack_frame := i.buf_offset + total_buf_size

	// i seriously do not know if this next line is useless, ill figure it out
	i.is_stack_frame = i.is_stack_frame && total_stack_frame != 0
	
	if i.is_stack_frame {
		init_statement := "sub rsp, $total_stack_frame"
		f.writeln('\t${annotate(init_statement,"; | CREATE STACK FRAME")}')
	}

	for mut s in i.body {
		data := s.gen(mut i)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in function] $s")
		}
		f.writeln(data)
	}
	if !i.no_return {
		f.writeln('\t${annotate('pop rax',"; | RETURN VALUE FUNCTION")}')
	}
	if i.is_stack_frame {
		f.writeln('\t${annotate('leave','; | RELEASE STACK FRAME')}')
	} else {
		f.writeln('	pop rbp')
	}
	f.write_string('\t${annotate('ret','; | RETURN TO CALLER')}')
	return f.str()
}

struct IR_RETURN {}
fn (i IR_RETURN) gen(mut ctx Function) string {
	return 
	'\t${annotate('pop rax',"; | EARLY RETURN VALUE")}\n' + 
	if ctx.is_stack_frame {
		'\t${annotate('leave','; | \n')}'
	} else {
		'\t${annotate('pop rbp','; | ')}\n'
	} + '\t${annotate('ret',"; | EARLY RETURN TO CALLER")}'	
}

fn (i Function) get_var(str string) bool {
	return str in i.args || str in i.vars
}

fn (i Function) get_buf(str string) bool {
	return str in i.bufs
}

struct IR_IF{
mut:
	top   []IR_Statement
	body  []IR_Statement
	other []IR_Statement
}

fn (i IR_IF) gen(mut ctx Function) string {
	mut f := strings.new_builder(220)
	prepend := '${ctx.name}_'+new_if_hash()
	f.writeln(annotate('${prepend}_begin:','    ; ?? IF - START'))

	for s in i.top {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in if top] $s")
		}
		f.writeln(data)
	}
	f.writeln(
		"	${annotate("pop rax","; ?? IF - CHECK CONDITIONAL")}\n" +
		'	test al, al'
	)
	f.writeln(if i.other.len != 0 {
		'	je ${prepend}_else'
	} else {
		'	je ${prepend}_end'
	})
	f.writeln(annotate('${prepend}_body:','    ; ?? IF - BODY'))

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
		f.writeln(annotate('${prepend}_else:','    ; ?? IF - ELSE'))
		for s in i.other {
			data := s.gen(mut ctx)
			if data == '' {
				eprintln(f.str())
				panic("returned none [in if body] $s")
			}
			f.writeln(data)
		}
	}
	f.write_string(annotate('${prepend}_end:','    ; ?? IF - END'))
	return f.str()
}

struct IR_WHILE{
mut:
	top   []IR_Statement
	body  []IR_Statement
}

fn (i IR_WHILE) gen(mut ctx Function) string {
	mut f := strings.new_builder(120)
	prepend := '${ctx.name}_'+new_while_hash()
	f.writeln(annotate('${prepend}_begin:','    ; <> WHILE - START'))

	for s in i.top {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in while top] $s")
		}
		f.writeln(data)
	}
	f.writeln(
		'	${annotate("pop rax","; <> WHILE - CHECK CONDITIONAL")}\n' +
		'	test al, al\n' +
		'	je ${prepend}_end'
	)
	f.writeln(annotate('${prepend}:','    ; <> WHILE - BODY'))

	for s in i.body {
		data := s.gen(mut ctx)
		if data == '' {
			eprintln(f.str())
			panic("returned none [in while body] $s")
		}
		f.writeln(data)
	}
	f.writeln('	jmp ${prepend}_begin')
	f.write_string(annotate('${prepend}_end:','    ; <> WHILE - END'))
	return f.str()
}