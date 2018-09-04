if 1
include mylib3.lib
endif

.model small
.data
msg1 db "Im m1", 0Ah, '$'
msg2 db "Im m2", 0Ah, '$'
const 


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