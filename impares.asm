 #5. Receba 2 números inteiros, verifique qual o maior entre eles. Calcule e mostre o resultado da
#somatória dos números ímpares entre esses valores
.data
N1:.asciiz"Primeiro número inteiro: "
N2: .asciiz"Segundo número inteiro: "
RES: .asciiz"O resultado da somatória dos números impares entre esses números é: "
N1maior: .asciiz"O número 1 é maior que o número 2"
N2maior: .asciiz"O número 2 é maior que o número 1"
somaimpar: .asciiz "   A soma dos números impares entre os dois números é: "
.text
#primeiro número
main:
li $v0, 4
la $a0, N1
syscall

li $v0, 5
syscall
move $s1, $v0

#segundo numero

li $v0, 4
la $a0, N2
syscall

li $v0, 5
syscall
move $s2, $v0

#verificar qual é maior
bgt $s1, $s2, seN1maior
move $t1, $s2
move $t0, $s1
li $v0, 4
la $a0, N2maior
syscall
li $v0, 1
add $a0, $zero $zero
j end
seN1maior:
move $t0, $s2
move $t1, $s1
li $v0, 4
la $a0, N1maior
syscall
li $v0, 1
add $a0, $zero $zero

end:
li $v0, 1
beq $t0, $v0, inicial1
inicial1: 
add $t0, $t0, $v0
loop:

li $v0, 2
div $t0, $v0
mfhi $k0
bnez $k0, recebe
loops:
li $v0, 1
add $t0, $t0, $v0
beq $t0, $t1, paro
j loop
recebe: 
add $t3, $t3, $t0
j loops
paro:

li $v0, 4
la $a0,somaimpar
syscall

li $v0, 1
add $a0, $t3, $zero
syscall