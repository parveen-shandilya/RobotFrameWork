package POM;

import BrowsersBase.BrowsersInvoked;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.*;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import BrowsersBase.BrowsersInvoked;
import CommonMethods.Helper;

public class NoticesUtility extends Helper {

	public WebDriver driver;
	LoginUtility log;

	public NoticesUtility(WebDriver driver) {
		super(driver);
		this.driver = driver;
		log = new LoginUtility(driver);
	}

	public static String activeTab = "//div[@class='tab-name tab-name--active']";
	public static String createNonHtmlNoticeBtn = "//button[text()='Create Non-HTML Notice']";
	public static String createNonHtmlNoticePopup = "//div[text()='Create Non-HTML Notice']";
	public static String labelField = "//input[@name='label']";
	public static String createNoticeBtn = "//button[text()='Create Notice']";
	public static String createHtmlNoticeBtn = "//button[text()='Create HTML Notice']";
	public static String createHtmlNoticePopup = "//h1[text()='Create HTML Notice']";
	public static String mergeFieldsLink = "//span[text()='Merge Fields']";
	public static String addMergeFieldsPopup = "//div[text()='Add Merge Fields']";
	public static String countNotices = "//div[@class='agency-setup-tab__section__header']/h2";
	public static String categoryDropdown = "//div[@class='Select-value']";
	public static String categoryOption = "//*[text()='Case Activity']";
	public static String fieldResults = "//div/div[@class='rt-td']/a";
	public static String categoryResults = "//div[text()='Case Activity']";
	public static String doneButton = "//button[text()='Done']";
	public static String previewButton = "//button[text()='Preview']";
	public static String previewPopupBody = "//div[@class='modal-base__body']//div/p";
	public static String fADocumentToggle = "//button[text()='FA Document']";
	public static String noticesPageLink = "//label[text()='Notices']";
	public static String editIconNotice = "//button[@class='edit-btn space-right btn btn-primary']";
	public static String noticeLabelColumn = "//div[@class='sortable-table__body__td'][1]";
	public static String noticesCountHeader = "//div[@class='agency-setup-tab__section__header']/h2";
	public static String noticesCountActual = "//div[@class='sortable-table__body__td'][1]";
	public static String linkToVioTypesField = "//span[@class='Select-placeholder placeholder']";
	public static String waterOptionToLink = "//*[text()='Water']";
	public static String appHeaderIcon = "//div[@class='app-header__menu__icon']";
	public static String agencySetupLabel = "//label[text()='Agency Setup']";
	public static String cE = "//label[contains(text(),'CE')]";
	public static String productDemo = "//label[contains(text(),'Product Demo')]";

	public static By ActiveTab = By.xpath(activeTab);
	public static By CreateNonHtmlNoticeBtn = By.xpath(createNonHtmlNoticeBtn);
	public static By CreateNonHtmlNoticePopup = By.xpath(createNonHtmlNoticePopup);
	public static By LabelField = By.xpath(labelField);
	public static By CreateNoticeBtn = By.xpath(createNoticeBtn);
	public static By CreateHtmlNoticeBtn = By.xpath(createHtmlNoticeBtn);
	public static By MergeFieldsLink = By.xpath(mergeFieldsLink);
	public static By AddMergeFieldsPopup = By.xpath(addMergeFieldsPopup);
	public static By CreateHtmlNoticePopup = By.xpath(createHtmlNoticePopup);
	public static By CountNotices = By.xpath(countNotices);
	public static By CategoryDropdown = By.xpath(categoryDropdown);
	public static By CategoryOption = By.xpath(categoryOption);
	public static By FieldResults = By.xpath(fieldResults);
	public static By CategoryResults = By.xpath(categoryResults);
	public static By DoneButton = By.xpath(doneButton);
	public static By PreviewButton = By.xpath(previewButton);
	public static By PreviewPopupBody = By.xpath(previewPopupBody);
	public static By FADocumentToggle = By.xpath(fADocumentToggle);
	public static By NoticesPageLink = By.xpath(noticesPageLink);
	public static By EditIconNotice = By.xpath(editIconNotice);
	public static By NoticeLabelColumn = By.xpath(noticeLabelColumn);
	public static By NoticesCountHeader = By.xpath(noticesCountHeader);
	public static By NoticesCountActual = By.xpath(noticesCountActual);
	public static By LinkToVioTypesField = By.xpath(linkToVioTypesField);
	public static By WaterOptionToLink = By.xpath(waterOptionToLink);
	public static By AppHeaderIcon = By.xpath(appHeaderIcon);
	public static By AgencySetupLabel = By.xpath(agencySetupLabel);
	public static By CE = By.xpath(cE);
	public static By ProductDemo = By.xpath(productDemo);

}
