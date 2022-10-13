#include<stdio.h>
int main()
{
    int num,s,r,d;
    printf("enter any number:");
    scanf("%d",&num);
    s=r=0;
    while (num!=0){
        d=num%10;
        s+=d;
        r=r*10+d;
        num/=10;
    }
    printf("sum=%d",s);
}