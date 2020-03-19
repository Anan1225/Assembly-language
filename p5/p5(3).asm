
ASSUME CS:CODES,DS:DATAS,SS:STACKS
CODES SEGMENT
START:
    MOV AX,STACKS
    MOV SS,AX
    MOV SP,16
    
    MOV AX,DATAS
    MOV DS,AX
    
    push ds:[0]
    push ds:[2]
    pop ds:[2]
    pop ds:[0]
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END 
    
DATAS SEGMENT
    DW 0123H,0456H 
DATAS ENDS

STACKS SEGMENT
    DW 0,0
STACKS ENDS    



    

