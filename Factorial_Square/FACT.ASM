;;	Title		:	Finding the factorial of the user given number using dos interrupt in ALP
;;	Autor		:	Shadab Shaikh
;;	Date		:	07-09-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk


data segment
msg1 db 0Ah,0Dh, "Enter the number : $"    ;0A->carriage 0D->linefeed and printing msg
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax       ;initializing data segment

        xor ax,ax
        xor bx,bx
        xor dx,dx

        lea dx,msg1
        mov ah,09
        int 21h         ;printing the message using dios bios interrupt

        mov ah,01
        int 21h        	;accepting number from user
        sub al,30h     	;subtracting it with 30 for proper value

        mov ah,00h     	;clearing ah

        mov bx,ax      	;copying content of ax to bx
        mov ax,0001h   	;fact=1

        Fact proc      	;making procedure
up:     cmp bx,00h     	;till number is not zero
        je down
        mul bx         	;fact=fact*i
        sub bx,0001h
        jnz up			;decrementing value for next iteration

down:   int 03h
        endp

        call Fact     	;calling procedure
        code ends
        end start
