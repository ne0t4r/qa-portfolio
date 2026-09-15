package part1;

import java.util.Scanner;

// hladac
public class SearcherTester {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        // cisla
        int[] numbers = {1, 8, 3, 4, 50, 25, 30, 45, 80, 55};

        // Zadaj cislo o ktorom si mysliš že sa nachadza v pol
        System.out.println("Input the number you believe is in the array ");
        // cislo
        int number = input.nextInt();

        // nachadza = vyhladaj cislo (cisla, cislo)
        int isLocated = findTheNumber(numbers, number);

        // nachadza
        if (isLocated != -1) {
            // cislo sa nachadza na     nachadza + 1       pozici, index    [nachadza]
            System.out.println("The number is located at the " + (isLocated + 1) + "-th position, index [" + isLocated + "]");
        } else {
            // nachadza
            System.out.println(isLocated);
        }
    }

    // vyhladaj cislo (cisla, cislo)
    public static int findTheNumber(int[] numbers, int number)
    {
        // cisla
        for (int i = 0; i < numbers.length; i++)
        {
            // cisla[i] = cislo
            if (numbers[i] == number)
            {
                return i;
            }
        }
        return -1;
    }
}
