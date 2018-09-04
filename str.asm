if 1
include mylib3.lib
endif

.model small
.data
msg1  db 'good morning'
      db newline
      db 'good afternoon'
      db newline
      db 'good evening','$'
      db newline
   newline equ 0Ah,0Dh

.stack 0100

.code
main proc
mov ax, @data
mov ds, ax
mov ah, 09
mov dx, offset msg1
int 21h

mov ax, 4c00h
int 21h
printfd
main ENDP
END main