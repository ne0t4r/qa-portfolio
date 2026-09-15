package uloha1;

import java.util.Scanner;

public class MathematicalOperationsTester {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);

        System.out.println("enter integer: ");
        int number1 = input.nextInt();

        System.out.println("enter integer: ");
        int number2 = input.nextInt();

        int sum = number1 + number2;
        int multiplication = number1 * number2;
        int subtract = number1 - number2;
        int quotient = number1 / number2;
        int reminder = number1 % number2;

        System.out.println(number1 + " + " + number2 + " = " + sum);
        System.out.println(number1 + " * " + number2 + " = " + multiplication);
        System.out.println(number1 + " - " + number2 + " = " + subtract);
        System.out.println(number1 + " / " + number2 + " = " + quotient);
        System.out.println(number1 + " % " + number2 + " = " + reminder);
    }
}
