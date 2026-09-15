package academy.metis.profun.lesson6.activity3.exercise1.part3;

public class FactorialTester {
    public static void main(String[] args) {
        {
            int faktorial = 1;
            System.out.println("number\tfactorial");
            for (int i = 1; i <= 5; i++) {
                faktorial *= i;
                System.out.println(i + "\t\t" + faktorial);
            }
        }
    }
}



