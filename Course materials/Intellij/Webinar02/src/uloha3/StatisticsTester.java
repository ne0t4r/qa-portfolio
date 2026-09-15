package uloha3;

import java.sql.SQLOutput;
import java.util.Scanner;

public class StatisticsTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("enter integer: ");
        int number1 = input.nextInt();
        System.out.println("enter integer: ");
        int number2 = input.nextInt();
        System.out.println("enter integer: ");
        int number3 = input.nextInt();

        int sum = number1 + number2 + number3;
        int average = sum / 3;
        int multiplication = number1 * number2 * number3;

        int maximum = 1;
        if (maximum < number2){
            maximum = number2;

        }

        if (maximum < number3){
            maximum = number3;
        }

        int minimum = number1;

        if (minimum > number2){
            minimum = number2;
        }

        if (minimum > number3){
            minimum = number3;
        }

        System.out.println("sum: " + sum);
        System.out.println("average: " + average);
        System.out.println("multiplication: " + multiplication);
        System.out.println("maximum: " + maximum);
        System.out.println("minimum: " + minimum);
    }
}
