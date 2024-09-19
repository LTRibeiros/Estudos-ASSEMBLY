.data
raio: .asciiz "valor do raio da circunferencia: "
resul: .asciiz "o resultado é: "
.text
main: 
#2 pi r

li $v0, 4
la $a0, raio
syscall

li $v0, 5
syscall
move $s1, $v0

li $k0, 3
li $k1, 2

mul $t1, $s1, $k0
mul $t2, $t1, $k1

li $v0, 4
  la $a0, resul
syscall

li $v0, 1
add $a0, $zero, $t2

syscall
  
