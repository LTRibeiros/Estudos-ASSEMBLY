#2.Ler dois valores para 2 registradores e efetuar a troca dos valores de forma que o valor do
#primeiro registrador passe ao segundo e o segundo passe ao primeiro. Apresentar os valores
#após a efetivação do processamento da troca.

.data
a:.asciiz"valor do registrador 1: "
b:.asciiz"valor do registrador 2: "
                
.text
main:
li $v0, 4
la $a0, a
syscall

li $v0, 5
syscall
move $s1, $v0

##########

li $v0, 4
la $a0, b
syscall

li $v0, 5
syscall
move $s2, $v0
#######

move $s3, $s2
move $s2, $s1
move $s1, $s3

##########

li $v0, 4
la $a0, a
syscall

li $v0, 1
add $a0, $s1, $zero
syscall
######


li $v0, 4
la $a0, b
syscall

li $v0, 1
add $a0, $s2, $zero
syscall

