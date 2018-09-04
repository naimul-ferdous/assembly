getnum MACRO num
mov ah, 01
int 21h
sub al, 30h
mov num, al
endm

dispnum MACRO num
mov ah, 02
mov dl, num
add dl, 30h
int 21h
endm

dispsym MACRO sym
mov ch, 02
mov dl, sym
int 21h
endm

.model small
.data
num1 db 00
num2 db 00

.stack 0100

.code
main proc
mov ax, @data
mov ds, ax
getnum num1
getnum num2
mov al, num1
mov cl, 10
mul cl
mov ch, 00
mov cl, num2
add ax, cx
mov cl, 10
div cl
mov num1, al
mov num2, ah
dispsym ' '
dispnum num1
dispnum num2

mov ax, 4c00h
int 21h
main ENDP
END main