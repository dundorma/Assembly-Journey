.globl _start
.section .data
my_val:
  .quad 10
.section .text
_start:
  movq $my_val, %rax
  movq %rax, %rbx
  movq (%rax), %rdi
  movq $60, %rax
  syscall
