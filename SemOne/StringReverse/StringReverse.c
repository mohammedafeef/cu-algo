#include<stdio.h>
#include<conio.h>
void stringrev(char*);
void main()
{
	char str[15];
	clrscr();
	printf("Enter a string : ");
	gets(str);
	stringrev(str);
	printf("\nReverse is %s",str);
	getch();
}
void stringrev(char *s)
{
	int l;
	char *p,*q,t;
	for(p=s,l=0;*p!='\0';l++,p++)
	;
	for(p=s,q=s+l-1;p<q;p++,q--)
	{
		t=*p;
		*p=*q;
		*q=t;
	}
}