.MODEL SMALL

        .STACK 32

        .DATA

               STR1 DB 21,0,22 dup ('$')
               STR2 DB 21,0,22 dup  ('$')
               nl db 21,0,22 dup ('$') 

        .CODE
         START:

                MOV AX,@DATA
                MOV DS,AX
         DISP:
                LEA DX,STR1
                MOV AH,09H
                INT 21H
                MOV CL,00
                MOV AH,01H

         READ:

                INT 21H
                MOV BL,AL
                PUSH BX
                inc cx
                CMP AL,0DH
                JZ DISPLAY
                JMP READ
                
         DISPLAY:

                LEA DX,STR2
                MOV AH,09H
                INT 21H
                lea dx, nl
                mov ah,09h
                int 21h
                                
         ANS:
                MOV AH,02H
                POP BX
                MOV DL,BL
                INT 21H
                LOOP ANS


        .EXIT

        END  START





