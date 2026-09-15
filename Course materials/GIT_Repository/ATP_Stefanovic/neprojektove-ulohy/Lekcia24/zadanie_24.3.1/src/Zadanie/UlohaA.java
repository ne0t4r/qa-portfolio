package Zadanie;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;

public class UlohaA {

    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "zadanie_24.3.1/resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        Thread.sleep(3000);

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");

        driver.findElement(By.cssSelector("[href=\"accordion.html\"]")).click();

        driver.findElements(By.className("accordion-header")).getFirst().click();
        Thread.sleep(1000);
        driver.findElements(By.className("accordion-header")).get(1).click();
        Thread.sleep(1000);
        driver.findElements(By.className("accordion-header")).getLast().click();
        Thread.sleep(1000);

        driver.findElements(By.className("accordion-header")).getFirst().click();
        Thread.sleep(1000);
        driver.findElements(By.className("accordion-header")).get(1).click();
        Thread.sleep(1000);
        driver.findElements(By.className("accordion-header")).getLast().click();
        Thread.sleep(1000);

        driver.findElement(By.cssSelector("[href=\"buttons.html\"]")).click();

        WebElement buttonOne = driver.findElement(By.xpath("//button[text()='Button One']"));
        buttonOne.click();
        Thread.sleep(1000);
        Alert alert = driver.switchTo().alert();
        alert.accept();

        WebElement buttonTwo = driver.findElement(By.cssSelector("#btn_two"));
        buttonTwo.click();
        Thread.sleep(1000);
        Alert alert2 = driver.switchTo().alert();
        alert2.accept();

        WebElement buttonThree = driver.findElement(By.cssSelector("#btn_three"));
        Actions actions = new Actions(driver);
        actions.moveToElement(buttonThree).perform();
        actions.click().perform();
        Thread.sleep(1000);
        Alert alert3 = driver.switchTo().alert();
        alert3.accept();

        WebElement buttonFour = driver.findElement(By.id("btn_four"));
        if (buttonFour.isEnabled()){
            System.out.println("Tlačídlo je povolene");
        }else {
            System.out.println("Tlačídlo nieje povolene");
        }
        Thread.sleep(3000);
        driver.close();
        driver.quit();

    }
}
