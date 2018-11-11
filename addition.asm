# Peter Kabai - 10/29/2018
# performs simple addition

.data
num1: .word 12 
num2: .word 534 

.text
lw $t0, num1
lw $t1, num2
add $t0, $t0, $t1
li $v0, 1
add $a0, $t0, $zero 
syscall