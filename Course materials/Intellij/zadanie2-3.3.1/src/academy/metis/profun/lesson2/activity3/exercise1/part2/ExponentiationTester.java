package academy.metis.profun.lesson2.activity3.exercise1.part2;

import java.util.Scanner;

public class ExponentiationTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the base and exponent: ");
        int number1 = input.nextInt();
        int number2 = input.nextInt();
        int exponent = raiseTheNumber(number1, number2);

        System.out.println(number1 + " raised to the power of " + number2 + " is: " + exponent);
    }

    public static int raiseTheNumber(int x, int y) {
        int result = 1;
        if (x == 0) {
            result = 0;
        }
        for (int i = 0; i < y; i++) {
            result *= x;
        }
        return result;
    }
}