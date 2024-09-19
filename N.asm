.data
A: .asciiz "Número 1: "
B: .asciiz "Número 2: "
resu: .asciiz "O resultado é:"
.text
main:

li $v0, 4
la $a0, A
syscall

li $v0, 5
syscall
move $t1, $v0


li $v0, 4
la $a0, B
syscall

li $v0, 5
syscall
move $t2, $v0

bgt  $t1, $t2, se
j exit

se:
sub $t0, $t1, $t2

li $v0, 4
la $a0, resu
syscall

li $v0 1
add $a0, $zero, $t0
syscall
j end
exit:
sub $t0, $t2, $t1

li $v0, 4
la $a0, resu
syscall

li $v0 1
add $a0, $zero, $t0
syscall

end: