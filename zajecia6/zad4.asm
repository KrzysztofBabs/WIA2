;a b c / +
org 100h

push word [c]
push word [b]

pop AX
pop BX
add AX, BX
push AX

push word [a]

pop AX
pop BX
div BL
push AX

pop word [y]



mov AH, 00h
int 21h
a dw 8
b dw 2
c dw 2
y dw 0