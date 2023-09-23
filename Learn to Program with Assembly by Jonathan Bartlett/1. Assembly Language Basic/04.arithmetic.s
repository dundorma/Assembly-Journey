.globl _start
.section .text
_start:
  # Perform various arithmetic functions
  movq $3, %rdi # assign rdi to 3
  movq %rdi, %rax # assign rax to the data in the rdi register which is 3
  addq %rdi, %rax # add rax by the data in the rdi register which is 3 then store it to rax, rax is now 6
  mulq %rdi # multiply rdi by the value of the data in the rax which 6, 3 * 6 = 18, then store it the rax register
  movq $2, %rdi # assign rdi to 2, erase the previous value
  addq %rdi, %rax # add the data in the rdi value to the data in the rax, now the data in the rax is 18 + 2 = 20
  movq $4, %rdi # now rdi is 4
  mulq %rdi # multiply rdi {4} by rax {20} store it to rax {4 * 20} = 80
  movq %rax, %rdi # assign rdi with the value of rax {80}

  #set the exit system call number
  movq $60, %rax
  #perform system call
  syscall

