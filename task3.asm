.data
    
    
    array: .space 116

.text
.globl main

main:
    
    la t0, array

    
    li t1, 0

    
    li t2, 29


input:
   
    beq t1, t2, print_array

    
    li a7, 5
    ecall


    beq a0, zero, print_array


    sw a0, 0(t0)


    addi t0, t0, 4


    addi t1, t1, 1


    j input


print_array:
    
    mv t3, t1

    
    la t0, array

   
    li t1, 0


print:
   
    beq t1, t3, finish

 
    lw a0, 0(t0)


    li a7, 1
    ecall

  
    li a7, 4
    la a0, space
    ecall

    
    addi t0, t0, 4


    addi t1, t1, 1

   
    j print


finish:
    
    li a7, 10
    ecall


.data
    space: .asciz " "