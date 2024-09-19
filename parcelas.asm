#7.Escreva um algoritmo que leia (em números inteiros) o valor da compra de um produto da Loja
#Vende Tudo. A loja só vende produtos de valor entre R$1000.00 e R$9999.99 (Que deve ser
#validado na entrada). A loja permite pagar o valor em parcelas fixas. O algoritmo deve ler
#também o valor da parcela a ser paga, que deve ser um valor entre R$100.00 e R$500.00 (Que
#deve ser validado na entrada). O algoritmo, sabendo que a última parcela pode ser de valor
#inferior às anteriores, deve calcular quantas parcelas serão pagas.

.data
valor:.asciiz"Valor da compra: "
erromsg:.asciiz"Insira o valor novamente: "
valorparcela:.asciiz"Qual o valor a ser pago na parcela? "
parcela:.asciiz"Número de parcelas a serem pagas: "
.text
main: j cmc
erro:
li $v0, 4
la $a0, erromsg
syscall

li $v0, 5
syscall
move $s1, $v0
j ok

cmc:
li $v0, 4
la $a0, valor
syscall

li $v0, 5
syscall
move $s1, $v0

#
ok:
li $v0, 1000
move $t1, $v0
li $v0, 9999
move $t2, $v0

blt $s1, $t1, erro
bgt $s1, $t2, erro
j okk
erroparcela:
li $v0, 4
la $a0, erromsg
syscall

li $v0, 5
syscall
move $s3, $v0
j verf
okk:
li $v0, 4
la $a0, valorparcela
syscall

li $v0, 5
syscall
move $s3, $v0

verf:
li $v0, 100
move $t1, $v0
li $v0, 500
move $t2, $v0

blt $s3, $t1, erroparcela
bgt $s3, $t2, erroparcela

div $s4, $s1, $s3

mfhi, $k0

bgtz $k0, maisuma
j ned
maisuma: 
li $v0, 1
add $s4, $s4, $v0

ned:
li $v0, 4
la $a0, parcela
syscall

li $v0, 1
add $a0, $s4, $zero
syscall
