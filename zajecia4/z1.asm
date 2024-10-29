org 100h

mov AH, 8h
int 21h

mov AH, 02h        
mov DL, AL         
int 21h            

cmp AL, 5Fh

JE rowne
JL mniejsze
JG wieksze

rowne:
call newline 
mov AH, 02h
mov DL, "="
int 21h
jmp koniec

mniejsze:
call newline 
mov AH, 02h
mov DL, "<"
int 21h
jmp koniec

wieksze:
call newline 
mov AH, 02h
mov DL, ">"
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