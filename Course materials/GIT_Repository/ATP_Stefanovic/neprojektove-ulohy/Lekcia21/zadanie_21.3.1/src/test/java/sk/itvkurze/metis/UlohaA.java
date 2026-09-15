package sk.itvkurze.metis;

import org.junit.jupiter.api.*;
import java.util.List;
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UlohaA {

    @Test
    @Order(1)
    void getWordsFromList(){
        MethodsForTest methodsForTest = new MethodsForTest();

        List<String> result = methodsForTest.getWordsFromList();
        Assertions.assertEquals(5, result.size());
        Assertions.assertEquals("Testing", result.get(0));
        Assertions.assertEquals("by", result.get(1));
        Assertions.assertEquals("JUnit5", result.get(2));
        Assertions.assertEquals("is", result.get(3));
        Assertions.assertEquals("awesome", result.get(4));
    }

    @Test
    @Order(2)
    void getCars(){
        MethodsForTest methodsForTest = new MethodsForTest();
        String[] result = methodsForTest.getCars();

        String[] expectedCars = {"Citroen", "Mazda", "Subaru", "Jaguar"};
        Assertions.assertArrayEquals(expectedCars, result);

    }

    @Test
    @Order(3)
    void reverseBoolean(){
        MethodsForTest methodsForTest = new MethodsForTest();
        Assertions.assertFalse(methodsForTest.reverseBoolean(true));
        Assertions.assertTrue(methodsForTest.reverseBoolean(false));

        Assertions.assertNotEquals(true, methodsForTest.reverseBoolean(true));
        Assertions.assertNotEquals(false, methodsForTest.reverseBoolean(false));
    }

    @Test
    @Order(4)
    void isFirstNumberMore(){
        MethodsForTest methodsForTest = new MethodsForTest();

        double a = 5.0;
        double b = 2.0;
        double c = 2.0;

        Assertions.assertTrue(methodsForTest.isFirstNumberMore(a, b, c));
        Assertions.assertTrue(methodsForTest.isFirstNumberMore(10, 5, 3));

        Assertions.assertFalse(methodsForTest.isFirstNumberMore(5.0, 2.0, 5.0));
    }


}



