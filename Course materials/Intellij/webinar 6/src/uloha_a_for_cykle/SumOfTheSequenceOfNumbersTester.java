package uloha_a_for_cykle;

import java.util.Scanner;

public class SumOfTheSequenceOfNumbersTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the size of data set: ");
        int size = input.nextInt();

        int sum = 0;

        for (int i = 1; i <= size; i++) {
            System.out.print("Enter the " + i + ".number: ");
            int number = input.nextInt();
            sum = sum + number;
        }
        System.out.println("The sum of the numbers is: " + sum);
    }
}




