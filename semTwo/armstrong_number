#include<stdio.h>
#include<conio.h>
void main()
{
    int i,n,d;
    long lb,ub,p,s,x,t;
    printf("Enter the range : ");
    scanf("%ld%ld",&lb,&ub);
    printf("\nArmstrong numbers in the range %ld to %ld are :\n",lb,ub);
    for(x=lb;x<=ub;x++)
    {
        for(n=0,t=x;t!=0;t/=10,n++)
        ;
        for(s=0,t=x;t!=0;t/=10)
        {
            d=t%10;
            p=1;
            for(i=0;i<n;i++)
            p*=d;
            s+=p;
        }
        if(s==x) printf("\n%ld",x);
    }
}
