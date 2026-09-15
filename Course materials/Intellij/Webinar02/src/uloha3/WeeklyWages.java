import java.util.Scanner;

public class WeeklyWages {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double hodiny, sadzba, mzda, nadcas, tyzdennaMzda;

        while (true) {
            System.out.print("Zadaj počet odpracovaných hodín (-1 končí program): ");
            hodiny = scanner.nextDouble();

            if (hodiny == -1) {
                break;
            }

            System.out.print("Zadaj sadzbu za hodinu: ");
            sadzba = scanner.nextDouble();

            if (hodiny > 40) {
                nadcas = ((hodiny - 40) * (sadzba)*0.5);
                mzda = 40 * sadzba;
                tyzdennaMzda = mzda + nadcas;
            } else {
                nadcas = 0;
                mzda = hodiny * sadzba;
                tyzdennaMzda = mzda;
            }

            System.out.println("Týždenná mzda je: " + tyzdennaMzda);
        }

        scanner.close();
        System.out.println("Program skončil.");
    }
}
