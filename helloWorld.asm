# my first mips program

# global variables
.data 
msg: .asciiz "Hello, World!"

.text
main:
	
# system call for printing
li $v0, 4
la $a0, msg
syscall
