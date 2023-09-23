.globl _start
.section .text
_start:
  morq $60, %rax # 03-2.myexit.s:4: Error: no such instruction: `morq $60,%rax'
  movq %rax, %rdi # move the data inside register rax (60) to rdi
  syscall
