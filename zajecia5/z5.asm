org 100h

;a/(b+c)

mov AX, [a]
mov DL, [b]
add DL, [c]
div DL
mov [y], AL




mov AH, 00h
int 21h



a dw 0xA
b dw 3h
c dw 2h
y dw 0h