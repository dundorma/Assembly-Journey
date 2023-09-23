.globl _start
.section .text
_start:
  movq $0b1111, %rdi # 15
  movq $60, %rax
  syscall
