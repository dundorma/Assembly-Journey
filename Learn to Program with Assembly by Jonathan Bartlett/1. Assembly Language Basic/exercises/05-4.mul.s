.globl _start
.section .text
_start:
  movq $0, %rax #set rax to 0
  movq $4, %rbx
  movq $5, %rcx

#multiply rbx by rcx then store it in rax
multiply:
  addq %rbx, %rax
  loopq multiply

complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall
