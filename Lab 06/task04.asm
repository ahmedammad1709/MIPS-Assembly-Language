.data
value: .word 0x01010485
msgOriginal: .asciiz "Original value: "

msgResult:   .asciiz "\nAfter toggling last 8 bits : "
.text
main:
    lw  $t0, value            
    li  $t1, 0x000000FF

    xor $t2, $t0, $t1  

    li $v0, 4
    la $a0, msgOriginal
    syscall

    li $v0, 1 
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, msgResult
    syscall

    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 10
    syscall
