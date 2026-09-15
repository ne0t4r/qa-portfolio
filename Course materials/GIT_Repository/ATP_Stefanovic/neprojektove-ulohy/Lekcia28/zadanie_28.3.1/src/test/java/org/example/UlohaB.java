package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;


public class UlohaB {
    WebDriver driver;

    @BeforeSuite
    public void chromedriver() {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("https://the-internet.herokuapp.com/login");


    }

    @Test(dataProvider = "login")
    public void input(String userName, String password) throws InterruptedException {


        WebElement userNameField = driver.findElement(By.id("username"));
        userNameField.sendKeys(userName);

        WebElement passwordField = driver.findElement(By.id("password"));
        passwordField.sendKeys(password);

        Thread.sleep(1000);
        driver.findElement(By.className("radius")).click();


    }

    @DataProvider(name = "login")
    public static Object[][] provideData() {
        return new Object[][]{
                {"Lukas", "1234"},
                {"Peter", "1234"},
                {"tomsmith", "SuperSecretPassword!"}

        };

    }
    @AfterSuite
    public void close(){
        driver.close();
        driver.quit();
    }
}






