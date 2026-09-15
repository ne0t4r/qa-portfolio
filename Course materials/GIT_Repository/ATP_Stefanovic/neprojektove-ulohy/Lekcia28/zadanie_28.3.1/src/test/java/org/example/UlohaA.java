package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.annotations.*;


public class UlohaA{
    WebDriver driver;

    @BeforeSuite
    public void chromedriver() {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("https://www.automationtesting.sk/");
    }

    @Parameters({"fullName", "band", "actor","actor2"})
    @Test
    public void navigate(String fullName, String band, String actor, String actor2) throws InterruptedException {
        WebElement post = driver.findElement(By.linkText("Posts"));
        Actions actions = new Actions(driver);
        actions.moveToElement(post).perform();

        driver.findElement(By.linkText("Stepper")).click();

        Thread.sleep(1000);

        driver.findElement(By.className("field")).sendKeys(fullName);
        Thread.sleep(1000);
        //String expMsg = name;
        WebElement msg = driver.findElement(By.className("field"));
        String actMsg = msg.getAttribute("value");
        Assert.assertEquals(actMsg,fullName, "Hodnoty niesu zhodne");

        Thread.sleep(1000);

        driver.findElement(By.className("next")).click();

        Thread.sleep(1000);

        driver.findElement(By.className("field")).sendKeys(band);
        WebElement msg2 = driver.findElement(By.className("field"));
        String actMsg2 = msg.getAttribute("value");
        Assert.assertEquals(actMsg2,band, "Hodnoty niesu zhodne");

        Thread.sleep(1000);

        driver.findElement(By.className("next")).click();

        Thread.sleep(1000);

        driver.findElement(By.className("field")).sendKeys(actor);
        WebElement msg3 = driver.findElement(By.className("field"));
        String actMsg3 = msg.getAttribute("value");
        Assert.assertEquals(actMsg3,actor, "Hodnoty niesu zhodne");

        Thread.sleep(1000);

        driver.findElement(By.className("next")).click();

        Thread.sleep(1000);

        driver.findElement(By.className("field")).sendKeys(actor2);
        WebElement msg4 = driver.findElement(By.className("field"));
        String actMsg4 = msg.getAttribute("value");
        Assert.assertEquals(actMsg4,actor2, "Hodnoty niesu zhodne");

        Thread.sleep(1000);

        WebElement next =  driver.findElement(By.className("next"));
        Assert.assertTrue(next.getAttribute("disabled") != null && next.getAttribute("disabled").equals("true"),
                "Element nemá správne nastavený atribut 'disabled'.");

    }
    @AfterSuite
    public void close(){
        driver.close();
        driver.quit();
    }

}


