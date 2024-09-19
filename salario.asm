#faça um programa que lê o valor do
#salário atual do funcionário e informa o seu novo salário acrescido de 25% (Por se tratar de
#apenas número inteiros, para calcular 25% deve-se multiplicar o valor por 25 e dividir por 100).
.data
salario:.asciiz"Qual o valor do salário?: "
reajuste:.asciiz"Salário com reajuste de 25%: "

.text
main:

li $v0, 4
la $a0, salario
syscall

li $v0, 5
syscall
move $s1, $v0
move $t0, $s1

li $v0, 25
mul $s1, $s1, $v0
li $v0, 100
div $s2, $s1, $v0

li $v0, 4
la $a0, reajuste
syscall

li $v0, 1
add $s3, $t0, $s2
add $a0, $s3, $zero
syscall
