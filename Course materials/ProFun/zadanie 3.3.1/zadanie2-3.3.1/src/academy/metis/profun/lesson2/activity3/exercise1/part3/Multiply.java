package academy.metis.profun.lesson2.activity3.exercise1.part3;

import java.util.Scanner;

public class Multiply {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter two integers: ");
        int a = input.nextInt();
        int b = input.nextInt();

        if (isDivisible(a, b)) {
            System.out.println("Number " + b + " is divisible by " + a);
        } else {
            System.out.println("Number " + b + " is not divisible by " + a);
        }
    }

    public static boolean isDivisible(int number1, int number2) {
        boolean isDivisible = false;
        if (number2 != 0 && number1 != 0 && number2 % number1 == 0) {
            isDivisible = true;
        }
        return isDivisible;
    }
}