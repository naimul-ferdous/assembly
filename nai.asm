disp MACRO MSG
mov ah, 09
mov dx, offset MSG
int 21h
ENDM

.data
Fname db "IUBAT.TXT",0
Fname dw 0000h
Ftype EQU 00
msg1 db "file created",0Ah,"$"
msg2 db "file not created",0Ah,"$"
msg3 db "file close",0Ah,"$"

.create
mov ah, 
mov dx, offset Fname
mov cx, Ftype
int 21h
JC ERROR1
mov Fhandle, ax
disp msg1

mov ah, 3Eh
mov bx, Fhandle
int 21h
disp msg3
JMP exit

ERROR1:
disp msg2
EXIT:
mov ax, 4c00h
int 21h
