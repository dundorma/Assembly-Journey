### This will calculate 2^3
### You can modify %rbx and %rcx to calculate
### another exponential

.globl _start
.section .text
_start:
  movq $2, %rbx # rbx will hold the base
  movq $3, %rcx # rcx will hold the current exponent count
  movq $1, %rax # store the accumulated value in rax

mainloop:
  # Adding zero will allow us to use the flags to
  # determine if rcx has zero to begin with
  addq $0, %rcx
  jz complete # if the exponent is zero we are done
  mulq %rbx # rax * rbx store it in rax
  decq %rcx # decrement rcx by 1
  jmp mainloop # go back to the beginning of loop

complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall
