package sk.itvkurze.metis;

import org.junit.jupiter.api.*;
import org.junit.jupiter.api.condition.*;
import org.junit.jupiter.api.DisplayNameGeneration;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayNameGeneration(DisplayNameGenerator.ReplaceUnderscores.class)
public class UlohaB {

    private BankovyUcet ucet;

    @AfterEach
    public void upratanie() {
        ucet = null;
    }

    @Test
    @EnabledOnJre(JRE.JAVA_21)
    @Order(1)
    public void testMetodyBankovyUcet() {
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        Assertions.assertEquals(ocakavanaHodnota, ucet.getAktualnyZostatok());
    }

    @Test
    @EnabledForJreRange(min = JRE.JAVA_8, max = JRE.JAVA_22)
    @Order(2)
    @DisplayName("Test bankoveho uctu")
    public void testBankovehoUctu() {
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        Assertions.assertEquals(50.0, ucet.getAktualnyZostatok());
    }

    @Test
    @EnabledOnOs(OS.WINDOWS)
    @Order(3)
    @DisplayName("Test s parametrom")
    public void testSParametrom() {
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        double aktualnyZostatok = ucet.getAktualnyZostatok();
        Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
    }

    @Test
    @Disabled
    @Order(4)
    public void testVkladu() {
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        double vklad = 30.0;
        ucet.vloz(vklad);
        Assertions.assertEquals(ocakavanaHodnota + vklad, ucet.getAktualnyZostatok());
    }

    @Test
    @Order(5)
    @DisplayName("Test vyberu")
    public void testVyberu() {
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        double vyberZuctu = 20.0;
        ucet.vyber(vyberZuctu);
        Assertions.assertEquals(ocakavanaHodnota - vyberZuctu, ucet.getAktualnyZostatok());
    }

    @Test
    @Order(6)
    @DisplayName("Test aktualneho zostatku")
    public void testAktualnyZostatok() {
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        double aktualnyZostatok = ucet.getAktualnyZostatok();
        Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
    }
}
