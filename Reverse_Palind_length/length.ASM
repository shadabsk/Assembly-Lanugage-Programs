;;	Title		:	Finding the length of a given string
;;	Autor		:	Shadab Shaikh
;;	Date		:	29-12-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk

data segment
str1 db "SHADAB$"						;given string
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax
        xor ax,ax								;initializing data segment and clearing registers

        lea si,str1								;si pointing to first element of str1
        mov cl,00h								;using counter to find length of string

up:     mov al,[si]								;moving content of si to register and comapring with end of string
        cmp al,"$"								;comparing with $ to identify end of string
        je down									;if equals terminate
        inc si
        inc cl									;increment counter to each iteration
        jmp up									;looping till end

down:   
        xor ax,ax
        xor bx,bx
        xor dx,dx								;clearing all the rest of register to get output in cx

        int 03h									;breakpoint interrupt
        code ends
        end start

