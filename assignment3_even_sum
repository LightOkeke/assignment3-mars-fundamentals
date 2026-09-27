.data
result_text: .asciiz "Sum of even numbers from 1 to 100: "

.text
.globl main

main:
    addiu $t0, $zero, 2
addu $t1, $zero, $zero
    li $t2, 100        # ending value

even_loop:
    add $t1, $t1, $t0  # sum = sum + current number
    addi $t0, $t0, 2   # move to the next even number
    ble $t0, $t2, even_loop

    li $v0, 4
    la $a0, result_text
    syscall

    li $v0, 1
    addu $a0, $t1, $zero
    syscall

    li $v0, 10
    syscall
    
