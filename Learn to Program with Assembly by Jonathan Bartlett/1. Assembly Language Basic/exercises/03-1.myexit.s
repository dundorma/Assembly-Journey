.globl _start
.section .text
_start:
  movq $60, %rax
  movq %rax, %rdi # move the data inside register rax (60) to rdi
  syscall
