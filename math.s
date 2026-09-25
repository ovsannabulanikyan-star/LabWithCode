.section .text
.globl _start

_start:
    mov $22, %rbx
    mov $1, %rbp
    xor %rcx, %rcx

sum_loop:
    cmp $0, %rbx
    je exit

    add %rbp, %rcx
    dec %rbx
    inc %rbp

    jmp sum_loop

exit:
    mov $60, %rax
    mov %rcx, %rdi
    syscall

