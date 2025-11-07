.data 

and: .asciiz  "AND : "
or: .asciiz  "\nOR : "
xor: .asciiz  "\nXOR : "
nor: .asciiz  "\nNOR : "
xnor: .asciiz  "\nXNOR : "
nand: .asciiz  "\nNAND : "
break: .asciiz " "

.text
.globl main
main:
	
	li $t0, 0x00000000
	li $t1, 0x00000001
	
	#AND
	and $t2, $t0, $t0
	and $t3, $t0, $t1 
	and $t4, $t1, $t0
	and $t5, $t1, $t1 
	
	li $v0, 4
    	la $a0, and
    	syscall
    	
    	li $v0, 1
    	move $a0, $t2
    	syscall
    	li $v0, 4
    	la $a0, break
    	syscall
    	
    	li $v0, 1
    	move $a0, $t3
    	syscall
    	li $v0, 4
    	la $a0, break
    	syscall
    	
    	li $v0, 1
    	move $a0, $t4
    	syscall
    	li $v0, 4
    	la $a0, break
    	syscall
li $v0, 1
move $a0, $t3
syscall
li $v0, 4
la $a0, break
syscall
li $v0, 1
move $a0, $t4
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t5
syscall


li $v0, 1
move $a0, $t5
syscall
li $v0, 4
la $a0, break
syscall

#OR
or $t2, $t0, $t0
or $t3, $t0, $t1 
or $t4, $t1, $t0
or $t5, $t1, $t1
	
li $v0, 4
la $a0, or
syscall
    	
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, break
syscall
    	
li $v0, 1
move $a0, $t3
syscall
li $v0, 4
la $a0, break
syscall
    	
li $v0, 1
move $a0, $t4
syscall
li $v0, 4
la $a0, break
syscall
    	
li $v0, 1
move $a0, $t5
syscall
li $v0, 4
la $a0, break
syscall



li $v0, 4
la $a0, break
syscall

#NAND
and $t2, $t0, $t0
and $t3, $t0, $t1
and $t4, $t1, $t0
and $t5, $t1, $t1

not $t2, $t2
not $t3, $t3
not $t4, $t4
not $t5, $t5
#XOR
xor $t2, $t0, $t0
xor $t3, $t0, $t1
xor $t4, $t1, $t0
xor $t5, $t1, $t1

li $v0, 4
la $a0, xor
syscall
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t3
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t4
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t5
syscall
li $v0, 4
la $a0, break
syscall

#NOR
nor $t2, $t0, $t0
nor $t3, $t0, $t1
nor $t4, $t1, $t0
nor $t5, $t1, $t1
li $v0, 4
la $a0, nor
syscall


li $v0, 4
la $a0, nand
syscall
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t3
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t3
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t4
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t5
syscall
li $v0, 4
la $a0, break
syscall

#XNOR
xor $t2, $t0, $t0
xor $t3, $t0, $t1
xor $t4, $t1, $t0
xor $t5, $t1, $t1
not $t2, $t2
not $t3, $t3
not $t4, $t4
not $t5, $t5
li $v0, 4
la $a0, xnor
syscall
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, break
syscall


li $v0, 1
move $a0, $t4
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 1
move $a0, $t5
syscall
li $v0, 4
la $a0, break
syscall

li $v0, 10
syscall


