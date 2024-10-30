org 100h

;a^2+2b+c



mov Al, [a]
mov DL, [a]
mul DL
add AX, [b]
add AX, [b]
add AX, [c]

mov [y], AX






mov AH, 00h
int 21h




a dw 3h
b dw 2h
c dw 1h
y dw 0h