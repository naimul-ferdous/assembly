if 1
include mylib3.lib
endif

.model small
.data
aa db 60
bb db 40
dd db 30
cc db 00

.stack

.code
main proc
mov ax, @data
mov ds, ax
mov al, aa

ifs:
cmp al, bb
JB elsse

then:
mov dl, dd
add dl, bb
mov cc, dl
JMP exit

ELSE:
add al, bb
mov cc, al

EXIT:
printd8 <aa, bb, dd, cc>

mov ax, 4c00h
int 21h
printfd
main ENDP
END main