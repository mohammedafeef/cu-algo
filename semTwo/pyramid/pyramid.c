#include<stdio.h>
#include<conio.h>
void main()
{
    int i,j,n;
    clrscr();//to clear screen
    printf("Enter the number of rows : ");
    scanf("%d",&n);
    printf("\nPyramid of * with %d rows:\n",n);
    for(i=1;i<=n;i++)
    {
        printf("\n");//print new line
        for(j=0;j<n-i;j++)
        printf(" ");//find start position
        for(j=0;j<2*i-1;j++)
        printf("*");//print stars
        getch();//wait screen to get a input from keyboard
    }
}
