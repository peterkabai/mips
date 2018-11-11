.data
fibonacci: .word 1,1,2,3,5,8,13
spacer: .asciiz ", "
length: .word 7

.text  
main:
li $t0, 0
la $s0, fibonacci

# while i != length
while:
lw $t1, length
beq $t0, $t1, endwhile

sll $t2, $t0, 2
add $t3, $s0, $t2
	
# print fibonacci[i]
lw $a0, 0($t3)
addi $v0, $zero, 1
syscall

# length - 1
addi $t4, $t1, -1
beq  $t0, $t4, skip 

# skips if last number to be printed
# system call for printing
li $v0, 4 

# load address
la $a0, spacer 

# prints the ", " between numbers
syscall 

skip:
	
# adds 1 to i
addi $t0, $t0, 1
j while

endwhile:

# exit cleanly
exit:
li $v0, 10
syscall
	
