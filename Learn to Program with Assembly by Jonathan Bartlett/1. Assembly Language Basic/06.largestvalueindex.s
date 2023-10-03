.globl _start
.section .data
numberofnumbers: # How many data elements we have
  .quad 7
mynumbers: # the data elements themselves
  .quad 5, 20, 33, 80, 52, 10, 1

### THIS PROGRAM WILL FIND THE LARGEST VALUE IN THE ARRAY ###
.section .text
_start:
  ## INITIALIZE REGISTERS ##
  movq numberofnumbers, %rcx # put the number of elements of the array in %rcx
  movq $0, %rbx # put the index of the first element in %rbx
  movq $0, %rdi # use %rdi to hold the current-high value

  ## CHECK PRECONDITIONS ##
  cmp $0, %rcx # if there are no numbers, stop
  je endloop

## Main loop ##
myloop:
  movq mynumbers(,%rbx,8), %rax # get the next value of mynumbers indexed by %rbx
  cmp %rdi, %rax # if it is not bigger, go to the end of the loop
  jbe loopcontrol
  movq %rax, %rdi # otherwise, store this as the biggest element so far
loopcontrol:
  incq %rbx # Move %rbx to the next index
  loopq myloop # Decrement %rcx and keep going until %rcx is zero

## Cleanup and Exit ##
endloop:
  movq $60, %rax
  syscall
