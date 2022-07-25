git rev-parse --short HEAD | tr -d '\n' > .githash
v -g -enable-globals -cflags -march=native run . $@
exit $? # -d parser_trace 