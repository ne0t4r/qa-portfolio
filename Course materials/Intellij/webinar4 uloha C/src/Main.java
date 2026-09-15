import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int fix = 200;
        double percentageBasedBonus = 0.09;

        while(true){
            System.out.println("\nEnter the weekly turnover (-1 to exit the program): ");
            double weeklyTurnover = input.nextDouble();

            if (weeklyTurnover == -1){
            break;
            }
            double weeklySalary = fix + (weeklyTurnover * percentageBasedBonus);
            System.out.printf("Your weekly salary is %.02f EUR\n", weeklySalary);
        }
        input.close();
        System.out.println("\n. . . Program ended");
        }
}