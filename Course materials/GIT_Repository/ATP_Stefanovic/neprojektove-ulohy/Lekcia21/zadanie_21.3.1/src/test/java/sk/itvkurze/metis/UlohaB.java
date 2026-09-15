package sk.itvkurze.metis;

import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UlohaB {
    @Test
    @Order(1)
    void division (){
        MethodsForTest methodsForTest = new MethodsForTest();
        double a = 10;
        double b = 2;

        double result1 = methodsForTest.division(a, b);
        Assertions.assertEquals(5.0, result1);

    }
    @Test
    @Order(2)
    void getTestingWithCorrectName(){
        MethodsForTest methodsForTest = new MethodsForTest();

        String result = methodsForTest.getTestingWithCorrectName("Java");
        Assertions.assertEquals("Testing in Java is awesome", result);


        String result2 = methodsForTest.getTestingWithCorrectName("Python");
        Assertions.assertEquals("Testing in Python is awesome", result2);
    }

    @Test
    @Order(3)
    void throwException() throws Exception {
        MethodsForTest methodsForTest = new MethodsForTest();

        String result = methodsForTest.throwException(15);
        Assertions.assertEquals("Value is greater than or equal to 10", result);

        Exception exception = assertThrows(Exception.class, () -> methodsForTest.throwException(5));

        Assertions.assertEquals("Value should be greater than or equal to 10", exception.getMessage());

    }

    @Test
    @Order(4)
    void sum(){
        MethodsForTest methodsForTest = new MethodsForTest();

        int a = 5;
        int b = 3;
        int result1 = methodsForTest.sum(a, b);
        Assertions.assertEquals(8, result1);

        int c = -2;
        int d = 7;
        int result2 = methodsForTest.sum(c, d);
        Assertions.assertEquals(5, result2);

        int e = 0;
        int f = 10;
        int result3 = methodsForTest.sum(e, f);
        Assertions.assertEquals(10, result3);

    }

    @Test
    @Order(5)
    void findIndexOfString(){
        MethodsForTest methodsForTest = new MethodsForTest();

        String[] array1 = {"jablko", "banán", "pomaranč", "hrozno"};
        int result1 = methodsForTest.findIndexOfString(array1, "pomaranč");
        Assertions.assertEquals(2, result1);

        String[] array2 = {"mačka", "pes", "ryba"};
        int result2 = methodsForTest.findIndexOfString(array2, "vták");
        Assertions.assertEquals(-1, result2);

        String[] array3 = {};
        int result3 = methodsForTest.findIndexOfString(array3, "jablko");
        Assertions.assertEquals(-1, result3);


    }
    @Test
    @Order(6)
    void getMaxFromArray(){
        MethodsForTest methodsForTest = new MethodsForTest();

        int[] array1 = {5, 8, 2, 10, 3};
        int result1 = methodsForTest.getMaxFromArray(array1);
        Assertions.assertEquals(10, result1);

        int[] array2 = {-2, -8, -5, -1};
        int result2 = methodsForTest.getMaxFromArray(array2);
        Assertions.assertEquals(-1, result2);

        int[] array3 = {7};
        int result3 = methodsForTest.getMaxFromArray(array3);
        Assertions.assertEquals(7, result3);

        int[] array4 = {};
        int result4 = methodsForTest.getMaxFromArray(array4);
        Assertions.assertEquals(Integer.MIN_VALUE, result4);
    }
}
