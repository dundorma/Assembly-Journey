.globl _start
.section .text
_start:
  movq $12500000, %rcx
  jmp onesec

onesec:
  loopq onesec

complete:
  movq $60, %rax
  movq $1, %rdi
  syscall
