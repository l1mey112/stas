git rev-parse --short HEAD | tr -d '\n' > .githash
v -g -cflags -march=native run . $@
exit $? # -d parser_trace 