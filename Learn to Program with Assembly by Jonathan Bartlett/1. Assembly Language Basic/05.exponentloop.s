# THIS WILL CALCULATE 2^3
# YOU CAN MODIFY rbx AND rcx TO CALCULATE
# ANOTHER EXPONENTIAL.

.globl _start
.section .text
_start:
  movq $2, %rbx # rbx will hold the base
  movq $3, %rcx # rcx will hold the exponent count
  movq $1, %rax # store accumulated value in rax
  cmpq $0, %rcx # if rcx is equal to zero, we're done
  je complete
mainloop:
  mulq %rbx # multiply rax with rbx, store it in rax
  loopq mainloop #decrement rcx, go back to loop label if rcx is not zero yet
complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall
