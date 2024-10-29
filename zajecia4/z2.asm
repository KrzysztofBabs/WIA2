org 100h

mov AH, 8h
mov AL, tekst
int 21h

mov AH, 02h       
mov DL, AL        
int 21h

cmp AL, 40h
JG wieksze
JL error

wieksze:
cmp AL, 5bh
JL duza
jmp analiza

analiza:
cmp AL, 60h
JG analiza2
jmp error

analiza2:
cmp AL, 7bh
JL mala
jmp error


duza:
call newline
mov AH, 09h
mov DX, d
int 21h
jmp koniec

mala:
call newline
mov AH, 09h
mov DX, m
int 21h
jmp koniec

error:
call newline
mov AH, 09h
mov DX, e
int 21h
jmp koniec

newline:
mov AH, 02h
mov DL, 0Dh        
int 21h
mov DL, 0Ah        
int 21h
ret



koniec:
mov AH, 00h
int 21h

tekst db 1
d db 'Duza litera$'
m db 'mala litera$'
e db 'error$'