.data
    msg: .asciz "Enter x: "
    result: .asciz "Result: "

.text
.globl main

main:

    li a7, 4
    la a0, msg
    ecall

    li a7, 5
    ecall


    mv t0, a0


    li t1, 13

  
    beq t0, t1, equal

 
    li t2, 0
    j print

equal:

    li t2, 1

print:

    li a7, 4
    la a0, result
    ecall

    mv a0, t2
    li a7, 1
    ecall

 
    li a7, 10
    ecall