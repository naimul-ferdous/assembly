if 1
include mylib3.lib
endif

.model small
.data
sum db 00
num1 db 10,23,35,55,65

.stack

.code
main proc
mov ax, @data
mov ds, ax
mov al, sum
mov bx, offset num1
mov ch, 00
mov cl, 05

back:
add al, [bx]
INC bx
loop back

mov sum, al
printd8 <sum>

mov ax, 4c00h
int 21h
printfd
main ENDP
END main