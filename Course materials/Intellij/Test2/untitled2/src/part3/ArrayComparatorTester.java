package part3;

// pole porovnavac
public class ArrayComparatorTester {

    public static void main(String[] args) {
        // prve pole
        int[] firstArray = {1, 2, 3, 4, 5};
        // druhe pole
        int[] secondArray = {1, 2, 3, 4, 5};

        // porovnajPolia (prve pole, druhe pole)
        if (compareArrays(firstArray, secondArray)) {
            // polia su zhodne
            System.out.println("The arrays are the same");
        } else {
            // polia nie su zhodne
            System.out.println("The arrays are not the samee");
        }
    }

    // porovnaj polia (prve pole, druhe pole)
    public static boolean compareArrays(int[] firstArray, int[] secondArray) {
        // prve pole.length != druhe pole.length
        if (firstArray.length != secondArray.length) {
            return false;
        }

        // prve pole.length
        for (int i = 0; i < firstArray.length; i++)
        {
            // prve pole[i] 1= druhe pole[i]
            if (firstArray[i] != secondArray[i])
            {
                return false;
            }
        }
        return true;
    }
}
//
//public class ArrayComparatorTester {
//
//    public static void main(String[] args) {
//        //TOD: doplnit...
//    }
//
//    public static boolean suPoliaZhodne(int[] prvePole, int dlzkaPrvehoPola, int[] druhePole, int dlzkaDruhehoPola) {
//        //TOD: doplnit...
//        return //TOD: doplnit...;
//    }
//
//}

