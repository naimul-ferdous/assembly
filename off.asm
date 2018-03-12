if 1
include mylib3.lib
endif

.model small
.data
sum DB 00
num DB 10,23,35,55,65

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, sum
MOV BX, offset num 
MOV CH, 00
MOV CL, 05

back:
ADD AL, [BX]
INC BX
loop back

MOV sum, AL
printd8 <sum>

MOV AX, 4c00h
int 21h
printfd
main ENDP
END main