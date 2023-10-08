.globl _start
.section .data
numberofnumbers:
  .quad 7
mynumbers:
  .quad 5, 20, 111, 80, 52, 10, 1
lookingfor:
  .quad 51
.section .text
_start:
  movq numberofnumbers, %rcx
  movq lookingfor, %rbx
  movq $0, %rdi

  cmp $0, %rcx
  je endloop

search:
  movq mynumbers-8(,%rcx,8), %rax
  cmp %rax, %rbx
  jne not_equal
  movq $1, %rdi
  jmp endloop

not_equal:
  loopq search

endloop:
  movq $60, %rax
  syscall
