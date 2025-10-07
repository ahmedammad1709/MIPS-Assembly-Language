.data
name: .space 20
age: .word 0
grade: .byte 0
GPA: .float 0.00
Program: .space 10
section: .byte 0
formatting: .asciiz "---------------------------"
newline: .asciiz "\n"
qs1 : .asciiz "Enter your name : "
qs2 : .asciiz "Enter your age : "
qs3 : .asciiz "Enter your GPA : "
qs4 : .asciiz "Enter your grade : "
Name: .asciiz "Name : "
Age: .asciiz "Age : "
Grade: .asciiz "Grade : "
Gpa: .asciiz "GPA : "
program: .asciiz "Program : "
Section: .asciiz "Section : "

.text
.globl main
main:

li $v0, 4
la $a0, qs1
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 8
la $a0, name
li $a1, 20
syscall
li $v0, 4
la $a0, qs2
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 5
syscall
sw $v0, age
li $v0, 4
la $a0, qs3
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 6
syscall
s.s $f0, GPA
li $v0, 4
la $a0, qs4
syscall

li $v0, 4
la $a0, newline
syscall
li $v0, 12
syscall
sb $v0, grade

li $v0, 4
la $a0, newline
syscall
li $v0, 4
la $a0, formatting
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 4
la $a0, Name
syscall
li $v0, 4
la $a0, name
syscall


li $v0, 4
la $a0, Age
syscall
li $v0, 1
lw $a0, age
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 4
la $a0, Grade
syscall
li $v0, 11
lb $a0, grade
syscall
li $v0, 4
la $a0, newline
syscall

li $v0, 4
la $a0, Gpa
syscall
li $v0, 2
l.s $f12, GPA
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 4
la $a0, formatting
syscall
li $v0, 10
syscall
