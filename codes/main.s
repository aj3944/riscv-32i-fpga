/*
* Assembly 'reset handler' function upon startup.
*/
.global reset_handler
.type reset_handler,@function
reset_handler:
	addi x1, x0, 1
	addi x2, x0, 2
loop:
	add x1, x1, x2
	j loop