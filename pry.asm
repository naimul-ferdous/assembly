.model small
.data 
msg1 db 'In m1',0ah,'$'
msg2 db 'In m2',0ah,'$'
const equ 9

.stack 0100
EXTRN dispm2:far
public msg2,const

.code

pry proc
mov dx,@data
MOV DS,DX


MOV AH,const
mov dx,offset msg1
int 21h

call dispm2
mov ax,4c00h
int 21h
pry endp 
end pry

