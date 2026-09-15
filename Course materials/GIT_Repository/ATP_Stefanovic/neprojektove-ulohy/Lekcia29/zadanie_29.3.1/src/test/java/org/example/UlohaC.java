package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.Test;

import java.time.Duration;

public class UlohaC {
    WebDriver driver;
    WebDriverWait wait;


    @BeforeSuite
    public void chromedriver() {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        driver = new ChromeDriver();
        wait = new WebDriverWait(driver, Duration.ofSeconds(5));

        driver.manage().window().maximize();
        driver.get("https://www.dovoznakupov.sk/");

        driver.findElement(By.xpath("//*[@id='agy-accept']")).click();
    }

    @Test
    public void nakup() throws InterruptedException {


        //alkohol
        driver.findElement(By.xpath("//a[@href=\"https://www.dovoznakupov.sk/kategoria-produktu/alkohol/\"]")).click();
        Thread.sleep(500);
        //polozka1 - alko
        WebElement alkoPolozka1 = driver.findElement(By.xpath("//li[1]/div[1]/a[1]/img[1]"));
        Actions actions = new Actions(driver);
        actions.moveToElement(alkoPolozka1).perform();
        driver.findElement(By.xpath("//*[@href=\"?add-to-cart=4641\"]")).click();
        Thread.sleep(500);
        //polozka2 - alko
        WebElement alkoPolozka2 = driver.findElement(By.xpath("//li[2]/div[1]/a[1]/img[1]"));
        actions.moveToElement(alkoPolozka2).perform();
        driver.findElement(By.xpath("//*[@href=\"?add-to-cart=3614\"]")).click();
        Thread.sleep(500);
        //polozka3 - alko
        WebElement alkoPolozka3 = driver.findElement(By.xpath("//li[3]/div[1]/a[1]/img[1]"));
        actions.moveToElement(alkoPolozka3).perform();
        driver.findElement(By.xpath("//*[@href=\"?add-to-cart=3613\"]")).click();
        Thread.sleep(500);
        //sampanske
        driver.findElement(By.xpath("//div/ul/li/a[@href=\"https://www.dovoznakupov.sk/kategoria-produktu/sampanske/\"]")).click();
        Thread.sleep(500);
        //polozka1 - sampus
        WebElement sampusPolozka1 = driver.findElement(By.xpath("//li[1]/div[1]/a[1]/img[1]"));
        actions.moveToElement(sampusPolozka1).perform();
        driver.findElement(By.xpath("//a[contains(@href, \"?add-to-cart=4640\")]")).click();
        Thread.sleep(500);
        //polozka2 - sampus
        WebElement sampusPolozka2 = driver.findElement(By.xpath("//li[2]/div[1]/a[1]/img[1]"));
        actions.moveToElement(sampusPolozka2).perform();
        driver.findElement(By.xpath("//a[contains(@href, \"?add-to-cart=4639\")]")).click();
        Thread.sleep(500);
        //polozka3 - sampus
        WebElement sampusPolozka3 = driver.findElement(By.xpath("//li[3]/div[1]/a[1]/img[1]"));
        actions.moveToElement(sampusPolozka3).perform();
        driver.findElement(By.xpath("//*[contains(@href, \"?add-to-cart=4312\")]")).click();
        Thread.sleep(500);
        //pivo
        driver.findElement(By.xpath("//a[@href=\"https://www.dovoznakupov.sk/kategoria-produktu/pivo/\"]")).click();
        Thread.sleep(500);
        //polozka1 - pivo
        WebElement pivoPolozka1 = driver.findElement(By.xpath("//li[1]/div[1]/a[1]/img[1]"));
        actions.moveToElement(pivoPolozka1).perform();
        driver.findElement(By.xpath("//*[@href=\"?add-to-cart=4638\"]")).click();
        Thread.sleep(500);
        //polozka2 - pivo
        WebElement pivoPolozka2 = driver.findElement(By.xpath("//li[2]/div[1]/a[1]/img[1]"));
        actions.moveToElement(pivoPolozka2).perform();
        driver.findElement(By.xpath("//*[@href=\"?add-to-cart=4637\"]")).click();
        Thread.sleep(500);
        //polozka3 - pivo
        WebElement pivoPolozka3 = driver.findElement(By.xpath("//li[3]/div[1]/a[1]/img[1]"));
        actions.moveToElement(pivoPolozka3).perform();
        driver.findElement(By.xpath("//*[@href=\"?add-to-cart=4321\"]")).click();
        Thread.sleep(500);

        driver.findElement(By.xpath("//a[1]/i[1]")).click();

        //overenie kosika - polozka1
        WebElement polozka1 = driver.findElement(By.xpath("//tr[1]/td[3]"));
        polozka1.getText();
        String expPolozka1 = "Ruský štandard 1l";
        Assert.assertEquals(polozka1.getText(), expPolozka1, "Položka nesedí");
        //overenie kosika - polozka2
        WebElement polozka2 = driver.findElement(By.xpath("//tr[2]/td[3]"));
        polozka2.getText();
        String expPolozka2 = "Slivovica Traditional Slovak 0,5l";
        Assert.assertEquals(polozka2.getText(), expPolozka2, "Položka nesedí");
        //overenie kosika - polozka3
        WebElement polozka3 = driver.findElement(By.xpath("//tr[3]/td[3]"));
        polozka3.getText();
        String expPolozka3 = "Hruškovica Traditional Slovak 0,5l";
        Assert.assertEquals(polozka3.getText(), expPolozka3, "Položka nesedí");
        //overenie kosika - polozka4
        WebElement polozka4 = driver.findElement(By.xpath("//tr[4]/td[3]"));
        polozka4.getText();
        String expPolozka4 = "Šampanské Mionetto Prosecco 0.75l";
        Assert.assertEquals(polozka4.getText(), expPolozka4, "Položka nesedí");
        //overenie kosika - polozka5
        WebElement polozka5 = driver.findElement(By.xpath("//tr[5]/td[3]"));
        polozka5.getText();
        String expPolozka5 = "Šampanské Prosecco 0.75l";
        Assert.assertEquals(polozka5.getText(), expPolozka5, "Položka nesedí");
        //overenie kosika - polozka6
        WebElement polozka6 = driver.findElement(By.xpath("//tr[6]/td[3]"));
        polozka6.getText();
        String expPolozka6 = "Hubert De Luxe šumivé víno sladké doux 0,75 l";
        Assert.assertEquals(polozka6.getText(), expPolozka6, "Položka nesedí");
        //overenie kosika - polozka7
        WebElement polozka7 = driver.findElement(By.xpath("//tr[7]/td[3]"));
        polozka7.getText();
        String expPolozka7 = "Corgoň 10 0.5l";
        Assert.assertEquals(polozka7.getText(), expPolozka7, "Položka nesedí");
        //overenie kosika - polozka8
        WebElement polozka8 = driver.findElement(By.xpath("//tr[8]/td[3]"));
        polozka8.getText();
        String expPolozka8 = "Staroprameň Prémium 12 0.5l";
        Assert.assertEquals(polozka8.getText(), expPolozka8, "Položka nesedí");
        //overenie kosika - polozka9
        WebElement polozka9 = driver.findElement(By.xpath("//tr[9]/td[3]"));
        polozka9.getText();
        String expPolozka9 = "Kozel 11º 0.5l";
        Assert.assertEquals(polozka9.getText(), expPolozka9, "Položka nesedí");
        //dodacie data
        driver.findElement(By.xpath("//section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/a[1]")).click();

        WebElement meno = driver.findElement(By.xpath("//*[@id=\"billing_first_name\"]"));
        meno.isEnabled();
        meno.clear();
        meno.sendKeys("Lukáš");
        Thread.sleep(500);
        WebElement last_name = driver.findElement(By.xpath("//*[@id=\"billing_last_name\"]"));
        last_name.isEnabled();
        last_name.clear();
        last_name.sendKeys("Štefanovič");
        Thread.sleep(500);
        WebElement adress = driver.findElement(By.xpath("//*[@id=\"billing_address_1\"]"));
        adress.isEnabled();
        adress.clear();
        adress.sendKeys("Čínska 10");
        Thread.sleep(500);
        WebElement postCode = driver.findElement(By.xpath("//*[@id=\"billing_postcode\"]"));
        postCode.isEnabled();
        postCode.clear();
        postCode.sendKeys("04013");
        Thread.sleep(500);
        WebElement city = driver.findElement(By.xpath("//*[@id=\"billing_city\"]"));
        city.isEnabled();
        city.clear();
        city.sendKeys("Košice");
        Thread.sleep(500);
        WebElement phone = driver.findElement(By.xpath("//*[@id=\"billing_phone\"]"));
        phone.isEnabled();
        phone.clear();
        phone.sendKeys("+421911123456");
        Thread.sleep(500);
        WebElement mail = driver.findElement(By.xpath("//*[@id=\"billing_email\"]"));
        mail.isEnabled();
        mail.clear();
        mail.sendKeys("lukas@lukas.sk");
        Thread.sleep(500);
        driver.findElement(By.xpath("//*[@id=\"terms\"]")).click();
        Thread.sleep(500);
        driver.findElement(By.xpath("//*[@id=\"place_order\"]")).click();
    }

    @AfterSuite
    public void tearDown() throws InterruptedException {
        Thread.sleep(1000);
        driver.close();
        driver.quit();
    }
}
