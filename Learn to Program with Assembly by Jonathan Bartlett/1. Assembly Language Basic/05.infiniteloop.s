.globl _start
.section .text
_start:
  movq $60, %rax

another_location:
  movq $8, %rdi
  jmp another_location
  syscall   #This will never get executed