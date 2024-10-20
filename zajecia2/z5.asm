org 100h

mov DH, 12             
mov DL, 40 

mov AH, 02h            
mov BH, 0              
int 10h

  
mov AH, 02h            
mov DL, 'C'            
int 21h


mov AH, 00h
int 21h