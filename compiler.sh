git rev-parse --short HEAD | tr -d '\n' > .githash
v -g run . $@
exit $?