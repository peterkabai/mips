# collects and prints the user's name and birthdate

.data
first: .asciiz "Enter your first name"
last: .asciiz "Enter your last name"
firstText: .asciiz "First Name: "
lastText: .asciiz "Last Name: "
dobText: .asciiz "Date of Birth: "
slash: .asciiz "/"

.text

main:

# get first name
li      $v0, 8
la      $a0, first
li      $a1, 32
syscall

# get last name
li      $v0, 8
la      $a0, last
li      $a1, 32
syscall

# get month
li $v0, 5
syscall
move $t0, $v0

# get day
li $v0, 5
syscall
move $t1, $v0

# get year
li $v0, 5
syscall
move $t2, $v0

# print first
li $v0, 4 
la $a0, firstText
syscall
la $a0, first
syscall

# print last
li $v0, 4 
la $a0, lastText
syscall
la $a0, last
syscall

# print date
li $v0, 4 
la $a0, dobText
syscall
li $v0, 1
addi $a0, $t0, 0
syscall
li $v0, 4 
la $a0, slash
syscall
li $v0, 1
addi $a0, $t1, 0
syscall
li $v0, 4 
la $a0, slash
syscall
li $v0, 1
addi $a0, $t2, 0
syscall

# terminate
li $v0, 10
syscall
