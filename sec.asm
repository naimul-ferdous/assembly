.model small
EXTRN msg2:byte,const:abs
public dispm2

.code

dispm2 proc far
mov ah,const
mov dx,offset msg2
int 21h
ret
dispm2 endp
end dispm2