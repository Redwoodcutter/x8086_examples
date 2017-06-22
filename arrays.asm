data segment
   
   number db 1,2,3,4,8,6 
   num db ?

ends

stack segment
   
ends

code segment
start:
   
   mov ax,@data
   mov ds,ax   
   
   mov cx,6  
   lea si,number
   mov bl,[si]
   
   loop1:
   mov al,[si+1]
   mov ah,[si]
   
   add dh,ah
                      
            
   cmp al,ah
   ja big  
   jmp end1   
   big:    
   cmp al,bh     
   ja bigS      
   jmp end1                  
   bigS:                                       
   mov bh,al  
   
   end1: 
   
   cmp bl,[si]
   ja small
   jmp son1
   small:
   mov bl,[si]
                         
   son1:
   inc si 
  
   loop loop1
   
   mov cl,6
   mov al,dh
   mov ah,0
   div cl
   
   
   int 21h
   
   
   

ends

end start
