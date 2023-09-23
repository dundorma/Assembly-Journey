.globl _start
.section .text
_start:
  movb $255, %al
  movb $85, %bl

  divq %rbx
  movq %rax, %rdi
  movq $60, %rax
  syscall

