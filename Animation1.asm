
org 100h

donhacit:
mov cx,5

kos:
  mov dh,1
  go:
  call cursor
  call read
  inc dl
  inc dh
  cmp dh,5
  jne go
  
  go2:
  call cursor
  call read
  inc dl
  dec dh
  cmp dh,1
  jne go2
  loop kos
  
cursor proc
    mov ah,02h
    mov bh,00h
    int 10h
    ret
    cursor endp
read proc
    push dx
    lea dx,isim
    mov ah,9
    int 21h
    pop dx
    ret
    read endp
   loop donhacit         
           
ret
         
isim db "*$"

 

