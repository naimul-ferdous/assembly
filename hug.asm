getsymb MACRO symb
mov ah, 1
int 21h
mov symb, al
ENDM

getnum MACRO num
mov ah, 1
int 21h
sub al, 30h
mov num, al
ENDM

putch symb
mov ah, 02
mov dl, symb
int 21h
ENDM

.model small
.data
num1 db 00
num2 db 00
sym db 00

.stack

.code
main proc
mov ax, @data
mov ds, ax
getnum num1
getsymb sym
getnum, num2
putch '='
mov al, symb
cmp al, '+'
JNZ minus
mov dl, num1
add dl, num2
JMP exit
minus:
mov dl, num1
sub dl, num2
exit:

mov ax, 4c00h
int 21h
main ENDP
END main