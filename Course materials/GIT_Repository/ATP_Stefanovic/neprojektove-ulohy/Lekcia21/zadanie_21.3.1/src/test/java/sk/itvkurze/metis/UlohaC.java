package sk.itvkurze.metis;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class ulohaC {

    @Test
    public void testBankovehoUctu() {
        double ocakavanaHodnota = 0.0;
        BankovyUcet ucet = new BankovyUcet(ocakavanaHodnota);
        Assertions.assertEquals(0.0, ucet.getAktualnyZostatok());
    }

    @Test
    public void testMetodyBankovyUcet(){
        BankovyUcet ucet = new BankovyUcet();
        Assertions.assertEquals(0,0);

    }
    @Test
    public void testKonstruktorSParametrom() {
        double ocakavanaHodnota = 100.0;
        BankovyUcet ucet = new BankovyUcet(ocakavanaHodnota);
        double aktualnyZostatok = ucet.getAktualnyZostatok();
        Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
    }

    @Test
    public void testVkladu() {
        double ocakavanaHodnota = 50.0;
        double vklad = 30.0;
        BankovyUcet bankovyUcet = new BankovyUcet(ocakavanaHodnota);
        bankovyUcet.vloz(vklad);
        Assertions.assertEquals(ocakavanaHodnota + vklad, bankovyUcet.getAktualnyZostatok());
    }
    @Test
    public void testVyberu() {
        double ocakavanaHodnota = 50.0;
        double vyberZuctu = 20.0;
        BankovyUcet bankovyUcet = new BankovyUcet(ocakavanaHodnota);
        bankovyUcet.vyber(vyberZuctu);
        Assertions.assertEquals(ocakavanaHodnota - vyberZuctu, bankovyUcet.getAktualnyZostatok());
    }

    @Test
    public void testAktualnyZostatok() {
        double ocakavanaHodnota = 150.0;
        BankovyUcet ucet = new BankovyUcet(ocakavanaHodnota);
        double aktualnyZostatok = ucet.getAktualnyZostatok();
        Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
    }
}
