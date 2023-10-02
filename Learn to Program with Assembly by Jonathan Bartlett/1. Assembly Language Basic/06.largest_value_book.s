.globl _start
.section .data
  numberofnumbers: #how many data elements we have
    .quad 7
  mynumbers: #the data elements themselves
    .quad 5, 20, 33, 80, 52, 10, 1
.section .text
_start:
  ### INITIALIZE REGISTERS ###
  movq numberofnumbers, %rcx # Put the number of elements of the array in %rcx
  movq $mynumbers, %rbx # Put the address of the first element in %rbx
  movq $0, %rdi # Use %rdi to hold the current high value

  ### CHECK PRECONDITIONS ###
  cmp $0, %rcx # Check if numberofnumbers is 0, means that the array has 0 element
  je endloop

my_loop:
  movq (%rbx), %rax # get the next value (currently pointed to by rbx)
  cmp %rdi, %rax
  jbe loopcontrol # check if %rax <= %rdi skip don't change the highest value
  movq %rax, %rdi

loopcontrol:
  addq $8, %rbx
  loopq my_loop

endloop:
  movq $60, %rax # We're done exit
  syscall
