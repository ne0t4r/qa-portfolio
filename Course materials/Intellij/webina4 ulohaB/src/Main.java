import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);

    while (true){

        System.out.println("Enter the account number (-1 to exit the program): ");
        int accountNumber = input.nextInt();

        if (accountNumber == -1){
            break;
        }
        System.out.println("Enter the balance at the begining of the month: ");
        double startingBalance = input.nextDouble();

        System.out.println("Enter total monthly expense: ");
        double expenses = input.nextDouble();

        System.out.print("Enter total monthly income: ");
        double income = input.nextDouble();

        System.out.print("Enter the credit card limit: ");
        double limit = input.nextDouble();

        double newBalance = startingBalance + expenses - income;

        if (newBalance > limit) {
            System.out.println("accound number: " + accountNumber);
            System.out.println("the credit card limit: " + limit);
            System.out.printf("balance: %.02f\n", newBalance);
            System.out.println("The credit card limit has been exceeded.");
        }

    }

    }
}