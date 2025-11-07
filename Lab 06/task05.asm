.data
val1: .word 0x00000005       
val2: .word 0x00000178 
      
msgMul: .asciiz "After multiplying by 28: "

msgDiv: .asciiz "\nAfter dividing by 23 : "
.text
main:
    lw  $t0, val1             

    sll $t1, $t0, 4          
    sll $t2, $t0, 3        
    sll $t3, $t0, 2     

    add $t4, $t1, $t2
    add $t4, $t4, $t3
    li $v0, 4
    la $a0, msgMul
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    lw  $t5, val2            
    srl $t6, $t5, 4
    li $v0, 4
    la $a0, msgDiv
    syscall

    li $v0, 1
    move $a0, $t6
    syscall

    li $v0, 10
    syscall
