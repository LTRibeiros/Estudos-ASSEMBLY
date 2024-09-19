#Crie um programa que lê o mês e o ano de nascimento de uma pessoa e o mês e ano atual.
#Calcule e mostre qual é: a idade da pessoa em meses.

.data
M_nas:.asciiz"Mês do nascimento (1-12): "
A_nas:.asciiz"Ano do nascimento: "
M_atu:.asciiz"Mês atual: "
A_atu:.asciiz"Ano atual (1-12): "
Idade_ano:.asciiz"Idade em meses: "
.text
main:
li $v0, 4
la $a0, A_nas
syscall

li $v0, 5
syscall
move $s1, $v0
#
li $v0, 4
la $a0, M_nas
syscall

li $v0, 5
syscall
move $s4, $v0
#
li $v0, 4
la $a0, A_atu
syscall

li $v0, 5
syscall
move $s2, $v0
#
li $v0, 4
la $a0, M_atu
syscall

li $v0, 5
syscall
move $s5, $v0
##############
sub $s3, $s2, $s1
li $v0, 12
mul $s3, $s3, $v0

##########
bgt $s4, $s5, normalsub
sub $s6, $s5, $s4
normalsub:
sub $s6, $s4, $s5
li $v0, 12
sub $s6, $v0, $s6
sub $t0, $s3, $v0
#######
add $t0, $t0, $s6

li $v0, 4
la $a0, Idade_ano
syscall

li $v0, 1
add $a0, $t0, $zero
syscall