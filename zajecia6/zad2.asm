; 2a 2b + 2c -

org 100h

push word [a]
push word [a]

pop AX
pop BX
mul Bl
push AX

push word [b]

pop AX
pop BX
add AX, BX
push AX

push word [b]

pop AX
pop BX
add AX, BX
push AX

push word [c]
pop AX
pop BX
sub BX, AX
push BX

push word [c]

pop AX
pop BX
sub BX, AX

push BX

pop word [y]




mov AH, 00h
int 21h
a dw 2
b dw 4
c dw 2
y dw 0