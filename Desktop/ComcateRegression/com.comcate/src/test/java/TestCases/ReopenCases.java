package TestCases;
import BrowsersBase.BrowsersInvoked;

import java.io.IOException;
import java.lang.reflect.Method;

import org.openqa.selenium.WebDriver;
import org.testng.ITestResult;
import org.testng.annotations.*;
import org.openqa.selenium.WebElement;
import BrowsersBase.BrowsersInvoked;
import CommonMethods.Helper;
import ExtentReport.ExtentReportClass;
import POM.ReopenCasesUtility;

public class ReopenCases extends BrowsersInvoked{
	
	private WebDriver driver;
	ExtentReportClass extentClass;
	ITestResult result;
	ReopenCasesUtility reopenCase;
	
	@BeforeClass
	public void setUp() {
		driver = BrowsersInvoked.Setup();
		extentClass = new ExtentReportClass(driver);
		reopenCase = new ReopenCasesUtility(driver);
	}
	
	@AfterClass
	public void closeDriver() {
		BrowsersInvoked.tearDown(driver);
	}
	
	@AfterMethod
	public void flushReport(Method method, ITestResult result) {
		Test test = method.getAnnotation(Test.class);
		ExtentReportClass.extentTest = ExtentReportClass.extent.startTest(method.getName());
		ExtentReportClass.extentTest.setDescription(test.description());
		try {
			extentClass.tearDown(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void TestCase1() throws InterruptedException {
		driver.get("https://app-stage.comcate.com/agencies/181/dashboard");
		Thread.sleep(5000);
	}
	
	
	@Test(priority = 0)
	public void LoginAgency() throws InterruptedException {
		reopenCase.LoginAgency();

	}
	
	

}
