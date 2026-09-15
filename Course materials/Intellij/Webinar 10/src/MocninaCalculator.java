import java.util.Scanner;

public class MocninaCalculator {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Zadajte základ (x): ");
        int x = scanner.nextInt();
        System.out.print("Zadajte exponent (y): ");
        int y = scanner.nextInt();

        if (x > 0 && y > 0) {
            int vysledok = umocni(x, y);
            System.out.println(x + " umocnene na " + y + " je " + vysledok);
        } else {
            System.out.println("Zadali ste zlé čísla, oba vstupy musia byť kladné.");
        }

        scanner.close();
    }

    public static int umocni(int x, int y) {
        if (y == 1) {
            return x*1;
        } else {
            int mocnina = x;
            for (int i = 2; i <= y; i++) {
                mocnina *= x;
            }
            return mocnina;
        }
    }
}
