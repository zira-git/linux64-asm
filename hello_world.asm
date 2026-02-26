bits 64 ; 64-bit architecture

section .text ; text section

global _start ; entry point for the linker

_start: ; start here
    mov rax, 1 ; write and move rax register
    mov rdi, 1 ; stout and move rdi register
    mov rsi, msg ; message to write
    mov rdx, msg.len ; message length
    syscall ; calls kernel
    
    mov rax, 60 ; exit and move rax register
    mov rdi, 0 ; error code 0 (success)
    syscall ; calls kernel
    
    section .data ; data constants
    
    msg: db "Hello, World!", 10 ; db (define byte)
    .len: equ $ - msg ; $ - (tracks current position), equ (eqaute)
    
    ; rax, 1 == SYSTEM WRITE (Linux)
    ; rdi, 1 == STANDARD OUTPUT (terminal)
    ; rax = SYSTEM WRITE
    ; rdi = STANDARD 
    ; db = DEFINE byte
    ; equ = EQUATE
    ; $ - = TRACKS CURRENT position
    ; syscall = KERNEL CALL
    ; mov = MOVE REGISTER
    ; bits 64 = 64 BIT ARCHITECTURE
    ; global _start = ENTRY POINT FOR LINKER
    ; section .text = TEXT SECTION
    ; _start = START AT LINE
    ; section .data = DATA CONSTANTS
