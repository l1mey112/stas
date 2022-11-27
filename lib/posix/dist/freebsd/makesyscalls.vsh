#!/usr/bin/env -S v -g

import io

/*
fn main() {
	// Make a new connection
	mut conn := net.dial_tcp('google.com:80')!
	conn.write_string('GET /index.html HTTP/1.0\r\n\r\n')!
	
	mut r := io.new_buffered_reader(reader: conn)
	for {
		l := r.read_line() or { break }
		println('${l}')
		// Make it nice and obvious that we are doing this line by line
		time.sleep(100 * time.millisecond)
	}
}*/

const sysc_typ_ignore = ['NOSTD', 'UNIMPL', 'OBSOL']

const annotation_prefix = ['_In_z_', '_Out_z_', '_Inout_z_', '_In_', '_Out_', '_Inout_']

const annotation_prefix_operand = ['_In_reads_z_', '_Out_writes_z_', '_Inout_updates_z_',
	'_In_reads_', '_Out_writes_', '_Inout_updates_', '_In_reads_bytes_', '_Out_writes_bytes_',
	'_Inout_updates_bytes']

const fuckthisoff = ['_Contains_long_timet_', '_Contains_long_', '_Contains_long_ptr_',
	'_Contains_ptr_', '_Contains_timet_', '_Contains_ptr_', '_Contains_long_ptr_', '_Contains_timet_',
	'_Contains_long_timet_', '_Contains_ptr_', '_Contains_long_timet_', '_Contains_long_',
	'_Contains_long_ptr_', '_Contains_long_timet_', '_Contains_long_', '_Contains_timet_',
	'_Contains_long_timet_', '_Contains_ptr_', '_Contains_long_ptr_timet_', '_Contains_long_',
	'_Contains_long_timet_', '_Contains_long_ptr_', '_Contains_long_timet_', '_Contains_timet_',
	'_Contains_long_timet_', '_Contains_long_ptr_', '_Contains_long_timet_', '_Contains_long_ptr_',
	'_Contains_long_', '_Contains_long_timet_', '_Contains_long_', '_Contains_long_ptr_',
	'_Contains_long_timet_', '_Contains_long_ptr_', '_Contains_ptr_', '_Contains_long_timet_',
	'_Contains_ptr_', '_Contains_long_ptr_', '_Contains_ptr_', '_Contains_long_ptr_',
	'_Contains_long_timet_', '_Contains_long_ptr_', '_Contains_long_timet_', '_Contains_ptr_',
	'_Contains_long_timet_', '_Contains_long_ptr_', '_Contains_ptr_', '_Contains_long_ptr_',
	'_Contains_ptr_', '_Contains_long_ptr_', '_Contains_long_timet_', '_Contains_long_ptr_',
	'_Contains_long_', '_Contains_long_timet_', '_Contains_long_ptr_', '_Contains_long_timet_',
	'_Contains_long_ptr_', '_Contains_ptr_', '_Contains_long_ptr_', '_Contains_long_',
	'_Contains_long_timet_', '_Contains_long_', '_Contains_long_ptr_', '_Contains_long_timet_',
	'_Contains_ptr_', '_Contains_long_timet_', '_Contains_long_ptr_']

if !exists('syscalls.master') {
	execute(r'wget -L https://raw.githubusercontent.com/freebsd/freebsd-src/main/sys/kern/syscalls.master -O syscalls.master')
}

mut r := io.new_buffered_reader(reader: open('syscalls.master')!)

mut implf  := create('impl.stas')!
mut constf := create('syscalls.stas')!

outer: for {
	mut l := r.read_line() or { break }

	if l.len == 0 || l[0] in [`;`, `#`, `%`] || l.starts_with(' \$FreeBSD\$') {
		continue
	}

	s := l.split_any(' \t').filter(it != '')

	sysc_num := s[0]
	sysc_typ := s[2]

	is_ignore := sysc_typ.split('|').any(it in sysc_typ_ignore)

	if s.len >= 4 && s[3].ends_with('{') {
		if is_ignore {
			for {
				l = r.read_line() or { break outer }
				if l.ends_with('}') {
					break
				}
			}
		} else {
			l = r.read_line() or { break outer }

			mut name := l.trim_space()
			eii := name.index(' ') or { break }
			name = name.substr_ni(eii + 1, -1).trim_space()

			if i := name.index('(') {
				name = name.substr(0, i)
			}

			mut argl := []string{}

			for {
				l = r.read_line() or { break outer }

				if l.ends_with('}') {
					break
				}
				if l.ends_with(');') {
					continue
				}

				mut arg := l.trim_space().trim_right(',')

				for an in annotation_prefix {
					if arg.starts_with(an) {
						arg = arg.trim_left(an).trim_space()
						ii := arg.index(')') or { break }
						arg = arg.substr_ni(ii + 1, -1).trim_space()

						break
					}
				}

				arg = arg.trim_left('pt_')
				arg = arg.trim_left('opt_')

				arg = arg.trim_space()

				for ccc in fuckthisoff {
					if arg.starts_with(ccc) {
						arg = arg.trim_left(ccc)
						break
					}
				}

				argl << arg
			}
			mut argannot := ''
			for arg in argl {
				argannot += '\'${arg}\' '
			}
			out :=
'; ( ${argannot}-- c )
fn ${name} ${argl.len} 1 {
	sys_${name} syscall${argl.len}
}'
			cons := 'const sys_${name} ${sysc_num}'
			implf.writeln(out)!
			constf.writeln(cons)!
		}
	}
}
