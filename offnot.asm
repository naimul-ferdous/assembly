if 1
include mylib3.lib
endif

.model small
.data
sum DB 00
num1 DB 10
num2 DB 23
num3 DB 35
num4 DB 55
num5 DB 65

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AL, sum
ADD AL, [num1+0]
ADD AL, [num1+1]
ADD AL, [num1+2]
ADD AL, [num1+3]
ADD AL, [num1+4]

MOV sum, AL
printd8 <num1,num2,num3,num4,sum>

MOV AX, 4c00h
int 21h
printfd
main ENDP
END main