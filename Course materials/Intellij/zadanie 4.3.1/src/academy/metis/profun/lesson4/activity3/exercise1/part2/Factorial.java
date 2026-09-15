public class Factorial {
    public static void main(String[] args) {
        for (int cislo = 1; cislo <= 5; cislo++) {
            int faktorial = 1;
            for (int cisloF = 1; cisloF <= cislo; cisloF++) {
                faktorial *= cisloF;
            }
            System.out.println("Cislo: " + cislo + " Faktorial: " + faktorial);
        }
    }
}
