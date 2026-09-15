package academy.metis.profun.lesson10.activity3.exercise1.part3;

public class ArrayComparatorTester {
    public static void main(String[] args) {
        int[] array1 = {1, 2, 3, 4,5};
        int[] array2 = {1, 2, 3, 4, 5};
        boolean areEqual = compareArray(array1, array2);
        if (areEqual) {
            System.out.println("Arrays are equal.");
        } else {
            System.out.println("Arrays are not equal.");
        }
    }

    public static boolean compareArray(int[] firstArray, int[] secondArray) {
        if (firstArray.length != secondArray.length) {
            return false;
        }
        for (int i = 0; i < firstArray.length; i++) {
            if (firstArray[i] != secondArray[i]) {
                return false;
            }
        }
        return true;
    }

}
