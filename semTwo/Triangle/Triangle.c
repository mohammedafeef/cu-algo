#include <stdio.h>
#include<conio.h>
void main()
{
    int a[10][10], i, j, m, n;
    printf("Enter the order : ");
    scanf("%d%d", &m, &n);
    for (i = 0; i < m; i++)
    {
        for (j = 0; j < n; j++)
        {
            if (i < j)
                a[i][j] = 1;//upper triangle
            else if (i > j)
                a[i][j] = -1;//lower triangle
            else
                a[i][j] = 0;//diagonal elements
        }
    }
    printf("\nThe matrix :\n");
    for (i = 0; i < m; i++)
    {
        printf("\n");
        for (j = 0; j < n; j++)
            printf("%4d", a[i][j]);
    }
}
