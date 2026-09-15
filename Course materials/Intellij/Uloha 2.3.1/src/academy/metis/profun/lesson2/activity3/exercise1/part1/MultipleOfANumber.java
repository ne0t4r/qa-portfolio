package academy.metis.profun.lesson2.activity3.exercise1.part1;

import java.util.Scanner;

public class MultipleOfANumber {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter two numbers: ");

        int number1 = input.nextInt();
        int number2 = input.nextInt();

        int quotient = number1 / number2;
        int reminder = number1 % number2;

        String text = "";

          if(reminder == 0){
            text = number1 + " is divisible by the number " + number2 + " and the result of the division is: " + quotient;
        } else if (reminder >= 1) {
            text = number1 + " is not divisible by the number " + number2;
        } else
            text = number1 + " is not divisible by the number " + number2;



        System.out.println(text);
    }
}
