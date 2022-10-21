set confirm off
set debuginfod enabled off
set pagination off

handle SIGTRAP nopass ignore nostop print

catch signal SIGTRAP
commands
	print $rax
	set $rip = $rip + 1
	continue
end

catch syscall exit
commands
	exit
end

#run