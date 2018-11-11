# Peter Kabai - 10/29/2018
# performs the following mathematical operation:
# f = (g + h) - (j - 12)
# where: g = 12, h = 3, j = 27

.data
msg: .asciiz "f = " 
g: .word 12
h: .word 3
j: .word 27

.text

main:
lw $t0, g
lw $t1, h
lw $t2, j
add $t3, $t0, $t1
addi $t4, $t2, -12

li $v0, 4
la $a0, msg
syscall

li $v0, 1
sub $a0, $t3, $t4
syscall

li $v0, 10
syscall
