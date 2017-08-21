
org 100h 

.code

   basla:
    call kurkon     
    cmp dh, 5      
    je son          
    inc dh          
    mov bh, dh      
    call satir
    loop basla
   satir:
    call yaz        
    dec bh          
    cmp bh, 0       
    jne satir
    ret
          
    kurkon proc         
     mov ah, 02h
     mov bh, 00h
     int 10h
     ret
    kurkon endp

    yaz proc
     push dx        
     mov ah, 02h
     mov dl, 2Ah     
     int 21h
     pop dx 
     ret
     yaz endp


son:
   
mov ah, 0
int 16h

ret

