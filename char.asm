if 1
include mylib3.lib
endif

.model small
.data

.stack

.code
main proc
mov ax, @data
mov ds, ax
mov cx, 05

iubat:
mov ah, 02
mov dl, 65
int 21h
loop iubat

mov ax, 4c00h
int 21h
printfd
main ENDP
END main