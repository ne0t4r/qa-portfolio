package ulohaB;

public class maxArray {
    public static void main(String[] args) {
        int[] poleA = {10, 12, 31, 14, 15};
        System.out.println(min(poleA));
        System.out.println(max(poleA));
        System.out.println(indexMax(poleA));
        System.out.println(indexMin(poleA));
        System.out.println(avg(poleA));
    }

    public static int min(int[] pole) {
        int min = pole[0];
        for (int i = 0; i < pole.length; i++)
            if (min > pole[i])
                min = pole[i];
        return min;
    }

    public static int max(int[] pole) {
        int max = pole[0];
        for (int i = 0; i < pole.length; i++)
            if (max < pole[i])
                max = pole[i];
        return max;
    }

    public static double avg(int[] pole) {
        double sum = 0;
        for (double num : pole) {
            sum += num;
        }
        return sum / pole.length;
    }

    public static int indexMax(int[] pole) {
        int maxValue = pole[0];
        int maxIndex = 0;

        for (int i = 0; i < pole.length; i++) {
            if (maxValue < pole[i]) {
                maxValue = pole[i];
                maxIndex = i;
            }
        }
        return maxIndex;
    }

    public static int indexMin(int[] pole) {
        int minValue = pole[0];
        int minIndex = 0;

        for (int i = 0; i < pole.length; i++) {
            if (minValue > pole[i]) {
                minValue = pole[i];
                minIndex = i;
            }
        }
        return minIndex;
    }


}


