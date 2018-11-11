# Peter Kabai - 11/10/2018
# asks the user for their age
# prints adult or child, depending on the age

.data
prompt: .asciiz "Enter your age: " 
adult: .asciiz "You are an adult."
child: .asciiz "You are a minor."

.text

main:

# prompt user
li $v0, 4 
la $a0, prompt
syscall

# get age
li $v0, 5
syscall
move $t1, $v0

# branch
addi $a2, $zero, 17
bgt $t1, $a2, isadult 

# print
li $v0, 4 
la $a0, child
syscall

# exit
li $v0, 10
syscall

isadult:

# print
li $v0, 4 
la $a0, adult
syscall

# exit
li $v0, 10
syscall
