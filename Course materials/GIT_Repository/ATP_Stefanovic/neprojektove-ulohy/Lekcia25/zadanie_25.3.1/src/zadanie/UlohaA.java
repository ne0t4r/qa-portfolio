package zadanie;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.time.Duration;

public class UlohaA {

    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");

        driver.findElement(By.cssSelector("[href='loader.html']")).click();

        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
        driver.findElement(By.id("loaderBtn")).click();
        Thread.sleep(1000);
        WebElement msg = driver.findElement(By.id("p_wording"));
        String expMsg = "And you have clicked the button!";
        String actMsg = msg.getText();
        Assertions.assertEquals(expMsg, actMsg, "Spravu som nenašiel");
        Thread.sleep(1000);

        driver.findElement(By.id("loaderBtn")).click();
        Thread.sleep(1000);
        String expMsg2 = "";
        String actMsg2 = msg.getText();
        Assertions.assertEquals(expMsg2, actMsg2, "Sprava nie je prázda");

        Thread.sleep(3000);
        driver.close();
        driver.quit();

    }
}