 DATA SEGMENT
            sayilar db 10, 20 , 30 , 40 , 50 , 60 , 70 , 80 , 90,
     RESULT Db 10
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
 mov cx,9  
       lea si,sayilar
       mov bl,[si]
       topla:             
       inc si
       add bl,[si]  
       loop topla
ENDS
END START