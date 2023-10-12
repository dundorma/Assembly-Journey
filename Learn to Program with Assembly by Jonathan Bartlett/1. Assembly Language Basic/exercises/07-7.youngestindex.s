.globl _start
.section .text
_start:
  ## INITIALIZE REGISTERS ##
  leaq people, %rbx #Pointer to first record
  movq numpeople, %rcx #Record count
  movq AGE_OFFSET(%rbx), %rdx
  movq $0, %r9

  ## CHECK PRECONDITIONS ##
  cmp $0, %rcx
  je finish

mainloop:
  ## MAIN LOOP ##
  movq AGE_OFFSET(%rbx), %rax # %rbx is the pointer to the whole struct, this instruction grabs the height field and stores it in %rax
  cmp %rdx, %rax
  jge endloop 
  movq %rax, %rdx #if rax is higher than rdi than store the value in rax to rdi
  movq %r9, %rdi


endloop:
  addq $PERSON_RECORD_SIZE, %rbx #Move %rbx to point to the next record
  incq %r9
  loopq mainloop #decrement %rcx then do it again

finish:
  movq $60, %rax
  syscall
