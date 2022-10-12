// Check whether the triangle is equilateral, isosceles or scalene

import java.io.*;

public class Triangle
{
	public static void main(String args[]) throws IOException
	{
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("Enter the three sides of a triangle : ");
		int s1 = Integer.parseInt(in.readLine());
		int s2 = Integer.parseInt(in.readLine());
		int s3 = Integer.parseInt(in.readLine());
		
		if (s1 == s2  && s2 == s3)
			System.out.println("\nThe triangle is equilateral triangle. ");
		else if (s1 == s2 || s2 == s3 || s3 == s1)
			System.out.println("\nThe triangle is isosceles triangle. ");
		else 
			System.out.println("\nThe triangle is scalene. ");
	}
}

// Expected output
/* 
Enter the three sides of a triangle : 
5
6
5

The triangle is isosceles triangle.
*/