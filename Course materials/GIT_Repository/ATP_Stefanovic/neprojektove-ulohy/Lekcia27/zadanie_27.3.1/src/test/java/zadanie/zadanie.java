package zadanie;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.Test;

public class zadanie
{

    WebDriver driver;


    @BeforeSuite
    public void chromedriver() {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("https://www.dovoznakupov.sk/");


        driver.findElement(By.id("agy-accept")).click();
        driver.findElement(By.id("cookie_action_close_header")).click();

    }

    @Test(enabled = false)
    public void homePage(){
        driver.findElement(By.cssSelector("[href='https://www.dovoznakupov.sk/']")).click();

    }

    @Test(groups = "Uloha A")
    public void ulohaA() throws InterruptedException {

        Thread.sleep(1000);

        WebElement otvaracieHodiny = driver.findElement(By.id("ui-id-1"));
        otvaracieHodiny.click();
        otvaracieHodiny.isEnabled();
        otvaracieHodiny.isDisplayed();
        String actOtvr = otvaracieHodiny.getText();
        String expOtvr = "Otváracie hodiny";
        Assert.assertEquals(actOtvr, expOtvr, "Text sa nezhoduje");

        Thread.sleep(1000);

        WebElement otvaracieHodiny2 = driver.findElement(By.id("ui-id-2"));
        otvaracieHodiny2.isEnabled();
        otvaracieHodiny2.isEnabled();
        String actOtvr2 = otvaracieHodiny2.getText();
        String expOtvr2 = "pondelok\n" + "17:00 – 23:30\n" + "utorok\n" + "17:00 – 23:30\n" + "streda\n" +
                "17:00 – 23:30\n" + "štvrtok\n" + "17:00 – 23:30\n" + "piatok\n" + "17:00 – 1:00\n" + "sobota\n" +
                "17:00 – 1:00\n" + "nedeľa\n" + "17:00 – 22:30";
        Assert.assertEquals(otvaracieHodiny2.getText(), expOtvr2, "Text sa nezhoduje");

        Thread.sleep(1000);

        WebElement doleziteInfo = driver.findElement(By.id("ui-id-3"));
        doleziteInfo.click();
        doleziteInfo.isEnabled();
        doleziteInfo.isDisplayed();
        String actDi = doleziteInfo.getText();
        String expDi = "Dôležité informácie";
        Assert.assertEquals(actDi, expDi, "Text sa nezhoduje");

        Thread.sleep(1000);

        WebElement doleziteInfo2 = driver.findElement(By.id("ui-id-4"));
        doleziteInfo2.isEnabled();
        doleziteInfo2.isDisplayed();
        String actDi2 = doleziteInfo2.getText();
        String expDi2 = "Služba Eat Ham delivery je určená výhradne pre fyzické osoby staršie ako 18 rokov.\n" +
                "Služba je poskytovaná v rámci Banskej Bystrice a jej okolí, ktoré je špecifikované vo všeobecných obchodných podmienkách a tu.";
        Assert.assertEquals(actDi2, expDi2,"Text sa nezhoduje");

        Thread.sleep(1000);

        WebElement moznostiDorucenia = driver.findElement(By.id("ui-id-5"));
        moznostiDorucenia.click();
        moznostiDorucenia.isEnabled();
        moznostiDorucenia.isDisplayed();
        String actMd = moznostiDorucenia.getText();
        String expMd = "Možnosti a ceny doručenia";
        Assert.assertEquals(actMd, expMd, "Text sa nezhoduje");

        Thread.sleep(1000);

        WebElement moznostiDorucenia2 = driver.findElement(By.id("ui-id-6"));
        moznostiDorucenia2.click();
        moznostiDorucenia2.isEnabled();
        moznostiDorucenia2.isDisplayed();
        String actMd2 = moznostiDorucenia2.getText();
        String expMd2 = "Expresné dodanie do 30 minút – od 4,00 € (EUR)\n" +
                "(platí len vo vybraných lokalitách, špecifikovaných tu alebo vo VOP)\n" +
                "Štandardné dodanie do 120 minút – od 2,40 € (EUR)\n" +
                "(platí len vo vybraných lokalitách, špecifikovaných tu alebo vo VOP)\n" +
                "Štandardné dodanie pri objednávke nad 50 eur – 0 € (EUR)\n" +
                "(platí len vo vybraných lokalitách, špecifikovaných tu alebo vo VOP)";

        Assert.assertEquals(actMd2, expMd2, "Text sa nezhoduje");

        Thread.sleep(1000);


    }
    @Test(groups = {"Uloha B"}, dependsOnGroups = "Uloha A")
    public void alkohol() throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href='https://www.dovoznakupov.sk/kategoria-produktu/alkohol/']")).click();
    }
    @Test(groups = {"Uloha B"}, enabled = true, dependsOnGroups = "Uloha A")
    public void sampanske() throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.linkText("Šampanské")).click();
    }
    @Test(groups = {"Uloha B"}, dependsOnGroups = "Uloha A")
    public void pivo() throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href='https://www.dovoznakupov.sk/kategoria-produktu/pivo/']")).click();
    }
    @Test(groups = {"Uloha B"}, dependsOnGroups = "Uloha A")
    public void vino() throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href='https://www.dovoznakupov.sk/kategoria-produktu/vino/']")).click();
    }
    @Test(groups = {"Uloha B"}, dependsOnGroups = "Uloha A")
    public void nealko() throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href='https://www.dovoznakupov.sk/kategoria-produktu/nealkoholicke-napoje/']")).click();
    }
    @Test(groups = "Uloha B", dependsOnGroups = "Uloha A")
    public void pochutiny() throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href='https://www.dovoznakupov.sk/kategoria-produktu/pochutiny/']")).click();
    }

    @Test(groups = "Uloha C", dependsOnGroups = "Uloha B")
    public void ulohaC(){
        System.out.println("Spúšťam ulohu C");

    }

    @AfterSuite
    public void ukoncenie() throws InterruptedException {
        Thread.sleep(1000);
        driver.close();
        driver.quit();
    }
}
