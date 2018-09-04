if 1
include mylib3.lib
endif

.model small
.data
sum dw 0000

.stack

.code
main proc
mov ax, @data
mov ds, ax
mov bx, sum
mov ch, 00
mov cl, 09
back:
mov ax, 10
mul cl
add bx, ax
loop back
mov sum, bx
printd16 <sum>

mov ax, 4c00h
int 21h
printfd
main ENDP
END main