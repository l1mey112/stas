import term
import strings
import time
import hash
import os

struct FilePos {
	row int
	col int
	len int
	filename string
	text string
}

[noreturn]
fn comp_error(err string, fp FilePos) {
	mut str := strings.new_builder(40)
	rrow := fp.row+1
	rcol := fp.col+1
	str.writeln("$fp.filename:$rrow:$rcol: ${term.red(err)}")
	error_line := fp.text.split_into_lines()[fp.row]
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

[heap]
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
}

/* fn (t Token) str() string {
	return "${term.magenta("TOK:$t.row:$t.col")}	${t.token:20} ${term.red(t.lit)}"
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

fn new_for_hash() string {
	mut s := strings.new_builder(4+hash_len) // for_
	s.write_string("for_")

	unsafe { get_unique_hash_str(mut s, hash_len) }
	
	return s.str()
}

fn new_while_hash() string {
	mut s := strings.new_builder(6+hash_len) // while_
	s.write_string("while_")

	unsafe { get_unique_hash_str(mut s, hash_len) }
	
	return s.str()
}