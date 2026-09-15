package zadanie;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UlohaA {
    public static void main(String[] args) throws InterruptedException {
        System.setProperty("webdriver.chrome.driver", "zadanie_26.3.1/resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        Thread.sleep(1000);

        driver.manage().window().maximize();

        driver.get("https://automationbookstore.dev/");

        driver.findElement(By.id("pid6")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid1")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid2")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid3")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid4")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid5")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid6")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid7")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("pid8")).click();
        Thread.sleep(1000);

        driver.manage().window().maximize();
        driver.get("https://www.automationtesting.co.uk/contactForm.html");

        WebElement name = driver.findElement(By.cssSelector("[name='first_name']"));
        name.isEnabled();
        name.getAttribute("readonly");
        name.sendKeys("Zadanie 26");
        Thread.sleep(1000);

        WebElement lastName = driver.findElement(By.cssSelector("[name='last_name']"));
        lastName.isEnabled();
        lastName.getAttribute("readonly");
        lastName.sendKeys("Zadanie26");
        Thread.sleep(1000);

        WebElement email = driver.findElement(By.cssSelector("[name='email']"));
        email.isEnabled();
        email.getAttribute("readonly");
        email.sendKeys("Zadanie26@gmail.com");
        Thread.sleep(1000);

        WebElement comment = driver.findElement(By.cssSelector("[name='message']"));
        comment.isEnabled();
        comment.getAttribute("readonly");
        comment.sendKeys("Zadanie 26");
        Thread.sleep(1000);

        WebElement resetButton = driver.findElement(By.cssSelector("[type=\"reset\"]"));
        JavascriptExecutor jsExecutor = (JavascriptExecutor) driver;
        jsExecutor.executeScript("arguments[0].click();", resetButton);

        Thread.sleep(1000);
        WebElement submitButton = driver.findElement(By.cssSelector("[type=\"submit\"]"));
        jsExecutor.executeScript("arguments[0].click();", submitButton);
        Thread.sleep(1000);
        driver.close();
        driver.quit();

    }

}
