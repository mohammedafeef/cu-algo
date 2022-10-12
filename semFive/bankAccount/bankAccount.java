// Bank Account : Deposit & Withdrawal

import java.util.Scanner;

final class BankAccount {
	private long accountNumber;
	private String accountHolder;
	private String accountType;
	private double bankBalance = 0;

	void deposit(double amt){
		this.bankBalance += amt;
		System.out.println("Amount  deposited successfully");
	}

	void withdraw(double amt){
		if(amt < bankBalance){
			this.bankBalance -= amt;
			System.out.println("Amount debited successfully");
		}
		else
			System.out.println("Not Enough Balance");
	}

	// main method
	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		BankAccount newAccount = new BankAccount();
		
		System.out.print("Your Name : ");
		newAccount.accountHolder = s.nextLine();

		System.out.print("Account Type (Savings/Current) : ");
		newAccount.accountType = s.nextLine();
		
		System.out.print("Your Account Number : ");
		newAccount.accountNumber = s.nextLong();
		
		char proceed;
		do{
			System.out.println("\n\t1. Deposit\n\t2. Withdraw\n\t3. View Account Balance\n\t4. Exit...");
			int choice = s.nextInt();

			switch(choice){
				case 1: 
					System.out.print("Deposit Amount : ");
					double dAmt = s.nextDouble();
					newAccount.deposit(dAmt);
					break;
				case 2: 
					System.out.print("Enter the Amount : ");
					double wAmt = s.nextDouble();
					newAccount.withdraw(wAmt);
					break;
				case 3:
					System.out.println("Your account balance is "+ newAccount.bankBalance);
					break;
				case 4:
					System.out.println("\nThanks for using our service ... ");
					break;
				default:
					System.out.println("Invalid Option");
			}

			System.out.print("Do you wish to continue? (Y/N) : ");
			proceed = s.next().charAt(0);
		}while (proceed == 'y' || proceed == 'Y');
	}
}
