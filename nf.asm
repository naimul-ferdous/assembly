if 1
include mylib1.lib
endif

.model small
.data
aa  DW  4000
bb  DW  1000
prod DD 00000000

.stack 0100

.code
main proc
MOV AX, @data
MOV DS, AX
MOV AX, aa
MOV BX, bb
MUL BX
MOV WORD PTR[prod+0], AX
MOV WORD PTR[prod+2], DX

MOV BX, WORD PTR[prod+2]
printh

MOV BX, WORD PTR[prod+0]
printh

MOV AX, 4C00h
INT 21h

printfh
main ENDP
END main
