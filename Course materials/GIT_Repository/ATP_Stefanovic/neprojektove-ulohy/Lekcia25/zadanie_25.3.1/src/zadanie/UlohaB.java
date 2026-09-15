package zadanie;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.time.Duration;

public class UlohaB {
    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");

        driver.findElement(By.cssSelector("[href='loadertwo.html']")).click();

        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(8));

        WebElement msg = driver.findElement(By.id("appears"));
        String expMsg = "This is a new paragraph that appears after 8 seconds.";
        String actMsg = msg.getText();
        Assertions.assertEquals(expMsg, actMsg, "Spravu som nenašiel");

        Thread.sleep(3000);
        driver.close();
        driver.quit();

    }
}
