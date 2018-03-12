if 1
include macro1.lib
endif
.model small
.data
cha1 db 00
cha2 db 'A'
str1 db 'IUBAT$'
.STACK 100h 
.CODE
Main PROC
Mov ax, @DATA
Mov DS, AX
getchar cha1
putchar ' '
putchar cha2
putchar ' '
putstr str1
endprog
Main endp
end Main