#6.Escreva um programa que pergunte dois números e indique se são iguais ou diferentes. Caso
#sejam diferentes, mostre o maior e o menor (nesta ordem).

.data
A:.asciiz"Qual o valor do primeiro número? "
B:.asciiz"Qual o valor do segundo número? "
Niguais:.asciiz"Os valores são iguais.      "
Ndiferentes:.asciiz"Os valores são diferentes.  "
maior:.asciiz"  // O maior número é: "
menor:.asciiz"  e  O menor número é: "

.text

main:
li $v0, 4
la $a0, A
syscall

li $v0, 5
syscall
move $s1, $v0

#

li $v0, 4
la $a0, B
syscall

li $v0, 5
syscall
move $s2, $v0

#

beq $s1, $s2, iguais

diferentes: 
li $v0, 4
la $a0, Ndiferentes
syscall

li $v0, 1
add $a0, $zero, $zero
syscall
#//

bgt $s1, $s2, s1maior
li $v0, 4
la $a0, maior
syscall

li $v0, 1
add $a0, $s2, $zero
syscall

li $v0, 4
la $a0, menor
syscall

li $v0, 1
add $a0, $s1, $zero
syscall
j end

s1maior:
li $v0, 4
la $a0, maior
syscall

li $v0, 1
add $a0, $s1, $zero
syscall

li $v0, 4
la $a0, menor
syscall

li $v0, 1
add $a0, $s2, $zero
syscall
j end

iguais:
li $v0, 4
la $a0, Niguais
syscall

li $v0, 1
add $a0, $zero, $zero
syscall

end: