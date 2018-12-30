;;	Title		:	Sorting the array elements in descending order using ALP
;;	Autor		:	Shadab Shaikh
;;	Date		:	12-08-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk


data segment
arr dw 0001h,0004h,0002h,0003h,0005h
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax
        mov ax,0000h
        
        mov ch,04h

back:
        lea si,arr
        mov cl,04h

up:     
        mov ax,[si]
        cmp ax,[si+2]
        jnc down						;descending logic

        mov bx,[si+2]
        mov [si+2],ax
        mov [si],bx

down:   inc si
        inc si
        dec cl
        jnz up

        dec ch
        jnz back

int 03h
code ends
end start
          
