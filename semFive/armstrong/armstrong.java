// Armstrong numbers within a range

import java.io.*;
import java.lang.Math;
import java.util.Scanner;

public class Armstrong
{
	public static void main(String args[])
	{
		Scanner s= new Scanner(System.in);
		System.out.print("Enter the lower & upper limit : ");
		int low = s.nextInt();
		int high = s.nextInt();

		System.out.print("\nArmstrong numbers within "+low+" and "+high+" is ");
		for (int i = low+1; i < high; ++i)
		{
			int num=0;
			int dig = (int)Math.log10(i) + 1;
			for (int temp = i; temp != 0; temp /= 10)
			{
				int rem = temp %10;
				num += Math.pow(rem, dig);
			}
			if (i == num)
				System.out.print(i + " ");
		}
		System.out.println();
	}
}

// Expected output
/* 
Enter the lower & upper limit : 99 9999

Armstrong numbers within 99 and 9999 is 153 370 371 407 1634 8208 9474
*/