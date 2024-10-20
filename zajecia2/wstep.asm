org 100h

mov AH, 02h   ;//
mov DL, 'a'   ;// wydruk literki
int 21h

mov AH, 00h
int 21h     ;// koniec programu