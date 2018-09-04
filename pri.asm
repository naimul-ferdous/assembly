
.model small
.data
msg1 db "In m1", 0Ah, '$'
msg2 db "In m2", 0Ah, '$'
const equ 9

.stack 0100
EXTRN dispm2: far
public msg2, const

.code
pri proc
mov dx, @data
mov ds, dx
mov ah, const
mov dx, offset msg1
int 21h

call dispm2
mov ax, 4c00h
int 21h
pri ENDP
END pri
