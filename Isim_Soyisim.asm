
org 100h

  MOV AH,02H
    MOV BH,00H
    MOV DH,0CH;SATIR
    MOV DL,27H;SUTUN
    INT 10H 
    LEA DX,isim   
    MOV AH,09H
    INT 21H

ret        

isim db "oguz kumcular$"




