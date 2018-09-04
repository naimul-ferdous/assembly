
.model small
EXTRN msg2:byte, const:abs

.code
dispm2 proc far
mov ah, const
mov dx, offset msg2
int 21h
RET
dispm2 ENDP
END dispm2