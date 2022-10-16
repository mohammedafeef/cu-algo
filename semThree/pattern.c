
#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
	char t[25],p[25];
	int l1,l2,i,j,k;
	clrscr();
	printf("Enter a text : ");
	gets(t);
	printf("\nEnter the pattern : ");
	gets(p);
	l1=strlen(t);
	l2=strlen(p);
	for(i=0;i<=l1-l2;i++)
	{
		for(j=0,k=i;j<l2;j++,k++)
			if(t[k]!=p[j]) break;
		if(j==l2) break;
	}
	if(i>l1-l2) printf("\nPattern not matching...");
	else printf("\nPattern found matching at location %d",i+1);
	getch();
}
