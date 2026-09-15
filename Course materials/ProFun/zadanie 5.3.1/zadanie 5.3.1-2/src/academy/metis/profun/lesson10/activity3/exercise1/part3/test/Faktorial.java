public class Faktorial {

    public static void main(String[] args) {
        int n = 1;
        int faktorial = 1;

        while (n <= 5) {
            faktorial *= n;
            n++;
            System.out.println(+ n + " " + faktorial);
        }


    }
}
