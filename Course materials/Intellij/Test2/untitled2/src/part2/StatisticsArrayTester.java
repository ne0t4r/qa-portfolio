package part2;

// pole statistiky
public class StatisticsArrayTester {

    public static void main(String[] args) {
        // pole
        int[] array = {10, 15, 5, 25, 30};

        // minimum      get minimum (pole)
        System.out.println("Minimum: " + getMinimum(array));
        // index najmensieho prvku      get index minimum (pole)
        System.out.println("index of the minimum value: " + getIndexMinium(array));
        // maximum      get maximum (pole)
        System.out.println("Maximum: " + getMaximum(array));
        // index najvacsieho prvku      get index maximum (pole)
        System.out.println("index of the maximum value: " + getIndexMaximum(array));
        // priemer      get priemer (pole)
        System.out.println("Average: " + getAverage(array));

    }

    // get maximum (pole)
    public static int getMaximum(int[] array){
        // maximum = pole[0]
        int maximum = array[0];
        // pole.length
        for (int i = 0; i < array.length; i++) {
            // maximum < pole[i]
            if (maximum < array[i]){
                // maximum = pole[i]
                maximum = array[i];
            }
        }
        // maximum
        return maximum;
    }

    // get index maximum (pole)
    public static int getIndexMaximum(int[] array){
        // index maximum
        int indexMaximum = 0;
        // maximum = pole[0]
        int maximum = array[0];
        // pole.length
        for (int i = 0; i < array.length; i++) {
            // maximum < pole[i]
            if (maximum < array[i]){
                // maximum = pole[i]
                maximum = array[i];
                // index maximum
                indexMaximum = i;
            }
        }
        // index maximum
        return indexMaximum;
    }

    // get minimum (pole)
    public static int getMinimum(int[] array){
        // minimum = pole[0]
        int minimum = array[0];
        // pole.length
        for (int i = 0; i < array.length; i++) {
            // minimum > pole[i]
            if (minimum > array[i]){
                // minimum = pole[i]
                minimum = array[i];
            }
        }
        // minimum
        return minimum;
    }

    // get index minimum (pole)
    public static int getIndexMinium(int[] array){
        // index minimum
        int indexMinimum = 0;
        // minimum = pole[0]
        int minimum = array[0];
        // pole.length
        for (int i = 0; i < array.length; i++) {
            // minimum > array[i]
            if (minimum > array[i]){
                // minimum = pole[i]
                minimum = array[i];
                // index minimum
                indexMinimum = i;
            }
        }
        // index minimum
        return indexMinimum;
    }

    // get priemer (pole)
    public static double getAverage(int[] array){
        // sucet
        double sum = 0;
        // pole.length
        for (int i = 0; i < array.length; i++) {
            // sucet = sucet + pole[i]
            sum = sum + array[i];
        }
        // priemer = sucet / pole.length
        double average = sum / array.length;
        return average;
    }

    /*
    public static void main(String[] args) {
        int[] pole = {10, 15, 5, 25, 30};
        System.out.println(vygenerujStatistikyPola(pole));
    }

    public static String vygenerujStatistikyPola(int[] pole) {
        String vysledok = "";
        int minimum = pole[0];
        int maximum = pole[0];
        int minIndex = 0;
        int maxIndex = 0;
        double sucet = 0;

        for (int i = 0; i < pole.length; i++) {
            if (pole[i] < minimum) {
                minimum = pole[i];
                minIndex = i;
            }
            if (pole[i] > maximum) {
                maximum = pole[i];
                maxIndex = i + 1;
            }
            sucet += pole[i];
        }

        vysledok += "Minimum: " + minimum + "\n";
        vysledok += "Index min prvku: " + minIndex + "\n";
        vysledok += "Maximum: " + maximum + "\n";
        vysledok += "Index max prvku: " + maxIndex + "\n";
        vysledok += "Priemer: " + (sucet / pole.length);

        return vysledok;
    }
     */
}
