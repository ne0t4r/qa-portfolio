package academy.metis.profun.lesson10.activity3.exercise1.part2;

public class StatisticsArrayTester {
    public static void main(String[] args) {
        int[] arrayA = {40, 30, 10, 50, 20};
        System.out.println("Minimum: " + getMinimum(arrayA));
        System.out.println("index of the minimum value: " + getIndexMinimum(arrayA));
        System.out.println("Maximum: " + getMaximum(arrayA));
        System.out.println("index of the maximum value: " + getIndexMaximum(arrayA));
        System.out.println("Average: " + getAverage(arrayA));
    }

    public static int getMinimum(int[] array) {
        int min = array[0];
        for (int j : array)
            if (min > j)
                min = j;
        return min;
    }

    public static int getMaximum(int[] array) {
        int max = array[0];
        for (int j : array)
            if (max < j)
                max = j;
        return max;
    }

    public static double getAverage(int[] array) {
        double sum = 0;
        for (double num : array) {
            sum += num;
        }
        return sum / array.length;
    }

    public static int getIndexMaximum(int[] array) {
        int maxValue = array[0];
        int maxIndex = 0;

        for (int i = 0; i < array.length; i++) {
            if (maxValue < array[i]) {
                maxValue = array[i];
                maxIndex = i;
            }
        }
        return maxIndex;
    }

    public static int getIndexMinimum(int[] array) {
        int minValue = array[0];
        int minIndex = 0;

        for (int i = 0; i < array.length; i++) {
            if (minValue > array[i]) {
                minValue = array[i];
                minIndex = i;
            }
        }
        return minIndex;
    }

}
