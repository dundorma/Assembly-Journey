.globl _start
.section .text
_start:
  movq $25, %rax
  jmp thelabel
somewhere:
  movq %rax, %rdi #rdi = 11, rax = 11
  jmp anotherlabel
label1:
  addq %rbx, %rax #rbx = 30, rax = 25 + 30 = 55
  movq $5, %rbx # rbx = 5, rax = 55
  jmp here
labellabel:
  syscall
anotherlabel:
  movq $60, %rax # rax = 60, rdi = 11, rbx = 5
  jmp labellabel
thelabel:
  movq %rax, %rbx
  jmp there
here:
  divq %rbx # rax / rbx store it in rax, 55/5 = 11, rax = 11
  jmp somewhere
there:
  addq $5, %rbx #rax = 25, rbx = 25 + 5 = 30
  jmp label1
anywhere:
  jmp thelabel
