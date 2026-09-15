package sk.itvkurze.metis;

public class TDDApproche {

    public double divisionRefactor(double a, double b) {
        if (b == 0) {
            throw new IllegalArgumentException("Nie je delitelne nulou");
        }
        return a / b;
    }

    public double multiply(double a, double b) {
        return a * b;
    }
}
