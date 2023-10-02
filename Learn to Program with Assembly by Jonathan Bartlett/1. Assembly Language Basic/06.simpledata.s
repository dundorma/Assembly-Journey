.globl _start
.section .data
first_value:
  .quad 4
second_value:
  .quad 6
final_result:
  .quad 0

.section .text
_start:
  #load values into registers
  movq first_value, %rbx
  movq second_value, %rcx

  #perform computation
  addq %rbx, %rcx
  movq %rcx, final_result #store results into memory

  #return the value to the operating system
  movq final_result, %rdi
  movq $60, %rax
  syscall
