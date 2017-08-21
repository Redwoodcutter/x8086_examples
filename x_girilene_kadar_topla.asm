 DATA SEGMENT
     NUM1 DB ?
     NUM2 DB ?
     RESULT DB ?
ENDS
CODE SEGMENT 
START:
      MOV AX,DATA
      MOV DS,AX
      dongu:
      MOV AH,1
      INT 21H
      CMP  al,'x'
      jz dongu2
      SUB AL,30H 
      add NUM1,AL
      loop dongu 
      dongu2:
      mov al,0
      ADD AL,NUM1   
      MOV RESULT,AL
      MOV AH,0 
      AAA
      ADD AH,30H
      ADD AL,30H 
      MOV BX,AX
      LEA DX,result
      MOV AH,9
      INT 21H
     
      MOV AH,2
      MOV DL,BH
      INT 21H
     
      MOV AH,2
      MOV DL,BL
      INT 21H
     
      MOV AH,4CH
      INT 21H     
ENDS
END START