.data
    msg: .asciz "Enter x: "
    space: .asciz " "

.text
.globl main

main:

    li a7, 4
    la a0, msg
    ecall

    li a7, 5
    ecall


    mv t0, a0


    li t1, 118


    blt t0, t1, up


down:

    mv a0, t0
    li a7, 1
    ecall


    li a7, 4
    la a0, space
    ecall


    beq t0, t1, finish


    addi t0, t0, -13


    
    blt t0, t1, finish

    j down



up:
   
    mv a0, t0
    li a7, 1
    ecall

    
    li a7, 4
    la a0, space
    ecall

   
    beq t0, t1, finish

 
    addi t0, t0, 13

  
    bgt t0, t1, finish

    j up


finish:
   
    li a7, 10
    ecall