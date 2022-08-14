/* import stas



/*
	test cases are sort of irrelevant because it does not compile any binaries
*/

// does not compile or generate programs
// nor does it verify binaries

// it just makes sure that a wide range of files can
// be parsed, and that core stas features remain untouched

const files = @VMODROOT+'/tests/testdata'

fn test_unused_fns() {
	fns := stas.parse_entirety('$files/func_unused.stas')
	assert fns['main'].fn_calls.len == 0
	assert fns['unused_func'].fn_calls.len == 1
	assert fns['unused_func'].ret == .ptr_t
	assert fns['used_func'].fn_calls.len == 0
	assert fns['used_func'].ret == .void_t
}

fn test_empty_headers() {
	stas.check_entirety(stas.parse_entirety('$files/if_header.stas'))
	stas.check_entirety(stas.parse_entirety('$files/match_header.stas'))
	stas.check_entirety(stas.parse_entirety('$files/while_header.stas'))
}

fn test_basic_programs() {
	stas.check_entirety(stas.parse_entirety('$files/add.stas'))
	stas.check_entirety(stas.parse_entirety('$files/addup.stas'))
	stas.check_entirety(stas.parse_entirety('$files/arrays.stas'))
}

fn test_complex() {
	stas.check_entirety(stas.parse_entirety('$files/brainfuck.stas'))
}

/* fn test_arguments_variables() {
	fns := stas.parse_entirety('$files/arguments_variables.stas')
	stas.check_entirety(fns)

	main := fns['main']
	assert main.vars.keys() == ['int_var','bool_var','str_var']
	assert 'buf_var' in main.vars.keys()

	args_func := fns['args_func']
	assert args_func.args.len == 3
	assert args_func.args[0].name == 'a'
	assert args_func.args[0].typ == .int_t
	assert args_func.args[1].name == 'b'
	assert args_func.args[1].typ == .bool_t
	assert args_func.args[2].name == 'c'
	assert args_func.args[2].typ == .ptr_t
} */ */