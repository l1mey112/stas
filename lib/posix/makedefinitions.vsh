#!/usr/bin/env -S v -g

import regex
import io
import os

const mainquery = r'\s*#\s*define\s*.*'

const inclquery = r'\s*#\s*include\s*.*'

mut files := os.args[1..]

mut re := regex.regex_opt(mainquery) or { panic(err) }
mut ire := regex.regex_opt(inclquery) or { panic(err) }

follow_inc := false

for fp in files {
	ff := open('/usr/include/${fp}') or {
		eprintln('COULD NOT OPEN: ${fp}')
		continue
	}
	mut r := io.new_buffered_reader(reader: ff)

	for {
		l := r.read_line() or { break }

		if re.matches_string(l) {
			line := l.all_after('define').normalize_tabs(1).trim_space().split_nth(' ',
				2)
			if line.len != 2 {
				continue
			}
			name := line[0]
			data := line[1].replace_each(['/*', ';', '//', ';', '*/', ''])
			println("const ${name} ${data}")
		} else if follow_inc {
			if ire.matches_string(l) {
				line := l.all_after('include').all_before_last('/*').all_before_last('//').trim_space().trim_left('<').trim_right('>')
				eprintln('ADDING ${line}')
				if line !in files {
					files << line
				}
			}
		}
	}

	r.free()
}
