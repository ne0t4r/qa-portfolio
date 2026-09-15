package ulohaB;

import java.util.Scanner;

public class mocnina {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Zadaj zaklad cisla a exponent: ");
        double num1 = input.nextInt();
        double num2 = input.nextInt();
        double result = 1;
            for (int i = 0; i < num2; i++) {
                result *= num1;
        }
        System.out.println(num1 + " umocnene na " + num2 + " je: " + result);
    }
}
