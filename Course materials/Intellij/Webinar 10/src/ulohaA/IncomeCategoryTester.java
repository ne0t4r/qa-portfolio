//package ulohaA;
//
//import java.util.Scanner;
//
//public class IncomeCategoryTester {
//
//    public static final int BONUS_FIX = 200;
//    public static final double PERCEMTAGE_RATE_OF_REMUNERATION = 0.09;
//
//    public static void main(String[] args) {
//        Scanner input = new Scanner(System.in);
//
//        determineTheWeeklyIncomeCategory(input) {
//
//        }
//        public static void determineTheWeeklyIncomeCategory (Scanner input){
//            double turnover;
//            double bonus;
//            int[] category = new int[9];
//
//            while (true) {
//                System.out.print("\nEnter turnover (-1 to terminate): ");
//                turnover = input.nextDouble();
//
//                if (turnover == -1) {
//                    break;
//                }
//
//                bonus = calculateTheBonus(turnover);
//                System.out.println("The employees bonus is: " + bonus + "EUR");
//
//                classifyIntoCategories(category, bonus);
//
//                System.out.println("\nCategory of weekly employee incomes");
//                System.out.println("200 - 299 EUR " + category[0]);
//                System.out.println("300 - 399 EUR " + category[1]);
//                System.out.println("400 - 499 EUR " + category[2]);
//                System.out.println("500 - 599 EUR " + category[3]);
//                System.out.println("600 - 699 EUR " + category[4]);
//                System.out.println("700 - 799 EUR " + category[5]);
//                System.out.println("800 - 899 EUR " + category[6]);
//                System.out.println("900 - 999 EUR " + category[7]);
//                System.out.println("1000 and more EUR" + category[8]);
//            }
//        }
//
//        public static void classifyIntoCategories ( int[] category, double bonus){
//            if (bonus >= 1000) {
//                category[8]++;
//            } else if (bonus >= 900) {
//                category[7]++;
//            } else if (bonus >= 800) {
//                category[6]++;
//
//            } else if (bonus > 700) {
//                category[5]++;
//
//            } else if (bonus > 600) {
//                category[4]++;
//            } else if (bonus > 500) {
//                category[3]++;
//            } else if (bonus > 400) {
//                category[2]++;
//            } else if (bonus > 300) {
//                category[1]++;
//            }else{
//                category[0];
//
//            }
//        }
//
//        public static double calculateTheBonus ( double turnover){
//            return BONUS_FIX + (turnover * PERCEMTAGE_RATE_OF_REMUNERATION);
//        }
//    }
//}
//
//
//
//
