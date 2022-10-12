// Fibonacci Series

import java.io.*;
import java.util.Scanner;
public class Fibonacci
{
	public static void main(String args[])
	{
		int f=0, s=1, t;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the limit : ");
		int limit = sc.nextInt();
		System.out.print("\nFibonacci series upto the limit are ");
		for(int i = 0; i <= limit; i++)
		{
			if (f <= limit)
			{
				System.out.print(" " + f);
				t = f + s;
				f = s; s = t;
			}
		}

		System.out.println();
	}
}

// Expected output
/*
Enter the limit : 15

Fibonacci series upto the limit are 0 1 1 2 3 5 8 13 
*/