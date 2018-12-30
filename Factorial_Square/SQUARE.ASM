;;	Title		:	Finding the square of a number given by user using ALP and dos interrupt
;;	Autor		:	Shadab Shaikh
;;	Date		:	29-12-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk

data segment
num1 db ?
num2 db ?
result db ?
msg1 db 0Ah,0Dh, "The first number is: $"
msg2 db 0Ah,0Dh, "The square of a number is: $"			;defining user related messages
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax
        xor ax,ax
        xor bx,bx

        lea dx,msg1
        mov ah,09
        int 21h							;displaying string 1 message

        mov ah,01						;taking number from user
        int 21h
        sub al,30h						;subtracting from 30 to get actual value

		mul al							;multiplying al value with al

        aam								;ascii adjust after multiplication
        add al,30h
        add ah,30h						;adding subtracted 30 to display on console

        mov bx,ax						;moving content of ax to bx

        lea dx,msg2
        mov ah,09
        int 21h							;displaying message 2

        mov ah,02
        mov dl,bh
        int 21h							;displaying higher byte square number

        mov ah,02
        mov dl,bl
        int 21h							;displaying lower byte square number

        mov ah,4ch						;using dos interrupt
        int 21h

        code ends
        end start
