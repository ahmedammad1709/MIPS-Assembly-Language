.data
value: .word 0x0108B0A0
msgOriginal: .asciiz "Original value: "

msgResult:   .asciiz "\nAfter clearing bits 3, 5, and 11 : "
.text
main:
    lw  $t0, value            
    li  $t1, 0x00000828

    or $t2, $t0, $t1
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
