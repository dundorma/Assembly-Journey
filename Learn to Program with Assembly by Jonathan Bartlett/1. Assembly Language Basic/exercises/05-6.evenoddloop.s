.globl _start
.section .text
_start:
  movq $50, %rax

decloop:
  subq $2, %rax
  cmpq $2, %rax
  jae decloop

complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall
