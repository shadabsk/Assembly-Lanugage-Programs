# Project Title

Assembly Language Programs
* Factorial & square of a number taken from user using DOS interrupt
* Finding GCD & LCM of a number
* Finding the reverse & length of a string, checking whether string is palindrome or not using dos interrupt
* Sorting an array in ascending & descending
* Finding the largest & smallest number from an array

## Getting Started
* Copy the .asm files in the TASM installed directory.
* The image file represents the sample input and generated output
* assemble using tasm followed by filename.asm eg: tasm fact.asm *giving extention are optional*
* link using tlink followed by filename.obj eg:square.obj *giving extention are optional*

### Factorial & Square 
* For factorial use td fact.exe then press f9 and enter number observe the output in ax register
* For square directly right square.exe after using tlink and enter the number between 0-9

### GCD and LCM
*  use td GCD_LCM.exe then press f9 and observe the GCD output in bx register and LCM output in dx register

### String based operation (Reverse,Palindrome,Length of a string)
* For length of a string use td length.exe then press f9 and observe the output in cx register
* For palindrome use palind.exe and observe the output in console
* For Reverse use reverse.exe and observe the output in console

### Sorting
* use td followed by filename example asc.exe then press f9 and observe the output in ax register

### Largest-Smallest
* use td followed by filename example small.exe then press f9 then press f10+v+d to enter into dump and observe the output
(Representation will be first higher byte then lower byte)

### Prerequisites

* Turbo Assembler

```
i have used Tasm 1.4
```

## Demonstrations (Valid set Sample inputs and output)

* Factorial of a number taken from user using DOS interrupt
<p align="center">
  <img src="https://i.ibb.co/LQ6SZsP/op.jpg" width="550" height="300"  title="Factorial O/P">
 </p>

 * Square of a number taken from user using DOS interrupt
<p align="center">
  <img src="https://i.ibb.co/MnDLxjj/square.jpg" width="550" height="300"  title="Square O/P">
 </p>

* GCD & LCM
<p align="center">
  <img src="https://i.ibb.co/2vDqTDH/op.jpg" width="550" height="300" title="GCD&LCM O/P">
 </p>

* Checking String is Palindrome or not
<p align="center">
  <img src="https://i.ibb.co/26W9cz5/palind.jpg" width="550" height="300" title="Palindrome O/P">
 </p>

 * Checking Length of string
<p align="center">
  <img src="https://i.ibb.co/VgH0vGN/length.jpg" width="550" height="300" title="Length O/P">
 </p>

 * Reverse of string
<p align="center">
  <img src="https://i.ibb.co/XVRDBMW/reverse.jpg" width="550" height="300" title="Reverse O/P">
 </p>

 * Arranging array in ascending
<p align="center">
  <img src="https://i.ibb.co/7KX2dTL/asc-op.jpg" width="550" height="300" title="ascending O/P">
 </p>

 * Arranging array in descending
<p align="center">
  <img src="https://i.ibb.co/2djmpzg/dsc-op.jpg" width="550" height="300" title="descending O/P">
 </p>

 * Finding smallest element from array
<p align="center">
  <img src="https://i.ibb.co/ZN8Wmz9/small.jpg" width="550" height="300" title="small O/P">
 </p>


* Finding Largest element from array
<p align="center">
  <img src="https://i.ibb.co/8dVqhHG/large.jpg" width="550" height="300" title="large O/P">
 </p>


## Built With

* [Tasm 1.4](http://techapple.net/2013/01/tasm-windows-7-windows-8-full-screen-64bit-version-single-installer/) - Turbo Assembler

## Authors

* **Shadab Shaikh** - [shadabsk](https://github.com/shadabsk)

## Acknowledgments

* The template of readme.md was taken from [PurpleBooth](https://github.com/PurpleBooth)


