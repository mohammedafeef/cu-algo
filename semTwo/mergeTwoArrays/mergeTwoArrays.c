#include<stdio.h>
#include<conio.h>
void main()
{
    int a[10],b[10],c[20],i,j,k,m,n;
    clrscr();
    printf("Enter the number of elements in first array : ");
    scanf("%d",&m);
    printf("Enter %d elements in ascending order into the first array :\n",m);
    for(i=0;i<m;i++)
    scanf("%d",&a[i]);
    printf("Enter the number of elements in second array : ");
    scanf("%d",&n);
    printf("Enter %d elements in ascending order into the second array :\n",n);
    for(j=0;j<n;j++)
    scanf("%d",&b[j]);
    for(i=0,j=0,k=0;i<m&&j<n;k++)
    if(a[i]<b[j]) c[k]=a[i++];
    else c[k]=b[j++];
    while(i<m) c[k++]=a[i++];
    while(j<n) c[k++]=b[j++];
    printf("\nMerged sorted array is :");
    for(i=0;i<k;i++)
    printf("\n%d",c[i]);
    getch();
}
