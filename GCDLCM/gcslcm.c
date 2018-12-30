#include<stdio.h>

int main(){
	int num1,num2,gcd,temp,lcm;
	printf("Enter the value of num1");
	scanf("%d",&num1);
	
	printf("Enter the value of num2");
	scanf("%d",&num2);
	
	int b=num2;
	while(num2!=0){
		temp=num2;
		num2=num1%num2;
		gcd=temp;
	}
	
	printf("GCD is \t%d",gcd);
	
	lcm=(num1*b)/gcd;
	
	printf("\nLCM is \t%d",lcm);
	return 0;
}
