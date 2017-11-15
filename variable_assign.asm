.MODEL SMALL
.STACK 100H
.DATA
VAL1 DB 5
VAL2 DB ?

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV VAL2,AL
    
    MOV AH,2 
    
    ADD VAL1, 48 
    
    MOV DL,VAL1  
    INT 21H
    MOV DL,VAL2
    INT 21H
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    





