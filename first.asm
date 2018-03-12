.model small
.data
aa  DB  25 
bb  DB  07 
cc  DB  05 
sum  DB  00

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, aa
MOV BL, bb
MOV CL, cc
ADD  AL, BL 
SUB   AL, CL
MOV  sum, AL
MOV AX, 4C00h
INT 21h
main ENDP
END main
