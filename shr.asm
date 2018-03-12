if 1
include mylib1.lib
endif

.model small
.data
aa DW 40000
bb DW 32
quo DW 0000

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AX, aa
MOV CL, 5
SHR AX, CL
MOV quo, AX

MOV BX, quo
printd

MOV AX, 4c00h
int 21h
printfd
main ENDP
END main