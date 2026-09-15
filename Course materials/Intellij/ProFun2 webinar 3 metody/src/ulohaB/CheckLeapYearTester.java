package ulohaB;

import java.util.Scanner;

public class CheckLeapYearTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter the year: ");
        int year = input.nextInt();

        if (isLeap(year)) {
            System.out.println("The year " + year + " is a leap year");
        } else {
            System.out.println("The year " + year + "is not leap year");
        }
    }

    public static boolean isLeap(int year) {
        boolean isLeap = false;
        if (year % 100 == 0) {
            if (year % 400 == 0) {
                isLeap = true;
            }
        } else {
            if (year % 4 == 0) {
                isLeap = true;
            }
        }
        return isLeap;
    }
}
