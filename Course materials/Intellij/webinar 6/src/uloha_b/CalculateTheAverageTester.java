package uloha_b;

import java.util.Scanner;

public class CalculateTheAverageTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        final int end = 9999;
        double sum = 0;
        int count = 0;
        double average = 0;

        while (true) {
            System.out.print("Enter a whole number: ");
            int number = input.nextInt();

            if (number == end) {
                break;
            }
            sum += number;
            count++;
        }

        if (count != 0){
            average = sum / count;
        }
        System.out.println("The average is: " + average);

    }
}
