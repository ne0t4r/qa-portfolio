package zadanie;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UlohaB {
    public UlohaB() {
    }

    public static void main(String[] args) throws InterruptedException {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        driver.get("https://the-internet.herokuapp.com/");
        driver.manage().window().maximize();
        driver.findElement(By.linkText("Checkboxes")).click();
        ((WebElement)driver.findElements(By.cssSelector("[type=\"checkbox\"]")).get(0)).click();
        ((WebElement)driver.findElements(By.cssSelector("[type=\"checkbox\"]")).get(1)).click();
        Thread.sleep(3000L);
        driver.close();
        driver.quit();
    }
}
