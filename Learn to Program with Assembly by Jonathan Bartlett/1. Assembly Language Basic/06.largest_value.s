.globl _start
.section .data
num:
  .quad 7
nums:
  .quad 91, 38, 10, 10, 8, 93, 18

.section .text
_start:
  movq num, %rcx
  movq $nums, %rbx
  movq $0, %rax

largest_value:
  movq (%rbx), %rdx
  cmp %rdx, %rax
  jae else
  movq %rdx, %rax
else:
  addq $8, %rbx
  loopq largest_value
complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall
