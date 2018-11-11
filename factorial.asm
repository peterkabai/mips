# Peter Kabai - 11/10/2018
# asks the user for a number
# prints out the factorial of the number

.data
prompt: .asciiz "Enter your number: "

.text

main:

# prompt user
li $v0, 4 
la $a0, prompt
syscall

# get the number
li $v0, 5
syscall
move $t1, $v0

# store duplicate of starting value
addi $t2, $t1, 0

# subtract 1 to start with
addi $t1, $t1, -1

# while i > 0
while:
beq $t1, 0, endwhile

# multiply
mult $t2, $t1
mflo $t2

# subtract 1 from value
addi $t1, $t1, -1

j while

endwhile:

# print factorial
li $v0, 1
addi $a0, $t2, 0
syscall

# exit
li $v0, 10
syscall
