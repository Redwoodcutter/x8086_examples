org 100h
.data
    sayi dw ?
    
.code
start:         
    mov bl, 10      
    mov dx, 0       
    mov cx, 100     
    dongu:
        inc dx      
        mov ax, dx  
        div bl      
        cmp ah, 0   
        je ekle   
        loop dongu       
        jmp son         
    
    ekle:
        push dx     
        push cx      
        push bx     
        
        call yaz 
        
        mov dl, ' '     
        mov ah, 2
        int 21h 
       
        
        pop bx
        pop cx        
        pop dx      
        loop dongu
        jmp son
        
    yaz proc
        mov ax, dx      
        aam            
        add ax, 3030h
        push ax        
        mov dl, ah
        mov ah, 02h
        int 21h
        pop dx
        mov ah, 02h
        int 21h
        
        ret
    yaz endp
    
    son:
        
ret



