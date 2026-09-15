package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.Test;

import java.time.Duration;

public class UlohaB {
    WebDriver driver;
    WebDriverWait wait;


    @BeforeSuite
    public void chromedriver() {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        driver = new ChromeDriver();
        wait = new WebDriverWait(driver, Duration.ofSeconds(5));

        driver.manage().window().maximize();
        driver.get("https://automationtesting.sk/");

        driver.findElement(By.xpath("//li[3]/a[1]")).click();
    }

    @Test
    public void pokemons() throws InterruptedException {
        driver.findElement(By.xpath("//div[2]/img[2]")).click();
        driver.findElement(By.xpath("//div[2]/img[4]")).click();
        driver.findElement(By.xpath("//div[2]/img[6]")).click();
        driver.findElement(By.xpath("//div[2]/img[8]")).click();

        driver.findElement(By.xpath("//main[1]/div[1]/img[1]")).click();
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//main[1]/div[1]/img[1]")));

        driver.findElement(By.xpath("//div[1]/img[3]")).click();
        driver.findElement(By.xpath("//div[1]/img[4]")).click();
        driver.findElement(By.xpath("//div[1]/img[5]")).click();
    }

    @AfterSuite
    public void tearDown() throws InterruptedException {
        Thread.sleep(1000);
        driver.close();
        driver.quit();
    }
}
