package ulohaC;

import java.util.Random;

public class ThrowTheDiceTester {
    public static void main(String[] args) {
        Random generator = new Random();

        int[] sums = new int[13];
        int[] expectedResults = {0, 0, 1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1};

        int throw1;
        int throw2;

        for (int i = 1; i < 36000; i++) {
            throw1 = generator.nextInt(6) + 1;
            throw2 = generator.nextInt(6) + 1;

            int sum = throw1 + throw2;
            sums[sum]++;
        }

        System.out.printf("%1s%16s%11s%10s\n", "sum", "total number", "expected", "actual");
        for (int i = 2; i <= 12; i++) {
            System.out.printf("%3d%14d%11.2f%10.2f\n", i, sums[i], 100.0 * expectedResults[i] / 36, 100.0 * sums[i]/36000);

        }


    }
}
