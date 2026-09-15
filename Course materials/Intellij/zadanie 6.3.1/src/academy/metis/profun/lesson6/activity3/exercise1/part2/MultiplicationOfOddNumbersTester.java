package academy.metis.profun.lesson6.activity3.exercise1.part2;

public class MultiplicationOfOddNumbersTester {
    public static void main(String[] args) {
        int sucin = 1;
        for (int i = 1; i <= 15; i += 2) {
            sucin *= i;
        }
        System.out.println("Sucin neparnych cisel v intervale od 1 do 15 je: " + sucin);

    }
}
