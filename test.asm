SECTION .data
    
    msg: db "making kernel calls",10
    EatLen: equ $-msg    
    
SECTION .bss 

SECTION .text

global  _start

_start:
    nop
    mov eax,4   ; sys_write
    mov ebx,0   ; fd
    mov ecx,EatMsg
    mov edx,12    
    int 80H

    MOV eax,1   ; return with exit code
    mov ebx,0
    int 80H
