package academy.metis.profun.lesson6.activity3.exercise1.part1;

public class SumOfEvenNumbersTester {
    public static void main(String[] args) {
        int sucet = 0;
        for (int i = 1; i <= 30; i += 2) {
            sucet += i;
        }
        System.out.println("The sum of the even numbers is: " + sucet);

    }
}
