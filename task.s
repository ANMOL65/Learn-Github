
#printing array

.data
arr: .word 5, 10, 15
.text
.globl main
main:


la $t0, arr 			#load address
lw $t1, ($t0)			#load word



li $v0,1				#print 5
move $a0, $t1
syscall

add $t0,$t0,4			# for going next value 10

lw $t1, ($t0)			#load it into address

li $v0,1				#print 10
move $a0, $t1
syscall

add $t0, $t0, 4			#for going next value 15

lw $t1, ($t0)			#load in into add

li $v0,1				#print 15
move $a0, $t1
syscall



li $v0, 10
syscall