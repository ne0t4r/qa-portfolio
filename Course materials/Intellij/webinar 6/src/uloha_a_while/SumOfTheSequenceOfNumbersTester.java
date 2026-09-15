package uloha_a_while;

import java.util.Scanner;

public class SumOfTheSequenceOfNumbersTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the size of data set: ");
        int size = input.nextInt();

        int sum = 0;
        int i = 1;

        while (i <= size) {
            System.out.print("Enter the " + i + ". number: ");
            int number = input.nextInt();
            sum += number;
            i++;
        }
        System.out.println("The sum of the number is: " + sum);
        }
    }
