if 1
include mylib1.lib
endif

.model small
.data
aa DD 165356
bb DW 40000
quo DW 0000
rem DW 0000

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AX, word ptr[aa+0]
MOV DX, word ptr[aa+2]
MOV CX, bb
DIV CX
MOV quo, AX
MOV rem, DX

MOV BX, quo
printd

MOV BX, rem
printd

MOV AX, 4c00h
int 21h
printfd
main ENDP
END main