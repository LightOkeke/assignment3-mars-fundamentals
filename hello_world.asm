.data
message: .asciiz "Hello World\n"

.text
.globl main

main:
    li $v0, 4          # syscall 4 = print string
    la $a0, message    # load message address
    syscall

    li $v0, 10         # syscall 10 = exit
    syscall
    