.globl _start
.section .data
numberofnumbers: # How many data elements we have
  .quad 7
mynumbers: # the data elements themselves
  .quad 5, 20, 3., 80, 52, 10, 1

### THIS PROGRAM WILL FIND THE LARGEST VALUE IN THE ARRAY ###
.section .text
_start:
  ## INITIALIZE REGISTERS ##
  movq numberofnumbers, %rcx # put the number of elements of the array in %rcx
  movq $0, %rdi # use %rdi to hold the current-high value

  ## CHECK PRECONDITIONS ##
  cmp $0, %rcx # if there are no numbers, stop
  je endloop

## Main loop ##
myloop:
  movq mynumbers-8(,%rcx,8), %rax
  cmp %rdi, %rax
  jbe loopcontrol
  movq %rax, %rdi
loopcontrol:
  loopq myloop

## Cleanup and exit ##
endloop:
  movq $60, %rax
  syscall

