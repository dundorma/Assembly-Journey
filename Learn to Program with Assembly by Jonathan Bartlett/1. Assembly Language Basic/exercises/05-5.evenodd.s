.globl _start
.section .text
_start:
  movq $51, %rax
  movq $2, %rbx
  divq %rbx
  movq %rdx, %rdi
  movq $60, %rax
  syscall
