
data segment
    metin db "karabuk"
    metin1 db 101, ?, 101

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    mov bx,0000h        
    lea dx,metin1
    mov ah,0ah
    int 21h
    
    lea si, metin
    lea di, [metin1+2]
    
    dongu:
        mov bh, [si]
        mov dh,[di]
        cmp bh,65h
        je ctrl
        cmp dh,0d
        je Degil
        cmp bh,dh
        jne Degil
        inc si
        inc di
        jmp dongu
    
    ctrl:
    cmp dh,0DH
    jne Degil
        
    e:
    mov dx, ' D'
    mov ah, 02h
    int 21h    
    jmp son
    
    Degil:
    mov dx, ' Y'
    mov ah, 02h
    int 21h
    son:    
ends

end start 
