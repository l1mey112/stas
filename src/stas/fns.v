module stas

import strings

struct VarT {
pub:
	t Token 
	loc int
	typ BuiltinType
	is_buf bool
	size int = 8
}

struct ArgT {
pub:
	name string
	loc int
	typ BuiltinType
	is_buf bool
}

interface DataT {
	loc int
	typ BuiltinType
	is_buf bool
}

fn (t []ArgT) is_in(b string)bool {
	for a in t {
		if a.name == b {
			return true
		}
	}
	return false
}

fn (t []ArgT) get(b string) ?ArgT {
	for a in t {
		if a.name == b {
			return a
		}
	}
	return none
}

[heap]
struct Function {
pub mut:
	name string

	args []ArgT
	vars map[string]VarT
	slit map[string]Token // merge slit and vars?
	body []IR_Statement

	is_stack_frame bool
	stack_frame int

	fn_calls []string // dead function elimination
	
	pos FilePos
	ret BuiltinType
}

/* struct IR_VAR_INIT {
	var string
}

fn (i IR_VAR_INIT) gen(mut ctx Function) string {
	return '	mov qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}], 255 ; var init \'$i.var\''
} */

struct IR_VAR_INIT_STR {
	loc int
	data string
	pos FilePos
}

fn (i IR_VAR_INIT_STR) gen(mut ctx Function) string {
	return "\t"+annotate('mov qword [rbp - $i.loc], $i.data','; VAR STACK INIT')
}

struct IR_VAR_INIT_NUMBER {
	loc int
	data u64
	pos FilePos
}
fn (i IR_VAR_INIT_NUMBER) gen(mut ctx Function) string {
	return "\t"+annotate('mov qword [rbp - $i.loc], $i.data','; VAR STACK INIT')
}

struct IR_POP_NUM_VAR {loc int pos FilePos typ BuiltinType}
fn (i IR_POP_NUM_VAR) gen(mut ctx Function) string {
	return "\t"+annotate('pop qword [rbp - $i.loc]','; POP INTO VAR')
}

// ---- push 

struct IR_PUSH_NUMBER {data u64 pos FilePos}
fn (i IR_PUSH_NUMBER) gen(mut ctx Function) string {
	return "\t"+annotate('push qword $i.data','; <- LITERAL NUMBER')
}

struct IR_PUSH_BOOL {data bool pos FilePos}
fn (i IR_PUSH_BOOL) gen(mut ctx Function) string {
	return "\t"+annotate('push qword ${int(i.data)}','; <- LITERAL BOOLEAN')
}

struct IR_PUSH_STR_VAR {var string pos FilePos}
fn (i IR_PUSH_STR_VAR) gen(mut ctx Function) string {
	return '\t'+annotate('push qword ${i.var}','; <- STRING VAR')
}

struct IR_PUSH_VAR {loc int typ BuiltinType is_buf bool name string pos FilePos}
fn (i IR_PUSH_VAR) gen(mut ctx Function) string {
	/* for idx, a in ctx.args {
		if a.name == i.var {
			return '\t'+annotate("push qword [rbp - $i.loc]","; <- PUSH ARG '$i.var'")
		}
	}
	return '\t'+annotate("push qword [rbp - ${ctx.var_offset+ctx.vars[i.var].i*8}]","; <- PUSH VAR '$i.var'") */

	if !i.is_buf {
		return '	push qword [rbp - $i.loc]'
	}
	if i.loc != 0 {
		return 
		'\tmov rax, rbp\n' +
		'\tsub rax, $i.loc\n' +
		'\t'+annotate("push rax","; <- PUSH BUFFER PTR '$i.name'")
	} else {
		return '\t'+annotate("push rbp","; <- PUSH BUFFER PTR '$i.name'")
	}
}

struct IR_PUSH_VAR_PTR {loc int typ BuiltinType is_buf bool name string pos FilePos}
fn (i IR_PUSH_VAR_PTR) gen(mut ctx Function) string {
	return 
	'\tmov rax, rbp\n' +
	'\tsub rax, $i.loc\n' +
	'\tpush rax'
	//return '\tpush rbp - $i.loc'
}

/* struct IR_PUSH_BUF_PTR {var string pos FilePos}
fn (i IR_PUSH_BUF_PTR) gen(mut ctx Function) string {
	mut offset := 0
	for name, buf_t in ctx.bufs {
		if name == i.var {
			return 
				'\tmov rax, rbp\n' +
				'\tsub rax, ${ctx.buf_offset+offset+buf_t} ; ress>>\n' +
				'\t'+annotate("push rax","; <- PUSH BUFFER PTR '$i.var'")
		}
		offset += buf_t
	}
	panic("")
} */

// ---- push

const arg_regs = [
	'rdi'
	'rsi'
	'rdx'
	'rcx'
	'r8'
	'r9'
]

struct IR_CALL_FUNC {func string argc int no_return bool pos FilePos}
fn (i IR_CALL_FUNC) gen(mut ctx Function) string {
	mut args := strings.new_builder(40)
	mut arg := i.argc
	for _ in 0 .. i.argc {
		arg--
		arg_statement := 'pop ${arg_regs[arg]}'
		args.writeln('\t${annotate(arg_statement,'; + INIT FUNCTION ARGS')}')
	}
	args.write_string('\t${annotate('call $i.func','; + CALL FUNCTION')}')
	if !i.no_return {
		args.write_string('\n\t${annotate('push rax','; + RETURN VALUE FUNCTION')}')
	}

	return args.str()
}

const (
	escape_ch = {
		`a` : u8(0x07)
		`b` : 0x08
		`e` : 0x1B
		`f` : 0x0C
		`n` : 0x0A
		`r` : 0x0D
		`t` : 0x09
		`v` : 0x0B
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
		'$i.name:\n' +
		'	push rbp\n' +
		'	mov rbp, rsp'
	)
	for idx, a in i.args {
		init_statement := 'mov qword [rbp - ${(idx+1)*8}], ${arg_regs[idx]}'
		f.writeln('\t${annotate(init_statement,'; | ARG VAR STACK INIT ' + "\'$a.name\'")}')
	}
	if i.is_stack_frame {
		init_statement := "sub rsp, $i.stack_frame"
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
	if i.ret.typ != .void_t {
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

struct IR_RETURN {pos FilePos}
fn (i IR_RETURN) gen(mut ctx Function) string {
	return 
	'\t${annotate('pop rax',"; | EARLY RETURN VALUE")}\n' + 
	if ctx.is_stack_frame {
		'\t${annotate('leave','; | \n')}\n'
	} else {
		'\t${annotate('pop rbp','; | ')}\n'
	} + '\t${annotate('ret',"; | EARLY RETURN TO CALLER")}'	
}

fn (i Function) get_var(str string) ?DataT {
	return i.vars[str] or {
		for idx, v in i.args {
			if v.name == str {
				return i.args[idx]
			} 
		}
		return none 	
	}
}

struct IR_IF{
	pos FilePos
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
	pos FilePos
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

struct MatchBody {
mut:
	top  []IR_Statement
	body []IR_Statement
}

struct IR_MATCH{
	pos FilePos
mut:
	top  []IR_Statement
	body []MatchBody
}

// NOTE: the RBX register is something that should be preserved
//       over the entirety of the match statement or any statement.
//       should never be used in lesser statements

fn (i IR_MATCH) gen(mut ctx Function) string {
	mut match_header := strings.new_builder(120)
	mut match_bodies := strings.new_builder(120)

	prepend := '${ctx.name}_'+new_match_hash()
	end_jmp := '${prepend}_end'

	for s in i.top {
		data := s.gen(mut ctx)
		if data == '' {
			panic("returned none [in match body] $s")
		}
		match_header.writeln(data)
	}
	match_header.writeln('	pop rbx')
	for idx, body in i.body {
		hash := '${prepend}_$idx'
		for s in body.top {
			data := s.gen(mut ctx)
			if data == '' {
				panic("returned none [in match body] $s")
			}
			match_header.writeln(data)
		}
		match_header.writeln(
			'	pop rax\n' +
			'	cmp rax, rbx\n' +
			'	je $hash'
		)
		match_bodies.writeln('${hash}:')
		for s in body.body {
			data := s.gen(mut ctx)
			if data == '' {
				panic("returned none [in match body] $s")
			}
			match_bodies.writeln(data)
		}
		match_bodies.writeln('	jmp $end_jmp')
	}
	match_header.writeln('	jmp $end_jmp')
	match_bodies.write_string('${end_jmp}:')
	return match_header.str() + match_bodies.str()
}