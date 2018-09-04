macro show quo, divisor
mov ah, 0
mov al, quo
mov bl, divisor
div bl
mov quo, al
mov dl, ah
add dl, 30h
mov ah, 02
int 21h
endm

.model small
.data
quo db 123
.stack

.code
main proc
mov ax, @data
mov ds, ax
show quo, 100
show quo, 10
show quo, 1

mov ax, 4c00h
int 21h
printfd
main ENDP
END main