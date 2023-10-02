.globl _start
.section .text
bruh:
  movq $0, %rdi
  jmp complete
_start:
  movq $4, %rax
  movq $5, %rbx
  cmp %rbx, %rax
  jbe bruh
  movq $1, %rdi
complete:
  movq $60, %rax
  syscall
