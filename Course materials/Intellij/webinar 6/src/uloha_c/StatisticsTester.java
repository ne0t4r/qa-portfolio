package uloha_c;

import java.util.Scanner;

public class StatisticsTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int size = 0;
        int sum = 0;
        int minimum = 0;
        int maximum = 0;
        int absMaximum = 0;

        System.out.print("Enter the size of the data set as a positive integer: ");
        size = input.nextInt();

        for (int i = 1; i <= size; i++){
            System.out.print("Enter " + i + ".number: ");
            int number  = input.nextInt();

            if(i == 1 ){
                absMaximum = minimum = maximum = number;
            }

            sum += number;
            if (number > maximum){
                maximum = number;
            }
            if (number < minimum){
                minimum = number;
            }
            if(Math.abs(number) > Math.abs(absMaximum)){
                absMaximum = number;
            }
        }
        System.out.println("The sum of the number is: " + sum);
        System.out.println("The maximum is: " + maximum);
        System.out.println("The minimum is: " + minimum);
        System.out.println("The maximum is absolute value is: " + absMaximum);
    }
}
