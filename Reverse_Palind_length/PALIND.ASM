;;	Title		:	Finding the Palindrome of a given string using ALP and dos interrupt
;;	Autor		:	Shadab Shaikh
;;	Date		:	29-12-2018
;;	Version		:	3.0
;;	Availability:	https://github.com/shadabsk

data segment
str1 db "MADAM$"
str2 db 10 dup(?)
msg1 db 0Ah,0Dh, "The original string is: $"
msg2 db 0Ah,0Dh, "The reverse  of a string is: $"
status1 db 0Ah,0Dh, "It is Palindrome string $"
status2 db 0Ah,0Dh, "It is not Palindrome string $"
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax
        xor ax,ax

        lea dx,msg1
        mov ah,09
        int 21h

        lea dx,str1
        mov ah,09
        int 21h							;displaying messages

        lea si,str1
        mov cl,00h

up:     mov al,[si]
        cmp al,"$"
        je down
        inc si
        inc cl
        jmp up

down:   dec si
        lea di,str2

up2:    mov al,[si]
        mov [di],al
        inc di
        dec si
        dec cl
        jnz up2

        mov al,"$"
        mov [di],al

        lea dx,msg2
        mov ah,09
        int 21h

        lea dx,str2
        mov ah,09
        int 21h						;till here found reverse of a string and stored into another array
        xor ax,ax
        xor bx,bx
        xor si,si
        xor di,di

        lea si,str1					;si pointing to 1st array
        lea di,str2					;di to 2nd array

up23:   mov al,[si]
        mov bl,[di]

        cmp al,bl					;comparing each element of array with position wise
        jne down1
        cmp al,'$'					;for last symbol
        je exit
        inc si
        inc di						;looping till end

        jmp up23

down1:   lea dx,status2
        mov ah,09
        int 21h
        jmp ex						;for not a palindrome case

exit:   cmp bl,'$'					;checking if both string has ended
        je fin
        fin:    lea dx,status1		;for is a palindrome case
                mov ah,09
                int 21h
                jmp ex

        lea dx,status2				;else again not a palindrome
        mov ah,09
        int 21h
        jmp ex

ex:        mov ah,4ch				;using dos interrupt
        int 21h

        code ends
        end start

