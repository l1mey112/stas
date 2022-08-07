import term
import strings
import hash
import os

struct CompilePrefs {
mut:
	use_dump bool
}

[if trace?]
fn trace(str string, func string){
	eprintln("$func :: $str")
}

[inline]
fn info(str string)string{
	return term.blue(str)
}

[inline]
fn notice(str string)string{
	return term.yellow(str)
}

[inline]
fn bold(str string)string{
	return term.bold(str)
}

[inline]
fn cindex(str string)string{
	return term.magenta(str)
}

struct OpenedFile {
	lit string
mut:
	lines []string
}

struct FileCache {
mut:
	files map[string]OpenedFile
}

fn stas_panic_msg_tok(msg string, fpos FilePos)string{
	return '"stas panic: ${fpos.non_quoted()}\\n       msg: $msg\\n"'
}

fn (mut f FileCache) open_file(filepath string, search_path string) (string, string) {
	if os.is_dir(filepath) {
		eprintln("Cannot accept directories!")
		exit(1)
	}
	mut relpath := ''
	mut data := ''
	if !os.exists(filepath) && search_path != '' {
		assert os.is_dir(search_path)
		relpath = os.join_path_single(search_path,filepath)
		data = os.read_file(relpath) or {
			eprintln("Cannot find file '$relpath'!")
			exit(1)
		}
	} else {
		data = os.read_file(filepath) or {
			eprintln("Cannot find file '$filepath'!")
			exit(1)
		}
		relpath = filepath
	}
	f.files[relpath] = OpenedFile {
		lit: data
	}
	return f.files[relpath].lit, relpath
}

[inline]
fn (mut f FileCache) get_file(filepath string) string {
	file := f.files[filepath] or {
		panic("failed to retrieve file '$filepath'!")
	}
	return file.lit
}

fn (mut f FileCache) get_lines(filepath string) []string {
	mut file := f.files[filepath] or {
		panic("failed to retrieve file '$filepath'!")
	}
	if file.lines.len == 0 {
		file.lines = file.lit.split_into_lines()
	}
	return file.lines
}

struct FilePos {
	row int
	col int
	filename string
mut:
	len int
}

fn (fp FilePos) non_quoted() string {
	return "$fp.filename:${fp.row+1}:${fp.col+1}"
}

fn (fp FilePos) str() string {
	return "'$fp.filename:${fp.row+1}:${fp.col+1}'"
}

fn (fp FilePos) to(fp_next FilePos) FilePos {
	if fp == fp_next {
		return fp
	}
	if fp.row != fp_next.row {
		return fp
	}
	mut fp_ret := fp

	diff := fp_next.col - (fp_ret.col + fp_ret.len)
	
	fp_ret.len += diff + fp_next.len
	return fp_ret
}


fn (a FilePos) + (b FilePos) FilePos {
	mut r := a
	r.len += b.len
	return r
}

[inline]
fn min<T>(a T, b T) T {
	return if a < b { a } else { b }
}

[inline]
fn max<T>(a T, b T) T {
	return if a > b { a } else { b }
}

fn underline_source_token(fp FilePos) string {
	error_line := file_container.get_lines(fp.filename)

	mut str := strings.new_builder(30)
	prefix := "${fp.row+1:3} | "
	strline := prefix+error_line[fp.row]
	tabcount := strline.count('\t') * 3
	str.writeln(strline.normalize_tabs(4))
	str.ensure_cap(fp.col+prefix.len+fp.len+1)
	for _ in 0 .. fp.col+prefix.len+tabcount {str.write_u8(` `)}
	for _ in 0 .. fp.len {str.write_u8(`~`)}
	return str.str()
}

fn create_underline(fp FilePos, size int) string {
	mut str := strings.new_builder(80)
	rrow := fp.row+1
	error_line := file_container.get_lines(fp.filename)
	for row in max(0,rrow-size-1)..min(error_line.len,rrow+size) {
		prefix := "${row+1:3} | "
		strline := prefix+error_line[row]
		tabcount := strline.count('\t') * 3
		str.writeln(strline.normalize_tabs(4))
		if row == fp.row {
			str.ensure_cap(fp.col+prefix.len+fp.len+1)
			for _ in 0 .. fp.col+prefix.len+tabcount {str.write_u8(` `)}
			for _ in 0 .. fp.len {str.write_u8(`~`)}
			str.write_u8(`\n`)
		}
	}
	return str.str()
}

fn print_error(err string, fp FilePos) {
	mut str := strings.new_builder(80)
	str.writeln("${bold(fp.non_quoted())}: ${term.red(err)}")
	// show file context
	str.write_string(create_underline(fp,2))
	eprint(str.str())
}

[noreturn]
fn comp_error(err string, fp FilePos) {
	print_error(err,fp)
	exit(1)
}

fn print_error_file(err string, filename string){
	mut str := strings.new_builder(60)
	str.writeln("$filename: ${term.red(err)}")
	eprint(str.str())
}

[noreturn]
fn comp_error_file(err string, filename string){
	print_error_file(err, filename)
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

const hash_len = 12

[unsafe]
fn get_unique_hash_str(mut s strings.Builder,length int){
//	mut static index := 1
//	mut x := index
	mut static index := 0

//	for _ in 0..length {
//		n := u8(x % 26 + 65)
//		x = ((x >> 16) ^ x) * 0x45d9f3b
//		x = ((x >> 16) ^ x) * 0x45d9f3b
//		x = (x >> 16) ^ x
//		s.write_u8(n) 
//	}

	s.write_string('${index:005}')

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

fn new_match_hash() string {
	mut s := strings.new_builder(6+hash_len) // match_
	s.write_string("match_")

	unsafe { get_unique_hash_str(mut s, hash_len) }
	
	return s.str()
}

fn new_next_hash() string {
	mut s := strings.new_builder(6+hash_len) // .next_
	s.write_string(".next_")
	unsafe { get_unique_hash_str(mut s, hash_len) }
	return s.str()
}

const annotation_padding = 30
fn annotate(line string, comment string) string {
	$if !use_annotations ? {
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