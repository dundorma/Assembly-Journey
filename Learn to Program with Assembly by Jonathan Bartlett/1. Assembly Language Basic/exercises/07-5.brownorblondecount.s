.globl _start
.section .text
incqrdi:
  incq %rdi
  jmp endloop

_start:
  ## INITIALIZE REGISTERS ##
  leaq people, %rbx #pointer to first record
  movq numpeople, %rcx #total record count
  movq $0, %rdi #brown hair count

  ## CHECK PRECONDITION ##
  cmpq $0, %rcx
  je finish

mainloop:
  ## MAIN LOOP ##
  cmpq $2, HAIR_OFFSET(%rbx) #check if hair is brown (2)
  je incqrdi #if it's not brown then jump to endloop, go to the next record
  cmpq $1, HAIR_OFFSET(%rbx) #check if hair is blonde (1)
  je incqrdi

endloop:
  addq $PERSON_RECORD_SIZE, %rbx
  loopq mainloop

finish:
  movq $60, %rax
  syscall

