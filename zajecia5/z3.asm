org 100h

;2a+2b-2c
mov AX, [a]
add AX, [a]
add AX, [b]
add AX, [b]
sub AX, [c]
sub AX, [c]
mov [y], AX




mov AH, 00h
int 21h



a dw 5h
b dw 4h
c dw 2h
y dw 0h