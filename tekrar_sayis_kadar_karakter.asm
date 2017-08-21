org 100h 

.data
msg db 'tekrar sayisini gir: $'

.code          

mov ax, @data
mov ds, ax

mov ah, 09h     
lea dx, msg     
int 21h        

mov ah, 00h     
int 16h         
        
mov ah, 02h     
mov dl, al      
int 21h

mov bl, al       
sub bl, 48      

mov ah, 09h
mov al, 'A'     
mov cx, bx      
int 10h


mov ah, 0
int 16h

ret