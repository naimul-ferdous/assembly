if 1
include mylib1.lib
endif

.model small
.data
aa DW 320
bb DB 100
quo DB 00
rem DB 00

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AX, aa
MOV BL, bb
DIV BL
MOV quo, AL
MOV rem, AH

MOV BH, 00
MOV BL, quo
printd

MOV BH, 00
MOV BL, rem
printd

MOV AX, 4c00h
int 21h
printfd
main ENDP
END main