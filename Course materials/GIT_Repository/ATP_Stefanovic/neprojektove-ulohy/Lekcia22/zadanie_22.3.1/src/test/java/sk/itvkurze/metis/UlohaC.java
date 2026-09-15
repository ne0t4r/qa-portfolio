package sk.itvkurze.metis;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;


public class UlohaC {
    private final TDDApproche tddApproche = new TDDApproche();

    @ParameterizedTest
    @CsvSource({
            "4, 2, 2",
            "10, 5, 2",
            "0, 1, 0",
            "-6, 2, -3"
    })
    public void testDivisionRefactor(double a, double b, double expected) {
        double result = tddApproche.divisionRefactor(a, b);
        Assertions.assertEquals(expected, result);
    }

    @ParameterizedTest
    @CsvSource({
            "4, 2, 8",
            "10, 5, 50",
            "0, 1, 0",
            "-6, 2, -12"
    })
    public void testMultiply(double a, double b, double expected) {
        double result = tddApproche.multiply(a, b);
        Assertions.assertEquals(expected, result);
    }
}
