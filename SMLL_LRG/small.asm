;;	Title		:	Finding the smallest number from an array using ALP
;;	Autor		:	Shadab Shaikh
;;	Date		:	04-08-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk

data segment							
a dw 1111h,0001h,0002h,4444h,0003h
data ends

code segment
assume cs:code,ds:data
start:
	mov ax,data
	mov ds,ax
	mov ax,0000h

	mov cx,0005h

	lea si,a
	mov ax,[si]
	dec cx

up:
	cmp ax,[si+2]
	jc down													;if carry generates means the number is smallest
	mov ax,[si+2]


down: 
	inc si
	inc si
	dec cx
	jnz up
	
int 03h
code ends
end start

