if 1
include mylib1.lib
endif

.model small
.data
aa  DB  45
bb  DB  55
cc  DB  32
sum DW 0000

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, aa
MOV BL, bb
ADD AL, BL
MOV CL, cc
MUL CL
MOV sum, AX

MOV BX, sum
printd

MOV AX, 4C00h
INT 21h

printfd
main ENDP
END main
