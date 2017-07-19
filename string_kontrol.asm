name "mycode"   ; output file name (max 8 chars).

org  100h	; set location counter to 100h

.model small

.data
   dizi1 db "name"
   dizi2 db "name" 
   text1 db "dogru$"
   text2 db "yanlis$"
.code

ana proc far 
 mov ax,@data
 mov es,ax
   
   
           
   lea si,dizi1 
   lea di,dizi2 
   
   mov cx,4       ;mov ah,09  ekrana yazdirma fonksiyonu
   cld 
   repe cmpsb
   jne uymaz
   
   uyar:
   lea dx,text1
   mov ah,09
   int 21h
   jmp bitir
   
   uymaz:
   lea dx,text2 
   mov ah,09
   int 21h
   jmp bitir            
             
           
    bitir:
mov ah,4ch
int 21h

 ana endp
 end ana




