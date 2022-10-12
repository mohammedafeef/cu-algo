#include<stdio.h>
#include<conio.h>

void main()
{
	int a[10][10],b[10][10],c[10][10],i,j,m,n;
	clrscr();
	printf("Enter the order : ");
	scanf("%d%d",&m,&n);
	printf("\nEnter %d elements into the first matrix rowwise :\n",m*n);
	for(i=0;i<m;i++)
	for(j=0;j<n;j++)
	scanf("%d",&a[i][j]);
	printf("\nEnter %d elements into the second matrix rowwise :\n",m*n);
	for(i=0;i<m;i++)
	for(j=0;j<n;j++)
	{
		scanf("%d",&b[i][j]);
		c[i][j]=a[i][j]+b[i][j];
	}
	printf("\nThe first matrix :");
	for(i=0;i<m;i++)
	{
		printf("\n");
		for(j=0;j<n;j++)
		printf("%4d",a[i][j]);
	}
	printf("\nThe second matrix :");
	for(i=0;i<m;i++)
	{
		printf("\n");
		for(j=0;j<n;j++)
		printf("%4d",b[i][j]);
	}
	printf("\nThe sum matrix :");
	for(i=0;i<m;i++)
	{
		printf("\n");
		for(j=0;j<n;j++)
		printf("%4d",c[i][j]);
	}
	getch();
}
