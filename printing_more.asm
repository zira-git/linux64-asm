bits 64 ; 64-bit architecture

section .text ; text section

global _start ; entry point for the linker

_start: ; start here
  ; printing the first line
  mov rax, 1 ; write and move rax register
  mov rdi, 1 ; stout and move rdi register
  mov rsi, msg1 ; message to write
  mov rdx, len ; message length
  syscall ; calls kernel
  
  ; printing the second line
  mov rax, 1 ; write and move rax register
  mov rdi, 1 ; stout and move rdi register
  mov rsi, msg2 ; message to write (num 2)
  mov rdx, len2 ; message 2 length
  syscall ; calls kernel
  
  mov rax, 60 ; exit and move rax register
  mov rdi, 0 ; error code 0 (success)
  syscall ; calls kernel
  
  section .data ; data constants
  msg1 db "Hello,", 0xA ; defines byte and makes a new line (0xA)
  len equ $ - msg1 ; length of the first message
  
  msg2 db "World!", 0xA ; defines byte and makes a new line (0xA)
  len2 equ $ - msg2 ; length of the second message
  
  ; you can also remove 0xA if you don't want a new line
  
  ; rax, 1 = SYSTEM WRITE (LINUX)
  ; rdi, 1 = STANDARD OUTPUT (TERMINAL)
  ; db = DEFINE BYTE
  ; equ = EQUATE
  ; $ - = TRACKS CURRENT POSITION
  ; syscall = KERNEL CALL
  ; mov = MOVE REGISTER
  ; bits 64 = 64-BIT ARCHITECTURE
  ; global _start = ENTRY POINT FOR LINKER
  ; section .text = TEXT SECTION
  ; _start: = STARTS HERE
  ; 0xA = NEW LINE
  ; section .data = DATA CONSTANTS
