package zadanie;

import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UlohaC {
    public UlohaC() {
    }

    public static void main(String[] args) throws InterruptedException {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        driver.get("https://the-internet.herokuapp.com/");
        driver.manage().window().maximize();
        driver.findElement(By.linkText("Add/Remove Elements")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        driver.findElement(By.cssSelector("[onclick=\"addElement()\"]")).click();
        ((WebElement)driver.findElements(By.className("added-manually")).get(1)).click();
        ((WebElement)driver.findElements(By.className("added-manually")).get(1)).click();
        ((WebElement)driver.findElements(By.className("added-manually")).get(1)).click();
        ((WebElement)driver.findElements(By.className("added-manually")).get(1)).click();
        ((WebElement)driver.findElements(By.className("added-manually")).get(1)).click();
        ((WebElement)driver.findElements(By.className("added-manually")).get(1)).click();
        By locator = By.tagName("h3");
        WebElement nadpisElement = driver.findElement(locator);
        String nadpisStranky = nadpisElement.getText();
        String ocakavanyNadpis = "Add/Remove Elements";
        if (nadpisStranky.equals(ocakavanyNadpis)) {
            System.out.println("Nadpis stránky je správny: " + nadpisStranky);
        } else {
            System.out.println("Nadpis stránky nie je správny. Očakávaný: " + ocakavanyNadpis + ", Aktuálny: " + nadpisStranky);
        }

        By locator2 = By.cssSelector(".added-manually, [onclick='addElement()']");
        List<WebElement> elementy = driver.findElements(locator2);
        int ocakavanyPocet = 6;
        if (elementy.size() == ocakavanyPocet) {
            System.out.println("Na stránke sa nachádza správne množstvo elementov.");
        } else {
            System.out.println("Na stránke sa nenachádza správne množstvo elementov. Očakávaný počet: " + ocakavanyPocet + ", Aktuálny počet: " + elementy.size());
        }

        Thread.sleep(3000L);
        driver.close();
        driver.quit();
    }
}
