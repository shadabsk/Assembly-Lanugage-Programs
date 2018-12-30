;;	Title		:	Finding the largest number from an array using ALP
;;	Autor		:	Shadab Shaikh
;;	Date		:	04-08-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk

data segment
a dw 1111h,0001h,0002h,4444h,0003h					;declaring array with 5 elements
data ends

code segment
assume cs:code,ds:data
start:
	mov ax,data
	mov ds,ax
	mov ax,0000h									;initializing data segement

	mov cx,0005h									;using counter w.r.t array element

	lea si,a										;si pointing to 1st element of array
	mov ax,[si]										;moving to ax register value of si
	dec cx											;decrementing counter to 1

up:
	cmp ax,[si+2]									;comparing the ax value with next array element (16-bit operation)
	jnc down										;if no carry generates means the number is largesr
	mov ax,[si+2]									;else replace the value with current


down: 
	inc si
	inc si											;16 bit operation 2 times si incremented
	dec cx											
	jnz up											;looping till counter is 0
int 03h
code ends
end start

