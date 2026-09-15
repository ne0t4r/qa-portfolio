package ulohaA;

import java.util.Scanner;

public class najdiCislo {
    public static void main(String[] args) {
        int[] numbers = {2, 5, 8, 12, 16, 20};
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a number to search: ");
        int userInput = input.nextInt();

        int result = searchNumber(numbers, userInput);
        if (result != -1) {
            System.out.println("Number found at index: " + result);
        } else {
            System.out.println("Number not found in the array. Result: " + result);
        }
    }

    public static int searchNumber(int[] array, int target) {
        for (int i = 0; i < array.length; i++) {
            if (array[i] == target) {
                return i;
            }
        }
        return -1;
    }
}