package academy.metis.profun.lesson4.activity3.exercise1.part2;

import java.util.Scanner;

public class SalaryOvertimeTester {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        while (true) {
            System.out.println("Enter the number of hours worked (-1 to terminate): ");
            int hoursWorked = input.nextInt();
            if (hoursWorked == -1) {
                break;
            }
            System.out.println("Enter the hourly rate: ");
            int hourlyRate = input.nextInt();
            if (hoursWorked <= 40) {
                double weeklySalary = hoursWorked * hourlyRate;
                System.out.printf("Weekly salary: " + weeklySalary + "\n\n");
                continue;
            }
            double overtime = ((hoursWorked - 40) * hourlyRate) * 0.5;
            double weeklySalary2 = (hoursWorked * hourlyRate) + overtime;
            System.out.printf("Weekly salary: " + weeklySalary2 + "\n\n");
        }

    }
}