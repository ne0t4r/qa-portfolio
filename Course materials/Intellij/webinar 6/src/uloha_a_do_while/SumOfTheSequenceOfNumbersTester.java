package uloha_a_do_while;

import java.util.Scanner;

public class SumOfTheSequenceOfNumbersTester {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the size of data set: ");
        int size = input.nextInt();

        int sum = 0;
        int i = 1;

        do{
            if (size == 0){
                break;
            }
            System.out.print("Enter the " + i++ + ".number: ");
            int number = input.nextInt();
            sum = sum + number;
            // i++;
        } while (i <= size);
        System.out.println("The sum of the numbers is: " + sum);

    }
}
