import term
import strings
import hash
import os

struct FileContainer {
mut:
	files map[string]string
}

fn (mut f FileContainer) open_file(filepath string, search_path string) string {
	if os.is_dir(filepath) {
		eprintln("Cannot pass directory!!!! TODO: UNIFIED ERROR INTERFACE")
		exit(1)
	}
	mut data := ''
	if !os.exists(filepath) && search_path != '' {
		assert os.is_dir(search_path)
		relative_path := os.join_path_single(search_path,filepath)
		data = os.read_file(relative_path) or {
			eprintln("Cannot find file '$relative_path'!")
			exit(1)
		}
	} else {
		data = os.read_file(filepath) or {
			eprintln("Cannot find file '$filepath'!")
			exit(1)
		}
	}
	f.files[filepath] = data
	return f.files[filepath]
}

[inline]
fn (mut f FileContainer) get_file(filepath string) string {
	return f.files[filepath] or {
		panic("failed to retrieve file '$filepath'!")
	}
}

struct FilePos {
	row int
	col int
	len int
	filename string
}

[noreturn]
fn comp_error(err string, fp FilePos) {
	file_contents := file_container.get_file(fp.filename)
	mut str := strings.new_builder(40)
	rrow := fp.row+1
	rcol := fp.col+1
	str.writeln("$fp.filename:$rrow:$rcol: ${term.red(err)}")
	error_line := file_contents.split_into_lines()[fp.row]
	prefix := "$rrow | "
	str.writeln(prefix+error_line)
	str.ensure_cap(fp.col+prefix.len+fp.len)
	for _ in 0 .. fp.col+prefix.len {str.write_u8(` `)}
	for _ in 0 .. fp.len {str.write_u8(`~`)}
	eprintln(str.str())
	exit(1)
}

fn get_hash_str(filename string)string{
	length := 8
	mut x := hash.sum64_string(os.abs_path(filename),0)

	mut s := strings.new_builder(length)

	for _ in 0..length {
		n := u8(x % 26 + 97)
		x = ((x >> 16) ^ x) * 0x45d9f3b
		x = ((x >> 16) ^ x) * 0x45d9f3b
		x = (x >> 16) ^ x
		s.write_u8(n) 
	}

	return s.str()
}

/* [heap]
struct Debug {
	is_debug bool
mut:
	bench time.StopWatch
	total time.Duration
}

[inline]
fn (mut d Debug) start(info string){
	if _unlikely_(d.is_debug) {
		println(term.green("Start: $info"))
		d.bench = time.new_stopwatch()
	}
}

[inline]
fn (d &Debug) info(info string){
	if _unlikely_(d.is_debug) {
		println(/* term.yellow */("  :: $info"))
	}
}

[inline]
fn (mut d Debug) end(){
	if _unlikely_(d.is_debug) {
		elapsed := d.bench.elapsed()
		println(term.red("End: $elapsed"))
		d.total = d.total + elapsed
	}
}

[inline]
fn (mut d Debug) end_all(){
	if _unlikely_(d.is_debug) {
		d.end()
		println(term.magenta("--- Finished, $d.total elapsed ---"))
	}
} */

const hash_len = 12

[unsafe]
fn get_unique_hash_str(mut s strings.Builder,length int){
	mut static index := 1
	mut x := index

	for _ in 0..length {
		n := u8(x % 26 + 65)
		x = ((x >> 16) ^ x) * 0x45d9f3b
		x = ((x >> 16) ^ x) * 0x45d9f3b
		x = (x >> 16) ^ x
		s.write_u8(n) 
	}

	index++
}

fn new_lit_hash() string {
	mut s := strings.new_builder(4+hash_len) // lit_
	s.write_string("lit_")

	unsafe { get_unique_hash_str(mut s, hash_len) }
	
	return s.str()
}

fn new_if_hash() string {
	mut s := strings.new_builder(3+hash_len) // if_
	s.write_string("if_")

	unsafe { get_unique_hash_str(mut s, hash_len) }
	
	return s.str()
}

fn new_while_hash() string {
	mut s := strings.new_builder(6+hash_len) // while_
	s.write_string("while_")

	unsafe { get_unique_hash_str(mut s, hash_len) }
	
	return s.str()
}

const annotation_padding = 30
fn annotate(line string, comment string) string {
	$if no_annotations ? {
		return line
	} $else {
		padding := annotation_padding-line.len
		mut str := strings.new_builder(annotation_padding+comment.len)
		/* v -d trace_malloc to check if we are allocating optimally */
		str.write_string(line)
		for i := 0 ; i < padding ; i++ {
			str.write_u8(` `)
		}
		str.write_string(comment)
		return str.str()
	}
}