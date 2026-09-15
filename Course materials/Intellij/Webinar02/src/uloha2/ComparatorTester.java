package uloha2;

import java.util.Scanner;

public class ComparatorTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("enter integer: ");
        int number1 = input.nextInt();
        System.out.println("enter integer: ");
        int number2 = input.nextInt();

        String text = "";

        if (number1 > number2)
            text = number1 + " is greater than " + number2;
        else if (number2 > number1)
        text = number2 + " is greater than " + number1;
        else {
            text = "The entered numbers are identical";
        }
        System.out.println(text);
    }
}
