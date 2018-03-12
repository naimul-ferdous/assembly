if 1
include mylib1.lib
endif

.model small

.data
aa DB 25
bb DB 05
sum DB 00

.stack 0100h

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, aa
MOV BL, bb
ADD AL, BL
MOV sum, AL

MOV BL, sum
printd

MOV AX, 4C00h
INT 21h

printfd
main ENDP
END main