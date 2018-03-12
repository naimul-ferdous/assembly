if 1
include mylib1.lib
endif
.model small
.data
aa DW 4000
bb dw 1000
Prod dd 00000000
.stack 0100
.code
main proc
MOV AX, @data
MOV DS, AX
MOV Ax,aa
MOV Bx,bb
mul bx
mov word ptr [prod+0],ax
mov word ptr [prod+2],dx
mov bx,word ptr [prod+2]
printh
mov bx,word ptr[prod+0]
printh
MOV AX, 4C00h
INT 21h
printfh
main ENDP
END main