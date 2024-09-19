.data
n: .asciiz "N: "
erro:.asciiz "N deve ser maior que 0"
resultado: .asciiz "O valor de H é: "


.text
main:
   
    li $v0, 4
    la $a0, n
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0      
    
    
    blez $t0, nao
    
    li $t1, 0           
    li $t2, 1          
    
soma1:
    bgt $t2, $t0, fim  
  
    rem $t3, $t2, 2
    beqz $t3, impar
    mul $t4, $t2, 1
    j mais
    
impar:
    mul $t4, $t2, -2
    
mais:
    add $t1, $t1, $t4
    addi $t2, $t2, 1     
    j soma1
    
nao:
   
    li $v0, 4
    la $a0, erro
    syscall
    j main

fim:
  
    li $v0, 4
    la $a0, resultado
    syscall
    
    
    move $a0, $t1
    li $v0, 1
    syscall
    
  
    
    