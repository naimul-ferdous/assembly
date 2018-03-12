if 1
include mylib1.lib
endif

.model small

.Data
aa  Dw  320
bb  db  100
quo  db  00
rem  db  00

.Stack 0100

.code
main proc

MOV AX,@data
mov ds,AX

mov AX,aa
MOV CL,bb
div cl
mov quo,al
mov rem,ah
mov bh,00
mov bl,quo
printd
mov bh,00
mov bl,rem
printd

MOV AX,4c00h
INT 21h
printfd
main ENDP
END main