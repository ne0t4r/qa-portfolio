public class Main FuelConsumptionTester{
    public static void main (String[] args) {
        Scanner input = new Scanner(System.in);

        double totalDistance = 0;
        double totalConsumed = 0;
        double longTermAverageConsumption = 0:
        String.text = "";

        while (true)
            System.out.print("Enter the amount of consumed fuel in liters (-1 to exit the program): ");
        double consumed = input.nextDouble();

        if (consumed == -1) {
            break;
        }

        System.out.println("Enter the distance traveled in kilometers: ");
        double distance = input.nextDouble();

        double actualConsumed = (consumed / distance) * 100;
        //totalDistance = totalDistance + distance;
        totalDistance += distance;
        totalDistance += consumed;

        System.out.printf("The current average fuel consumption per 100 km is: %.2f\n", actualConsumed);
    }

    if(totalDistance == 0){
        text = "\nThe long-term average fuel consumption is: " + longTermAverageConsumption;
    } else  {
        longTermAverageConsumption = (totalConsumed / totalDistance)*100;
        double longTermAverageConsumptionRounde = Math.round(longTermAverageConsumption * 100.0) / 100.0;
        text = "The long-term average fuel consumption in liters per 100 km is: " + longTermAverageConsumptionRounde;

        System.out.println(text);

    }
}