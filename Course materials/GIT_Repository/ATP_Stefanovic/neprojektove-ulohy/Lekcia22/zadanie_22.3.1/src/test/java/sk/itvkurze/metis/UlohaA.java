package sk.itvkurze.metis;

import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.assertThrows;


@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UlohaA {

    private BankovyUcet ucet;

    @BeforeEach
    public void beforeEach(){
        double ocakavanaHodnota = 50.0;
        ucet = new BankovyUcet(ocakavanaHodnota);
        System.out.println("Prebieha test...");
    }
    @AfterEach
    public void afterEach(){
        double ucet = 0.0;

        System.out.println("...nastavenie zostatku na: " + ucet );
        System.out.println("...test sa úspešne dokončil");
    }
    @BeforeAll
    public static void beforeAll(){
        System.out.println("Začínam testovať\n");
    }

    @Test
    @DisplayName("Test zostatok")
    @Order(1)
    public void testMetodyBankovyUcet(){
        Assertions.assertEquals(0.0,0);

    }

    @Test
    @DisplayName("Test bankového účtu")
    @Order(2)
    public void testBankovehoUctu() {     
        Assertions.assertEquals(50.0, ucet.getAktualnyZostatok());
    }
    @Test
    @DisplayName("Test s parametrom")
    @Order(3)
    public void testSParametrom() {
        double ocakavanaHodnota = 50.0;
        double aktualnyZostatok = ucet.getAktualnyZostatok();
        Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
    }

    @Test
    @DisplayName("Test vkladu")
    @Order(4)
    public void testVkladu() {
        double ocakavanaHodnota = 50.0;
        double vklad = 30.0;
        ucet.vloz(vklad);
        Assertions.assertEquals(ocakavanaHodnota + vklad, ucet.getAktualnyZostatok());
    }
    @Test
    @DisplayName("Test výberu")
    @Order(5)
    public void testVyberu() {
        double ocakavanaHodnota = 50.0;
        double vyberZuctu = 20.0;
        ucet.vyber(vyberZuctu);
        Assertions.assertEquals(ocakavanaHodnota - vyberZuctu, ucet.getAktualnyZostatok());
    }
    @Test
    @DisplayName("Test s výnimkou")
    @Order(7)
    public void testSThrow() {
        double vklad = 30.0;
        ucet.vloz(vklad);
        double ocakavanaHodnota = 50.0;
        double aktualnyZostatok = ucet.getAktualnyZostatok();

        Assertions.assertThrows(AssertionError.class, () -> {
            Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
        });
    }

    @Test
    @DisplayName("Test aktuálneho zostatku")
    @Order(6)
    public void testAktualnyZostatok() {
        double ocakavanaHodnota = 50.0;
        double aktualnyZostatok = ucet.getAktualnyZostatok();
        Assertions.assertEquals(ocakavanaHodnota, aktualnyZostatok);
    }

    @AfterAll
    public static void poTeste(){
        System.out.println("\n...koniec testovania projektu bankového účtu.");
    }
}
