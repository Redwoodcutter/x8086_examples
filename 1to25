data segment
 

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov cx,25
   mov dx,5
   
   dongu:
   cmp cx,0
   je dur
   inc ax
   cmp ax,dx 
   je esit
   loop dongu
        
   esit:
   add dx,5
   inc bx   
   dec cx
   jmp dongu
  
  dur:

ends

end start
