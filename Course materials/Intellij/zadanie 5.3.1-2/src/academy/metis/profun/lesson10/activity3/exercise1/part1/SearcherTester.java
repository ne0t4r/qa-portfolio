package academy.metis.profun.lesson10.activity3.exercise1.part1;

import java.util.Scanner;

public class SearcherTester {
    public static void main(String[] args) {
        int[] numbers = {2, 5, 4, 12, 16, 20};
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a number to find: ");
        int userInput = input.nextInt();

        int result = findTheNumber(numbers, userInput);
        if (result != -1) {
            System.out.println("Number found at index: " + result);
        } else {
            System.out.println("Number not found in the array. " + result);
        }
    }

    public static int findTheNumber(int[] numbers, int number) {
        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] == number) {
                return i;
            }
        }
        return -1;
    }
}


