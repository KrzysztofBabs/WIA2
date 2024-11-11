; a b / c +

org 100h
push word [a]
push word [b]

pop AX
pop BX
div BL
push AX

push word [c]

pop AX
pop BX
add AX, BX
push AX

pop word [y]



mov AH, 00h
int 21h
a dw 2
b dw 4
c dw 6
y dw 0