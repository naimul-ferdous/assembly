
if 1
include mylib1.lib
endif

.model small
.data
aa  DB  100
bb  DB  32  
product DW 0000

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, aa
MOV BL, bb
MUL BL
Mov product, AX

MOV BX, product
printd

MOV AX, 4C00h
INT 21h

printfd
main ENDP
END main
