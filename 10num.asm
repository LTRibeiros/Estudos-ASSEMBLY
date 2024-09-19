#6. Receba 10 números inteiros reais. Verifique e mostre o maior e o menor valor.
#Obs.: somente valores positivos. Se o número for negativo, deve ser desconsiderado e solicitado
#novamente.

.data
N1: .asciiz "Número 1: "
N2: .asciiz "Número 2: "
N3: .asciiz "Número 3: "
N4: .asciiz "Número 4: "
N5: .asciiz "Número 5: "
N6: .asciiz "Número 6: "
N7: .asciiz "Número 7: "
N8: .asciiz "Número 8: "
N9: .asciiz "Número 9: "
N10: .asciiz "Número 10: "
maiormsg: .asciiz "O maior valor é: "
menormsg: .asciiz " e O menor valor é: "

.text


main:
j1:
li $v0, 4
la $a0, N1
syscall

li $v0, 5
syscall
bltz $v0, j1
move $t1, $v0
move $t0, $v0
nn1:
ss1:
####
j2:
li $v0, 4
la $a0, N2
syscall

li $v0, 5
syscall
bltz $v0, j2
blt  $v0, $t0, nn2
move $t0, $v0
nn2:
bgt $v0, $t1, ss2
move $t1, $v0


ss2:
####
j3:
li $v0, 4
la $a0, N3
syscall

li $v0, 5
syscall
bltz $v0, j3
blt  $v0, $t0, nn3
move $t0, $v0
nn3:
bgt $v0, $t1, ss3
move $t1, $v0


ss3:
####
j4:
li $v0, 4
la $a0, N4
syscall

li $v0, 5
syscall
bltz $v0, j4
blt  $v0, $t0, nn4
move $t0, $v0
nn4:
bgt $v0, $t1, ss4
move $t1, $v0


ss4:
####
j5:
li $v0, 4
la $a0, N5
syscall

li $v0, 5
syscall
bltz $v0, j5
blt  $v0, $t0, nn5
move $t0, $v0
nn5:
bgt $v0, $t1, ss5
move $t1, $v0


ss5:
####
j6:
li $v0, 4
la $a0, N6
syscall

li $v0, 5
syscall
bltz $v0, j6
blt  $v0, $t0, nn6
move $t0, $v0
ss6:
bgt $v0, $t1, ss6
move $t1, $v0

nn6:

####
j7:
li $v0, 4
la $a0, N7
syscall

li $v0, 5
syscall
bltz $v0, j7
blt  $v0, $t0, nn7
move $t0, $v0
nn7:
bgt $v0, $t1, ss7
move $t1, $v0

ss7:
####
j8:
li $v0, 4
la $a0, N8
syscall

li $v0, 5
syscall
bltz $v0, j8
blt  $v0, $t0, nn8
move $t0, $v0
nn8:
bgt $v0, $t1, ss8
move $t1, $v0

ss8:
####
j9:
li $v0, 4
la $a0, N9
syscall

li $v0, 5
syscall
bltz $v0, j9
blt  $v0, $t0, nn9
move $t0, $v0
nn9:
bgt $v0, $t1, ss9
move $t1, $v0

ss9:
####
j10:
li $v0, 4
la $a0, N10
syscall

li $v0, 5
syscall
bltz $v0, j10
blt  $v0, $t0, nn10
move $t0, $v0
nn10:
bgt $v0, $t1, ss10
move $t1, $v0

ss10:
####

li $v0, 4
la $a0, maiormsg
syscall

li $v0, 1
add $a0, $t0, $zero
syscall

li $v0, 4
la $a0, menormsg
syscall

li $v0, 1

add $a0, $t1, $zero
syscall



