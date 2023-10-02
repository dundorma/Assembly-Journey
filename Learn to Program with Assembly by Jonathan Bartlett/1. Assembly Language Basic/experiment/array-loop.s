.globl _start
.section .data
num:
  .quad 7
nums:
  .quad 1,2,3,4,5,6,7
.section .text
_start:
  movq num, %rcx
  movq $nums, %rdx

print_nums:
  addq (%rdx), %rdi
  addq $8, %rdx
  loopq print_nums

complete:
  movq $60, %rax
  syscall
