#1.Elaborar um programa que apresente o valor da conversão em real (R$) de um valor lido em
#dólar (US$). O programa deve considerar a cotação do dólar em R$5 (Usar apenas números
#inteiros).

.data
real:.asciiz"Valor em real: "
dolar:.asciiz"Qual o valor recebido em Dólar? "

.text
main:

li $v0, 4
la $a0, dolar
syscall

li $v0, 5
syscall
move $s1, $v0

li $v0, 5
mul $s1, $s1, $v0

li $v0, 4
la $a0, real
syscall

li $v0, 1
add $a0, $s1, $zero
syscall
