#4. Receba 4 notas bimestrais de um aluno. Calcule e mostre a média aritmética. Mostre a
#mensagem de acordo com a média:

#a. Se a média for >= 6,0 exibir “APROVADO”;
#b. Se a média for >= 3,0 ou < 6,0 exibir “EXAME”;
#c. Se a média for < 3,0 exibir “RETIDO”.

.data
N1: .asciiz "Nota bimestral 1: "
N2: .asciiz "Nota bimestral 2: "
N3: .asciiz "Nota bimestral 3: "
N4: .asciiz "Nota bimestral 4: "
MP: .asciiz "A média do aluno é: "
APR: .asciiz "             APROVADO                "
EXA: .asciiz "             EXAME              "
RET: .asciiz "             RETIDO             "



.text
main:
dnv:
#nota 1
li $v0, 4
la $a0, N1
syscall

li $v0, 5
syscall
move $s0, $v0
#nota 2
li $v0, 4
la $a0, N2
syscall

li $v0, 5
syscall
move $s1, $v0
#nota 3
li $v0, 4
la $a0, N3
syscall

li $v0, 5
syscall
move $s2, $v0
#nota 4
li $v0, 4
la $a0, N4
syscall

li $v0, 5
syscall
move $s3, $v0

add $t0, $s0, $s1
add $t1, $s2, $s3
add $t2, $t0, $t1
li $v1, 4
div $t0, $t2, $v1

li $t8, 10
ble $t0, $t8, ok
j dnv
ok:
li $v0, 4
la $a0, MP #a0 pelo visto é o registrador que guarda strings
syscall

li $v0, 1
add $a0, $zero , $t0
syscall


#a. Se a média for >= 6,0 exibir “APROVADO”;
#b. Se a média for >= 3,0 ou < 6,0 exibir “EXAME”;
#c. Se a média for < 3,0 exibir “RETIDO”.

li $k0, 3
li $k1, 6

bge $t0, $k1, aprovado
j exameORretido

aprovado:
li $v0, 4
la $a0, APR #a0 pelo visto é o registrador que guarda strings
syscall

li $v0, 1
add $a0, $zero , $zero
syscall
j end
exameORretido:
bge  $t0, $k0, exame
j retido
exame:
li $v0, 4
la $a0, EXA #a0 pelo visto é o registrador que guarda strings
syscall

li $v0, 1
add $a0, $zero , $zero
syscall
j end
retido:
li $v0, 4
la $a0, RET #a0 pelo visto é o registrador que guarda strings
syscall

li $v0, 1
add $a0, $zero , $zero
syscall

end: