package academy.metis.profun.lesson2.activity3.exercise1.part1;

import java.util.Scanner;

public class MultipleOfANumberTester {
    public static void main(String[] args) {

        System.out.println("Enter two whole numbers");

        Scanner input = new Scanner(System.in);

        int number1 = input.nextInt();

        int number2 = input.nextInt();

        int mod = number1 % number2;

        if(mod == 0){
            int result = number1 / number2;
            System.out.println(number1 + " is divisible by the number " + number2 + " and the result of the division is " + result);
        } else {
            System.out.println(number1 + " is not divisible by the number " + number2);
        }
    }
}