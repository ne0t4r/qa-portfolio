package academy.metis.profun.lesson2.activity3.exercise1.part1;

import java.util.Scanner;

public class ParkingChargeTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter the number of parking hours for 3 cars: ");
        double hours1 = input.nextDouble();
        double hours2 = input.nextDouble();
        double hours3 = input.nextDouble();

        double fees1 = calculateTheCharges(hours1);
        double fees2 = calculateTheCharges(hours2);
        double fees3 = calculateTheCharges(hours3);

        System.out.println("car\t\t hours\t\t charges");
        System.out.printf("1\t\t\t%.1f\t\t\t%.2f\n", hours1, fees1);
        System.out.printf("2\t\t\t%.1f\t\t\t%.2f\n", hours2, fees2);
        System.out.printf("3\t\t\t%.1f\t\t\t%.2f\n", hours3, fees3);
        System.out.printf("Total\t\t%.1f\t\t%.2f\n", (hours1 + hours2 + hours3), (fees1 + fees2 + fees3));
    }

    public static double calculateTheCharges(double hours) {
        double result = 0;
        if (hours > 3) {
            if (hours >= 19) {
                result = 10;
            } else {
                result = ((hours - 3) * 0.5) + 2;
            }
        } else {
            result = 2;
        }
        return result;
    }
}