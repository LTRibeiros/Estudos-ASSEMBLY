#5.Escreva um programa que pergunte os coeficientes de uma equação de segundo grau (A, B e
#C) e:
#a) se DELTA for maior que zero: imprima “DUAS RAÍZES REAIS”;
#b) se DELTA for igual a zero: imprima apenas “UMA RAÍZ REAL”;
#c) se DELTA menor que zero: imprima a mensagem “NÃO EXISTEM RAÍZES REAIS”.
#(Não é necessário calcular as raízes caso existam).

.data
A:.asciiz"Qual é o valor de A? "
B:.asciiz"Qual o valor de B? "
C:.asciiz"Qual o valor de C?"
duasraizes:.asciiz"DUAS RAÍZES REAIS"
raiz:.asciiz"UMA RAÍZ REAL"
semraiz:.asciiz"NÃO EXISTEM RAÍZES REAIS"
 .text
 main:
 
 li $v0, 4
 la $a0, A
 syscall
 
 li $v0, 5
 syscall
 move $s1, $v0
  
  
 li $v0, 4
 la $a0, B
 syscall
 
 li $v0, 5
 syscall
 move $s2, $v0
  
 li $v0, 4
 la $a0, C
 syscall
 
 li $v0, 5
 syscall
 move $s3, $v0
 
 #Δ = b2 – 4ac
 
 mul $s4, $s2, $s2
 li $v0, 4
 mul $s5, $s1, $s3
 mul $s5, $s5, $v0
 sub $s4, $s4, $s5
 
 
 bgt $s4, $zero, DRR
 j igualmenor
 DRR:
 li $v0, 4
 la $a0, duasraizes
 syscall
 
 li $v0, 1
 mul $a0, $zero, $zero
 syscall
 
 j end
 igualmenor:
 beqz $s4, igual
 
 j menor
 
 igual:
 li $v0, 4
 la $a0, raiz
 syscall
 
 li $v0, 1
  mul $a0, $zero, $zero
 syscall
 
 j end
 menor:
 
 li $v0, 4
 la $a0, semraiz
 syscall
 
 li $v0, 1
  mul $a0, $zero, $zero
 syscall
 
 end: