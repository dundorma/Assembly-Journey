.globl _start
.section .text
_start:
  # perform various arithmetic functions
  movq $3, %rbx # assign rdi to 3
  movq %rbx, %rax # assign rax to the data in the rdi register which is 3
  addq %rbx, %rax # add rax by the data in the rdi register which is 3 then store it to rax, rax is now 6
  mulq %rbx # multiply rdi by the value of the data in the rax which 6, 3 * 6 = 18, then store it the rax register
  movq $2, %rbx # assign rdi to 2, erase the previous value
  addq %rbx, %rax # add the data in the rdi value to the data in the rax, now the data in the rax is 18 + 2 = 20
  movq $4, %rbx # now rdi is 4
  mulq %rbx # multiply rdi {4} by rax {20} store it to rax {4 * 20} = 80
  movq $0, %rbx
  movq %rax, %rdi # assign rdi with the value of rax {80}

  #set the exit system call number
  movq $60, %rax
  #perform system call
  syscall
