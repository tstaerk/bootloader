start:
; this should print H
    mov ax, 0xe48 ; al=48=H ax=e=output a string
    int 0x10
; E
    mov al, 0x45
    int 0x10
; L
    mov al, 0x4C
    int 0x10
; L
    mov al, 0x4C
    int 0x10
; O
    mov al, 0x4F
    int 0x10
.ende:
    jmp .ende
