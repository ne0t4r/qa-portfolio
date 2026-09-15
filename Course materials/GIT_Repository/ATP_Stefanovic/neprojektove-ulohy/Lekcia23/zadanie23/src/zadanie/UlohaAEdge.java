package zadanie;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

public class UlohaAEdge {
    public UlohaAEdge() {
    }

    public static void main(String[] args) throws InterruptedException {
        System.setProperty("webdriver.msedge.driver", "resources/msedgedriver.exe");
        WebDriver driver = new EdgeDriver();
        driver.get("https://the-internet.herokuapp.com/");
        driver.manage().window().maximize();
        Thread.sleep(3000L);
        driver.close();
        driver.quit();
    }
}
