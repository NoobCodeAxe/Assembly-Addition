.data
	first: .asciiz "Please enter First number to add: "
	second: .asciiz "Please enter second number to add: "
	third: .asciiz "The addition equals: "
.text
	#clear
	add $v0, $zero,$zero
	#print question 1#
	li $t0, first
	la $a0, first
	li $v0, 4
	syscall 
	#Get first number input from user
	li $v0,5
	syscall 
	#save value of number 1
	move $t1,$v0
	#clear $a0
	add $a0, $zero,$zero
	#print question 2
	la $a0, second
	li $v0, 4
	syscall 
	#Get second number input from user
	li $v0,5 
	syscall 
	#save second value 
	move $t2,$v0
	#Output Prompt
	la $a0, third 
	li $v0, 4
	syscall 
	#add numbers and print addition result
	add $a0,$t2,$t1
	li $v0, 1syscall