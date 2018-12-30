;;	Title		:	Finding the reverse of a given string using ALP and dos interrupt
;;	Autor		:	Shadab Shaikh
;;	Date		:	29-12-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk

data segment
str1 db "SHADAB$"						;given string
str2 db 10 dup(?)						;using it for reverse
msg1 db 0Ah,0Dh, "The original string is: $"		
msg2 db 0Ah,0Dh, "The reverse  of a string is: $"		;user related messages declared in data segment
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax
        xor ax,ax								;initializing data segment and clearing registers

        lea dx,msg1
        mov ah,09
        int 21h									;displaying original string message

        lea dx,str1
        mov ah,09
        int 21h									;displaying original string

        lea si,str1								;si pointing to first element of str1
        mov cl,00h								;using counter to find length of string

up:     mov al,[si]
        cmp al,"$"								;moving content of si to register and comapring with end of string
        je down
        inc si
        inc cl
        jmp up									;looping till end

down:   dec si									;when end is reached decrementing by 1 to backspace the dollar
        lea di,str2								;di pointing to first element of str2 and si to last element of str1

up2:    mov al,[si]
        mov [di],al								;moving last position element of str1 element to first position element of str2
        inc di							
        dec si					
        dec cl									;using counter to check if string is ended
        jnz up2

        mov al,"$"								;terminating reversed string wih $
        mov [di],al

        lea dx,msg2
        mov ah,09
        int 21h

        lea dx,str2
        mov ah,09
        int 21h									;displaying messages

        mov ah,4ch								;using dos interrupy
        int 21h

        code ends
        end start

