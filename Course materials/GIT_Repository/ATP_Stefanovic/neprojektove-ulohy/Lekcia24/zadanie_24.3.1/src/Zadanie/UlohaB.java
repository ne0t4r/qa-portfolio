package Zadanie;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

public class UlohaB {
    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "zadanie_24.3.1/resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        Thread.sleep(3000);

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");

        driver.findElement(By.cssSelector("[href=\"dropdown.html\"]")).click();

        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[for=\"demo-priority-low\"]")).click();
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[for=\"demo-priority-high\"]")).click();
        Thread.sleep(1000);

        driver.findElement(By.cssSelector("[for=\"cb_green\"]")).click();
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[for=\"cb_blue\"]")).click();
        Thread.sleep(1000);

        WebElement animals = driver.findElements(By.cssSelector("[href=\"#\"]")).get(1);
        Actions actions = new Actions(driver);
        actions.moveToElement(animals).perform();
        Thread.sleep(1000);

        WebElement fish = driver.findElements(By.cssSelector("[href=\"#\"]")).get(4);
        actions.moveToElement(fish).perform();
        actions.click().perform();
        Thread.sleep(1000);

        WebElement msgAnimals = driver.findElement(By.id("outputMessage"));
        String actMessage = msgAnimals.getText();
        String expMsg = "You clicked on menu option 'Fish'";
        Assertions.assertEquals(expMsg, actMessage, "Správa nie je správna");
        Thread.sleep(1000);

        WebElement sports = driver.findElements(By.cssSelector("[href=\"#\"]")).get(9);
        Actions actions2 = new Actions(driver);
        actions2.moveToElement(sports).perform();
        Thread.sleep(1000);

        WebElement tennis = driver.findElements(By.cssSelector("[href=\"#\"]")).get(11);
        actions2.moveToElement(tennis).perform();
        actions2.click().perform();
        Thread.sleep(1000);

        WebElement msgTennis = driver.findElement(By.id("outputMessage"));
        String actMessage2 = msgTennis.getText();
        String expMsg2 = "You clicked on menu option 'Tennis'";
        Assertions.assertEquals(expMsg2, actMessage2, "Správa nie je správna");
        Thread.sleep(1000);

        Select select = new Select(driver.findElement(By.id("cars")));
        select.selectByVisibleText("BMW");
        Thread.sleep(1000);
        select.selectByVisibleText("Ford");
        Thread.sleep(1000);
        select.selectByVisibleText("Honda");
        Thread.sleep(1000);
        select.selectByVisibleText("Jeep");
        Thread.sleep(1000);
        select.selectByVisibleText("Mercedes");
        Thread.sleep(1000);
        select.selectByVisibleText("Suzuki");
        Thread.sleep(1000);
        select.selectByVisibleText("Volkswagen");
        Thread.sleep(1000);
        select.selectByVisibleText("Audi");
        Thread.sleep(1000);
        driver.close();
        driver.quit();
    }
}