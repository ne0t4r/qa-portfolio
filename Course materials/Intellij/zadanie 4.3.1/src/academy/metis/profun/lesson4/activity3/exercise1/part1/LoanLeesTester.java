package academy.metis.profun.lesson4.activity3.exercise1.part1;


import java.util.Scanner;

public class LoanLeesTester {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        while (true) {
            System.out.println("Enter the amount of the loan (-1 to terminate): ");
            int loan = input.nextInt();
            if (loan == -1) {
                break;
            }
            System.out.println("Enter the interest rate: ");
            double interestRate = input.nextDouble();

            System.out.println("Enter the lock-in period in days: ");
            int lockPeriod = input.nextInt();

            double fees = (loan * interestRate * lockPeriod) / 365.0;
            System.out.printf("The fees for the loan are: "+ fees + "\n\n");


        }
    }
}
