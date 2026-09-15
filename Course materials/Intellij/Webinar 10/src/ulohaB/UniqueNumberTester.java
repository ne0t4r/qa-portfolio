package ulohaB;

import java.util.Scanner;

public class UniqueNumberTester {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        enterTheNumber(input);
    }

    public static void enterTheNumber(Scanner input) {
        int[] numbers = new int[5];
        int number;
        int position = 0;

        for (int i = 1; i <= numbers.length; i++) {
            System.out.print("Enter the " + i + "-th number in the range 10 to 100: ");
            number = input.nextInt();


            if (number >= 10 && number <= 100) {
                int index = search(number, numbers);

                if (index == -1) {
                    numbers[position] = number;
                    position++;
                }


            }
        }
        writeOutArray(numbers);
    }

    public static void writeOutArray(int[] numbers) {
        System.out.println("\nThe unique numbers are:");
        for (int number : numbers) {
            System.out.print(number + " ");

        }

    }

    public static int search(int number, int[] numbers) {
        int index = -1;

        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] == number) {
                index = i;
                break;
            }

        }


        return index;
    }
}
