package zadanie;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.ArrayList;
public class UlohaC {
    public static void main(String[] args) throws InterruptedException {
        System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        Thread.sleep(1000);

        driver.manage().window().maximize();

        driver.get("https://www.automationtesting.co.uk/");
        Thread.sleep(1000);
        driver.findElement(By.cssSelector("[href=\"browserTabs.html\"]")).click();
        WebElement newTab = driver.findElement(By.cssSelector("[type='submit']"));

        newTab.click();

        ArrayList<String> handles = new ArrayList<>(driver.getWindowHandles());

        driver.switchTo().window(handles.get(1));
        Thread.sleep(1000);
        driver.get("https://www.dovoznakupov.sk/");
        Thread.sleep(1000);

        driver.switchTo().window(handles.getFirst());
        newTab.click();
        Thread.sleep(1000);

        ArrayList<String> handles2 = new ArrayList<>(driver.getWindowHandles());

        driver.switchTo().window(handles2.get(2));
        Thread.sleep(1000);
        driver.navigate().to("https://www.automationtesting.sk");
        Thread.sleep(1000);

        driver.close();
        driver.switchTo().window(handles.getFirst());
        driver.close();
        Thread.sleep(3000);
        driver.switchTo().window(handles.get(1));
        driver.close();
        driver.quit();

    }
}