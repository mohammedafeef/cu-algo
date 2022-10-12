#include<stdio.h>
#include<conio.h>
void main()
{
    int a;
    printf("Enter an amount : ");
    scanf("%d",&a);
    printf("\nCurrency denominations are :\n");
    if(a/2000!=0)
    {
        printf("\n2000 x %d",a/2000);
        a%=2000;
    }
    if(a/500!=0)
    {
        printf("\n500 x %d",a/500);
        a%=500;
    }
    if(a/200!=0)
    {
        printf("\n200 x %d",a/200);
        a%=200;
    }
    if(a/100!=0)
    {
        printf("\n100 x %d",a/100);
        a%=100;
    }
    if(a/50!=0)
    {
        printf("\n50 x %d",a/50);
        a%=50;
    }
    if(a/20!=0)
    {
        printf("\n20 x %d",a/20);
        a%=20;
    }
    if(a/10!=0)
    {
        printf("\n10 x %d",a/10);
        a%=10;
    }
    if(a/5!=0)
    {
        printf("\n5 x %d",a/5);
        a%=5;
    }
    if(a/2!=0)
    {
        printf("\n2 x %d",a/2);
        a%=2;
    }
    if(a!=0) printf("\n1 x %d",a);
    getch();
}
