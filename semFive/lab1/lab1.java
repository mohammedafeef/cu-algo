// 1.	Write a program to find the sum, difference, product, quotient and remainder of two numbers passed as command line argument.

import java.io.*;


public class lab1{
	public static void main (String []Args) throws IOException{
		int a,b;
		BufferedReader br =new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter First Number");
		a = Integer.parseInt(br.readLine());

		System.out.println("Enter Second Number");
		b = Integer.parseInt(br.readLine());

		int sum = a+b;
		int sub = a-b;
		int div = a/b;
		int pro = a*b;
		int rem = a%b;

		System.out.println("Sum = "+ sum);
		System.out.println("Difference = "+ sub);
		System.out.println("Quotient  = "+ div);
		System.out.println("Remainder  = "+ rem);
		System.out.println("Product  = "+ pro);



	}
}
