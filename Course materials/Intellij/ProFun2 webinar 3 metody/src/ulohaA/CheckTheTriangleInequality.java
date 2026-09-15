package ulohaA;

import java.util.Scanner;


public class CheckTheTriangleInequality {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the side A: ");
        int sideA = input.nextInt();

        System.out.print("Enter the side B: ");
        int sideB = input.nextInt();

        System.out.print("Enter the side C: ");
        int sideC = input.nextInt();

        System.out.print(checkTheTriangleInequality(sideA, sideB, sideC));
        String text = checkTheTriangleInequality1(sideA, sideB, sideC);
        System.out.println(text);
        System.out.println(checkTheTriangleInequality2(sideA, sideB, sideC));

    }

    public static String checkTheTriangleInequality(int a, int b, int c) {
        String text = "";

        if (a + b > c) {
            if (b + c > a) {
                if (a + c > b) {
                    text = "The triangle can be constructed";
                } else {
                    text = "The triangle can not be constructed";
                }
            } else {
                text = "The triangle can not be constructed";
            }
        } else {
            text = "The triangle can not be constructed";

        }
        return text;

    }

    public static String checkTheTriangleInequality1(int a, int b, int c) {
        String = "";

        if (a + b > c && a + c > a && c + b > a) {
            text = ("The triangle can not be constructed");
        } else {
            text = "The triangle can not be constructed";
        }
        return text;
    }

    public static String checkTheTriangleInequality2(int a, int b, int c) {
        boolean isUnequal = false;

        if (a + b > c) {
            if (b + c > a) {
                if (a + c > b) {
                    isUnequal = true;
                }
            }
        }

        if (isUnequal) {
            text = "The triangle can be be constructed";
        } else {
            text = "The triangle can not be constructed";

        }
        return text;
    }
}


