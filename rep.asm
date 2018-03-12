if 1
include mylib3.lib
endif

.model small
.data
sum dw 0000
num dw 0000
nine equ 9
.stack

.code
main proc
mov ax, @data
mov ax, sum
mov bx, num
mov dh, 00
mov dl, nine

back:
mov bx, 10
add ax, bx
DEC dl
JNZ back

mov sum, ax
printd16 <sum>

mov ax, 4c00h
int 21h
printfd
main ENDP
END main