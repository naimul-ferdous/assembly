if 1
include mylib3.lib
endif

.model small
.data
aa dw 267
bb dw 256
cc dw 311
sum dw 0000

.stack 0100
.code
main proc
mov ax, @data
mov ds, ax
PUSH bb
PUSH cc
PUSH aa
call addit

retaddr: mov sum, ax
printd16 <aa,bb,cc,sum>
mov ax, 4C00h
int 21h
printfd

addit proc
mov BP, SP
mov ax, [BP+2]
sub ax, [BP+4]
add ax, [BP+6]
RET
addit ENDP
main ENDP
END main