.globl _start
.section .text
_start:
  movq $60, %rax
  movq $30, %rdi
  addq $1, %rdi
  subq $10, %rdi
  syscall
