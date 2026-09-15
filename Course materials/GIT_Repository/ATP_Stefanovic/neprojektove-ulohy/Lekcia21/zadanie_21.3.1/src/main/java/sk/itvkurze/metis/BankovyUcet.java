package sk.itvkurze.metis;

public class BankovyUcet {

    private double aktualnyZostatok;

    public BankovyUcet() {
        aktualnyZostatok = 0;
    }

    public BankovyUcet(double aktualnyZostatok) {
        this.aktualnyZostatok = aktualnyZostatok;
    }

    public void vloz(double ciastka) {
        aktualnyZostatok = aktualnyZostatok + ciastka;
    }

    public void vyber(double ciastka) {
        aktualnyZostatok = aktualnyZostatok - ciastka;
    }

    public double getAktualnyZostatok() {
        return aktualnyZostatok;
    }
}
