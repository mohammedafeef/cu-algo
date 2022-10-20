#include <stdio.h> 
#include<conio.h>
int main() 
{ 
    int arr[5], length = 5, i, j, temp,n,min;
    clrscr();
    printf("Enter the number of elements : ");
    scanf("%d",&n);
    printf("Enter %d numbers : ",n);
    for (i = 0; i < n; i++)
    {
        scanf("%d",&arr[i]);
    }
    for (i = 0; i < n-1; i++) 
    { 
        min = i; 
        for (j = i+1; j < n; j++) 
          if (arr[j] < arr[min]) 
            min = j; 
  
        temp=arr[min];
        arr[min]=arr[i];
        arr[i]=temp;
    }
    printf("Sorted array is : ");
    for (i = 0; i < n; i++)
    {
        printf(" %d ",arr[i]);
    }
    return 0; 
    getch();
} 
