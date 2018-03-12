if 1
include mylib1.lib
endif

.model small
.data
aa db 100
bb db 32
prod dw 0000

.stack

.code
main proc
mov ax, @data
mov ds, ax
mov al, aa
mov bl, bb
mul bl
mov prod, ax

mov bx, prod
printd

mov ax, 4c00h
int 21h
printfd
main ENDP
END main