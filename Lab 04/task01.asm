.data
book:.space 50
quote:.space 100
couplet:.space 200
movie:.space 20
drama :.space 10
color:.space 10
qs1 : .asciiz "Enter your Favourite book : "
qs2 : .asciiz "Enter yout Favourite quote : "
qs3 : .asciiz "Enter your Favourite couplet : "
qs4 : .asciiz "Enter your Favourite movie  : "
qs5 : .asciiz "Enter your Favourite drama : "
qs6 : .asciiz "Enter your Favourite color : "
print: .asciiz "----Printing Details----"
Book:.asciiz "Book : "
Quote:.asciiz"Quote : "
Couplet:.asciiz"Couplet : "
Movie:.asciiz"Movie : "
Drama:.asciiz"Drama : "
Color:.asciiz"Color : "
lineBreak: .asciiz "\n"

.text
.globl main
main:

li $v0, 4
la $a0, qs1
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 8
la $a0, book
li $a1, 50
syscall

li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, qs2
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 8
la $a0, quote
li $a1, 100
syscall 
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, qs3
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 8
la $a0, couplet
li $a1, 200
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, qs4
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 8
la $a0, movie
li $a1, 20
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, qs5
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 8
la $a0, drama
li $a1, 15
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, qs6
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 8
la $a0, color
li $a1, 15
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, print
syscall
li $v0, 4
la $a0, lineBreak
syscall

li $v0, 4
la $a0, Book
syscall
li $v0, 4
la $a0, book
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, Quote
syscall
li $v0, 4
la $a0, quote
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, Couplet
syscall
li $v0, 4
la $a0, couplet
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, Movie
syscall
li $v0, 4
la $a0, movie
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, Drama
syscall
li $v0, 4
la $a0, drama
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 4
la $a0, Color
syscall
li $v0, 4
la $a0, color
syscall
li $v0, 4
la $a0, lineBreak
syscall
li $v0, 10
syscall

