package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
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
        driver.get("https://automationtesting.sk/");

        navigaciaDoPosts("Posts");
    }

    @Test
    public void postScakanim() throws InterruptedException {

        String dataPostsScakanim = "Post s čakaním";
        post(dataPostsScakanim);

        WebElement addButton = wait.until(ExpectedConditions.elementToBeClickable(By.id("waitingButton")));
        addButton.click();

        wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.className("colorWait")));
        Assert.assertEquals(driver.findElement(By.className("colorWait")).getText().substring(2), "Post s čakaním");
        Thread.sleep(1000);
    }

    @Test
    public void postsBezCakania() throws InterruptedException {

        String dataPostsBezCakania = "Post bez čakania";
        post(dataPostsBezCakania);
        WebElement addButton = wait.until(ExpectedConditions.elementToBeClickable(By.id("addButton")));
        addButton.click();

        Assert.assertEquals(driver.findElement(By.className("color")).getText().substring(2), "Post bez čakania");
        cakanie();
        Thread.sleep(1000);
    }

    private void navigaciaDoPosts(String name) {
        driver.findElement(By.linkText(name)).click();
    }

    public void cakanie() throws InterruptedException {
        Thread.sleep(1000);
    }

    void post(String text) {
        WebElement textForAdd = driver.findElement(By.id("textForAdd"));
        textForAdd.clear();
        textForAdd.sendKeys(text);

    }

    @AfterSuite
    public void tearDown() throws InterruptedException {
        Thread.sleep(1000);
        driver.close();
        driver.quit();
    }
}
