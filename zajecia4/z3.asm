org 100h

wpisz:
mov AH, 01h
int 21h
mov BL, AL

cmp BL,'Q'
je koniec


jmp wpisz


koniec:
mov AH, 00h
int 21h

