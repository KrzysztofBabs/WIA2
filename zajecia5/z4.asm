org 100h

;a/b + c

mov AX, [a]
mov DL, [b]
div DL
add AL, [c]
mov [y], AL




mov AH, 00h
int 21h



a dw 5h
b dw 4h
c dw 2h
y dw 0h