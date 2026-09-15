package sk.itvkurze.metis;

import java.util.List;

public class MethodsForTest {
    private String[] cars = {"Citroen", "Mazda", "Subaru", "Jaguar"};
    private List<String> wordsFromList = List.of("Testing", "by", "JUnit5", "is", "awesome");
    int[] evenNumbers = {22, 14, 8, 32, 44};

    public String returnMessage(String message) {
        return message;
    }

    public List<String> getWordsFromList() {
        return wordsFromList;
    }

    public String[] getCars() {
        return cars;
    }

    public int[] getEvenNumbers(int i) {
        return evenNumbers;
    }

    public boolean reverseBoolean(boolean param) {
        if (param == true) {
            return false;
        } else {
            return true;
        }
    }

    public boolean isFirstNumberMore(double a, double b, double c) {
        double sum = b + c;
        return a > sum;
    }

    public int multiply(int a, int b) {
        return a * b;
    }

    public double division(double a, double b) {
        return a / b;
    }


    public String getTestingWithCorrectName(String name) {
        return "Testing in " + name + " is awesome";
    }

    public String throwException(int a) throws Exception {
        if (a < 10) {
            throw new Exception("Value should be greater than or equal to 10");
        }
        return "Value is greater than or equal to 10";
    }

    public int sum(int a, int b) {
        return a + b;
    }

    public boolean isEvenNumber(int n) {
        return n % 2 == 0;
    }

    public double squareRoot(double x) {
        if (x < 0) {
            throw new IllegalArgumentException("Negative value");
        }
        return Math.sqrt(x);
    }

    public String concatenateStrings(String a, String b) {
        return a + b;
    }

    public int findIndexOfString(String[] array, String element) {
        for (int i = 0; i < array.length; i++) {
            if (array[i].equals(element)) {
                return i;
            }
        }
        return -1;
    }

    public int getMaxFromArray(int[] numbers) {
        int max = Integer.MIN_VALUE;
        for (int number : numbers) {
            if (number > max) {
                max = number;
            }
        }
        return max;
    }

    public String toUpperCase(String input) {
        return input.toUpperCase();
    }
}
