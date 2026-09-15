package Zadanie;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UlohaC {
    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "zadanie_24.3.1/resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        Thread.sleep(3000);

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");

        driver.findElement(By.cssSelector("[href=\"calculator.html\"]")).click();

        driver.findElement(By.id("result")).sendKeys("25+10");
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[onclick='solve()']")).click();
        Thread.sleep(1000);

        WebElement result = driver.findElement(By.id("result"));
        String hodnota = result.getAttribute("value");
        String expResult1 = "35";
        Assertions.assertEquals(expResult1, hodnota, "Vysledok nieje správny");
        Thread.sleep(1000);

        driver.findElement(By.id("result")).clear();
        driver.findElement(By.id("result")).sendKeys("10*10");
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[onclick='solve()']")).click();
        Thread.sleep(1000);
        String hodnota2 = result.getAttribute("value");
        String expResult2 = "100";
        Assertions.assertEquals(expResult2, hodnota2, "Vysledok nieje správny");
        Thread.sleep(1000);

        driver.findElement(By.id("result")).clear();
        driver.findElement(By.id("result")).sendKeys("10/10");
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[onclick='solve()']")).click();
        Thread.sleep(1000);
        String hodnota3 = result.getAttribute("value");
        String expResult3 = "1";
        Assertions.assertEquals(expResult3, hodnota3, "Vysledok nieje správny");
        Thread.sleep(1000);

        driver.close();
        driver.quit();
    }
}
