/*
* Assembly 'reset handler' function upon startup.
*/
.global reset_handler
.type reset_handler,@function
reset_handler:
	addi x1, x0, 1
	mov x1, 66FF
led_on:
	ecall
