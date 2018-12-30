;;	Title		:	Sorting the array elements in ascending order using ALP
;;	Autor		:	Shadab Shaikh
;;	Date		:	12-08-2018
;;	Version		:	1.0
;;	Availability:	https://github.com/shadabsk

data segment
arr dw 0001h,0004h,0002h,0003h,0005h
data ends											;declaring array

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax									;initializing data segment
        mov ax,0000h
        
        mov ch,04h									;using this counter as outer loop

back:
        lea si,arr									;pointing si pointer to point towards the first element of array
        mov cl,04h									;using this counter as inner loop

up:     
        mov ax,[si]									;moving the first element of array in ax
        cmp ax,[si+2]								;comparing the second element of array with first element stored in ax
        jc down										;if carry generates moving to down label, meaning the first element is greater

        mov bx,[si+2]								;using bx register as temp and storing the next element
        mov [si+2],ax								;storing the first element of array to the second element
        mov [si],bx									;finally storing the bx register value to 

down:   inc si
        inc si
        dec cl
        jnz up

        dec ch
        jnz back

int 03h
code ends
end start
          
