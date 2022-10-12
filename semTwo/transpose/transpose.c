#include<stdio.h>
#include<conio.h>

void main()
{
	int a[10][10],m,n,i,j;
	clrscr();
	printf("Enter the order : ");
	scanf("%d%d",&m,&n);
	printf("\nEnter %d elements into the matrix rowwise : \n",m*n);
	for(i=0;i<m;i++)
	for(j=0;j<n;j++)
	scanf("%d",&a[i][j]);
	printf("\nThe matrix entered is:");
	for(i=0;i<m;i++)
	{
		printf("\n");
		for(j=0;j<n;j++)
		printf("%4d",a[i][j]);
	}
	printf("\nThe transpose of the matrix entered is:");
	for(i=0;i<n;i++)
	{
		printf("\n");
		for(j=0;j<m;j++)
		printf("%4d",a[j][i]);
	}
	getch();
}
