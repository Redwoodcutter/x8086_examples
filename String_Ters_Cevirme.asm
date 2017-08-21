       .MODEL SMALL

        .STACK 64

        .DATA

               kaynak DB 21,0,22 DUP ('$')
               ters DB 21,0,22 DUP('$')
               sonuc db 21,0,22 DUP('$') 
        .CODE
         BASLA:

                MOV AX,@DATA
                MOV DS,AX
         EKRAN:
                LEA DX,kaynak+2
                MOV AH,09H
                INT 21H

                MOV CL,00
                MOV AH,01H
         OKU:
                INT 21H
                MOV BL,AL
                PUSH BX
                inc cx
                CMP AL,0DH
                JZ EKRAN2
                JMP OKU
         EKRAN2:

                LEA DX,ters+2
                MOV AH,09H
                INT 21H
                lea dx, sonuc
                mov ah,09h
                int 21h          
         SONUC1:
                MOV AH,02H
                POP BX
                MOV DL,BL
                INT 21H
                LOOP SONUC1
        .EXIT

        END  BASLA





