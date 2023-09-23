.globl _start
.section .text
_start:
  movq $60, %rax
  movq $3, %rbx
  divq %rbx # divide rax {60} by rbx {3} then store the result to rax {20}
  movq $0, %rbx
  movq %rax, %rdi
  movq $60, %rax
  syscall

