DATAS SEGMENT
    ;�˴��������ݶδ���  
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:

    mov ax,0020H
    mov ds,ax
    mov bx,0
    mov cx,64
    
 s: mov ds:[bx],bx
    inc bx
    loop s
   
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
