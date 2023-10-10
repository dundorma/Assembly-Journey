.globl _start
.section .data
mytext:
  .ascii "This is a string of characters.\0"
.section .text
_start:
  ## INITIALIZATION ##
  leaq mytext, %rbx #Move  a pointer to the string into %rbx
  movq $0, %rdi #count starts at zero

mainloop:
  movb (%rbx), %al #get the next byte
  cmpb $0, %al 
  je finish #if %al is null string then finish
  
  #Check if %al is between 'a' and 'z'
  cmpb $'a', %al
  jb loopcontrol #if %al < $'a' then jump to loopcontrol
  cmpb $'z', %al
  ja loopcontrol #if %al > $'z' then jump to loopcontrol

  incq %rdi

loopcontrol:
  incq %rbx #next byte
  jmp mainloop #repeat

finish:
  movq $60, %rax
  syscall
