if 1
include mylib3.lib
endif

.model small
.data
aa db 'A'
count EQU 5

.stack 0100
.code
main proc
mov ax, @data
mov ds, ax
mov cx, count
mov al, aa

back:
call dispchar
loop back
mov ax, 4c00h
int 21h

dispchar PROC
mov ah, 02
mov dl, al
int 21h
RET
dispchar ENDP
mov ax, 4C00h
int 21h
main ENDP
END main