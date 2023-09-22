package POM;

import BrowsersBase.BrowsersInvoked;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.*;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import BrowsersBase.BrowsersInvoked;
import CommonMethods.Helper;

public class ReopenCasesUtility extends Helper {

	public WebDriver driver;
	LoginUtility log;

	public ReopenCasesUtility(WebDriver driver) {
		super(driver);
		this.driver = driver;
		log = new LoginUtility(driver);
	}
	
	
	
	public static String statusColumnSort = "//div[text()='Status']";
    public static String closedCase = "//span[@class='checkbox-holder']/following::a[1]";
    public static String reOpenCaseGrid = "//span[contains(text(),' Reopened')]//parent::div//parent::div//preceding-sibling::div//span[@class='checkbox-holder']/following::a[1]";
    public static String reopenCaseOption = "//li[text()='Reopen Case']";
    public static String closedCaseGrid = "//div[contains(text(),'Closed')]//parent::div//parent::div//preceding-sibling::div//span[@class='checkbox-holder']/following::a[1]";
    public static String reopenCasePopup = "//div[@class='modal-header']/following::span[text()='Reopen Case']";
    public static String violationsOnCDP = "//span[@class='violation-label']";
    public static String reopenCaseButton = "//button[text()='Reopen Case']";
    public static String errorMessageRCP = "//h5[@id='reopen-case-heading']";
    public static String violationsOnRCP = "//div[@class='case-violation-list reopen-variant']//span[@class='violation-label']";
    public static String nonCompliantButton = "//button[text()='Non-Compliant']";
    public static String reopenedCaseActivity = "//h4[@class='case-activity__label' and text()='Case Reopened']";
    public static String dateReopenedCase = "//h4[text()='Case Reopened']/following-sibling::span";
    public static String userInfoRCP = "//h4[text()='Case Reopened']/following::label[@class='case-activity__user-info']";

	public static By StatusColumnSort = By.xpath(statusColumnSort);
	public static By ReOpenCaseGrid = By.xpath(reOpenCaseGrid);
	public static By ClosedCaseGrid = By.xpath(closedCaseGrid);
	public static By ClosedCase = By.xpath(closedCase);
	public static By ReopenCaseOption = By.xpath(reopenCaseOption);
	public static By ReopenCasePopup = By.xpath(reopenCasePopup);
	public static By ViolationsOnCDP = By.xpath(violationsOnCDP);
	public static By ReopenCaseButton = By.xpath(reopenCaseButton);
	public static By ViolationsOnRCP = By.xpath(violationsOnRCP);
	public static By ErrorMessageRCP = By.xpath(errorMessageRCP);
	public static By NonCompliantButton = By.xpath(nonCompliantButton);
	public static By ReopenedCaseActivity = By.xpath(reopenedCaseActivity);
	public static By DateReopenedCase = By.xpath(dateReopenedCase);
	public static By UserInfoRCP = By.xpath(userInfoRCP);
	
	public void LoginAgency() throws InterruptedException {
		log.LoginAgency();

	}

}
