package zadanie;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UlohaB {
    public static void main(String[] args) throws InterruptedException {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        Thread.sleep(1000);

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href=\"iframes.html\"]")).click();

        driver.switchTo().frame(0);

        Thread.sleep(1000);
        driver.findElement(By.cssSelector(".close-cookie-warning")).click();

        Thread.sleep(1000);

        driver.switchTo().defaultContent();

        driver.switchTo().frame(1);

        WebElement playButton = driver.findElement(By.cssSelector(".ytp-large-play-button"));
        playButton.click();
        Thread.sleep(5000);
        driver.switchTo().defaultContent();

        driver.close();
        driver.quit();

    }
}