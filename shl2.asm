if 1
include mylib1.lib
endif

.model small
.data
aa Dw 40
bb DB 2
sum DW 0000


.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AX, aa
MOV CL, 1
SHL AX, CL 
MOV sum, AX

MOV BX, sum
printd

MOV AX, 4c00h
int 21h
printfd
main ENDP
END main