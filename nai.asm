
disp Macro msg
mov ah,09
mov dx,offset msg 
int 21h
endm
.model small
.data
Fname db "IUBAT.txt",0 
Fhandle dw 0000h
Ftype EQU 00 
msg1 db "File creted",0ah,'$'
msg2 db "File do not",0ah,'$'
msg3 db "Fle is closed",0ah,'$'

.stack 0100
.code
main proc
MOV AX, @data
MOV DS, AX

mov ah,5BH
mov dx,offset Fname 
mov cx,Ftype
int 21h

JC ERROR1 
mov Fhandle,ax
disp msg1
mov ah,3Eh
mov bx,Fhandle
int 21h
disp msg3
jmp exit

ERROR1:
disp msg2 

exit:
mov ax,4c00h
int 21h
main ENDP
END main