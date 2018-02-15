package ebay.qa.stepDefinations;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.After;
import cucumber.api.java.Before;

public class Hooks { 
	public static WebDriver driver;
	public static WebDriverWait wait;

	
	@Before
	public void openBrowser()  {

		
		System.setProperty("webdriver.gecko.driver", "resources/geckodriver");
		driver = new FirefoxDriver();
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		driver.manage().deleteAllCookies();
		System.out.println("Browser launched");
		
	}

	@After
	public void Closebrowser() {
		driver.quit();
		System.out.println("Browser Closed ");

	}
}
