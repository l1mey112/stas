#!/bin/env v

import os
import term

fn uhoh(f string) {
	eprintln(term.bold(term.red('error: ')) + f)
	exit(1)
}

fn testp(f string) string {
	return './tests/' + f.replace('.stas', '')
}

fn exec(cmd string) string {
	println(cmd)
	
	code := execute(cmd)

	if code.exit_code != 0 {
		uhoh(term.bold('invocation failed\n') + code.output)
	}

	return code.output
}

fn run_stas(f string) string {
	exe := testp(f)

	exec('./stas tests/${f} -o $exe')

	return exec('$exe')
}

fn gen_out(f string) {
	out := testp(f) + '.out'
	
	a := run_stas(f)

	write_file(out, a) or { panic(err) }
}

fn assert_out(f string) {
	out := testp(f) + '.out'
	
	a := run_stas(f)
	b := read_file(out) or { panic(err) }

	if a != b {
		uhoh('\'$out\'')
	}
}

if !exists('./stas') {
	panic('stas binary does not exist')
}

mut generate := false

if os.args.len == 2 {
	if os.args[1] == 'generate' {
		generate = true
	}
}

for f in ls('tests')!.filter(it.ends_with('.stas')) {
	if generate {
		gen_out(f)
	} else {
		assert_out(f)
	}
}