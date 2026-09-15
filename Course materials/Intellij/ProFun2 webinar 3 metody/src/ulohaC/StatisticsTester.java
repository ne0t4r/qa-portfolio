package ulohaC;

import java.util.Scanner;

public class StatisticsTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number: ");
        double number1 = input.nextDouble();

        System.out.print("Enter the number: ");
        double number2 = input.nextDouble();

        System.out.print("Sum = " + calculateTheSum(number1, number2));
        System.out.print("Subtract = " + calculateTheSubtract(number1, number2));
        System.out.print("Quotient = " + calculateTheQuotient(number1, number2));
        System.out.print("Multiplication = " + calculateTheMultiplication(number1, number2));
    }

    public static double calculateTheSum(double x, double y) {
        double sum = x + y;
        return sum;

    }

    public static double calculateTheSubtract(double a, double b) {
        double subtract = a - b;
        return subtract;
    }
    public static double calculateTheQuotient(double number1, double number2){
        return number1 * number2;

    }

    public static double calculateTheMultiplication(double a, double b){
        return a / b;
    }
}

