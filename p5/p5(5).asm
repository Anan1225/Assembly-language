ASSUME CS:CODES
a segment
	db 1,2,3,4,5,6,7,8
a ends

b segment
	db 1,2,3,4,5,6,7,8
b ends

cn segment
	db 0,0,0,0,0,0,0,0
cn ends

CODES SEGMENT    
START:
    mov ax,a
    mov ds,ax
    mov ax,b
    mov es,ax
    
    mov bx,0
    mov cx,8
s:  mov dx,[bx]
	add dx,es:[bx]
	push ds
	mov ax,cn
	mov ds,ax
	mov [bx],dx
	pop ds
	add bx,2
	loop s
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
