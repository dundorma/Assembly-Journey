.globl _start
.section .text
_start:
  movq $255, %rax
  movq $85, %rbx
  jmp division

division:
  divq %rbx
  jmp compare

compare:
  cmpq $3, %rax
  je retcall

retcall:
  movq %rax, %rdi
  movq $60, %rax
  syscall
