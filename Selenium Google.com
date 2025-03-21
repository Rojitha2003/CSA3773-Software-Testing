import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class OpenGoogle {
    public static void main(String[] args) {
        // Set the path for ChromeDriver
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver"); 
        
        // Initialize WebDriver
        WebDriver driver = new ChromeDriver();
        
        // Open Google
        driver.get("https://www.google.com");
        
        // Print title of the page
        System.out.println("Page title: " + driver.getTitle());
        
        // Close the browser after a few seconds (optional)
        try {
            Thread.sleep(3000); // Wait for 3 seconds
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        // Close the browser
        driver.quit();
    }
}
