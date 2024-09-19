.data
compr: .asciiz "Qual o comprimento do paralelepipedo? "
larg: .asciiz "Qual a largura do paralelepipedo? "
altura: .asciiz "Qual a altura do paralelepipedo? "
res : .asciiz "O resultado é:"
.text
main:
li $v0, 4
la $a0, compr
syscall

li $v0, 5
syscall
move $s1, $v0

 li $v0, 4
 la $a0, larg
 syscall
 
 li $v0, 5
 syscall
 move $s2, $v0
  
  li $v0, 4
  la $a0, altura
  syscall
  
  li $v0, 5
  syscall
  move $s3, $v0
 
  
  mul $at, $s1, $s2
  mul $v1, $at, $s3
  

  li $v0, 4
  la $a0, res
syscall

li $v0, 1
add $a0, $zero, $v1

syscall
  
 
 

 
 