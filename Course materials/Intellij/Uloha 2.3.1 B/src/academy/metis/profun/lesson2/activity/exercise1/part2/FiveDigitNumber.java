package academy.metis.profun.lesson2.activity.exercise1.part2;

import java.util.Scanner;

public class FiveDigitNumber {

    public static void main (String [] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter a five-digit number: ");
        int number0 = input.nextInt();

        int digitMod1 = number0 % 10000;
        int number1 = number0 - digitMod1;
        int digit1 = number1 / 10000;

        int digitMod2 = number0 % 1000;
        int number2 = (number0 - digitMod2) - number1;
        int digit2 = number2 / 1000;

        int digitMod3 = number0 % 100;
        int number3 = (number0 - digitMod3) - (number1 + number2);
        int digit3 = number3 / 100;

        int digitMod4 = number0 % 10;
        int number4 = (number0 - digitMod4) - (number3 + number2 + number1);
        int digit4 = number4 / 10;

        int digit5 = (number0 - number4) - (number3 + number2 + number1);

        System.out.println(digit1 + "   " + digit2 + "   " + digit3 + "   " + digit4 + "   " + digit5);


    }

}
