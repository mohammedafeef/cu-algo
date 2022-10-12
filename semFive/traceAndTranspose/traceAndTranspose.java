// Trace and Transpose of a matrix

import java.io.*;
import java.util.Scanner;

public class TraceAndTranspose
{
	public static void main (String args[])
	{
		Scanner s = new Scanner(System.in);
		System.out.print("Enter the row & col of the matrix : ");
		int r = s.nextInt();
		int c = s.nextInt();
		int a[][] = new int[r][c];

		System.out.println("Enter the elements to the matrix");
		for (int i=0; i<r; i++)
			for (int j=0; j<c; j++)
				a[i][j] = s.nextInt();

		int trace = 0;
		System.out.println("Entered matrix is ");
		for (int i=0; i<r; i++)
		{
			for(int j=0; j<c; j++)
			{
				System.out.print(a[i][j] + " ");
				if (i == j) trace += a[i][j];
			}
			System.out.println();
		}

		System.out.println("Trace of the matrix is " + trace);
		System.out.println("Transpose of the matrix");
		for (int i=0; i<c; i++)
		{
			for (int j=0; j<r; j++)
				System.out.print(a[j][i] + " ");
			System.out.println();
		}
	}
}

// expected output
/* 
Enter the row & col of the matrix : 3 3
Enter the elements to the matrix
1 2 3 4 5 6 7 8 9
Entered matrix is 
1 2 3
4 5 6
7 8 9
Trace of the matrix is 15
Transpose of the matrix
1 4 7
2 5 8
3 6 9 
*/