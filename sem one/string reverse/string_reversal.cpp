#include<stdio.h>
#include<string.h>

void revstr(char*str1){
    int len,i,temp=0;
    len=strlen(str1);

    for(int i=0;i<=len/2;i++){
        temp = str1[i];
        str1[i] = str1[len - i - 1];
        str1[len - i - 1] = temp;
    }
}

int main()
{
    char str1[100];
    printf("enter the string:");
    gets(str1);
    printf("string before reversing: %s\n",str1);
    revstr(str1);
    printf("string after reversing: %s",str1);


}
