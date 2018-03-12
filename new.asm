if 1
include mylib1.lib
endif

.model small
.data
aa  DB  30 
bb  DB  15 
cc  DB  13 
sum DB  00

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, aa
MOV BL, bb
MOV CL, cc
ADD AL, CL 
SUB AL, BL
SUB AL, 05
MOV sum, AL

mov bh, 00
mov bl, sum
printd 

MOV AX, 4C00h
INT 21h

printfd
main ENDP
END main
