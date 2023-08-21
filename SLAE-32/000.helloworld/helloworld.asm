; HELLOWORLD.ASM
; AUTHOR: MOH RIZKY ARIF

global _start

section .text
_start: 
  ; PRINT HELLO WORLD ON SCREEN
  mov eax, 0x4
  mov ebx, 0x1
  lea ecx, message
  mov edx, 0xD
  int 0x80

  ; EXIT THE PROGRAM GRACEFULLY
  mov eax, 0x1
  mov ebx, 0x5
  int 0x80

section .data
  message: db "Hello, World!"
  ; for the length we can also use
  ; messagelen equ $-message


