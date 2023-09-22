package POM;

import BrowsersBase.BrowsersInvoked;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.*;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import BrowsersBase.BrowsersInvoked;
import CommonMethods.Helper;

public class ForcedAbatementUtility extends Helper {

	public WebDriver driver;
	LoginUtility log;

	public ForcedAbatementUtility(WebDriver driver) {
		super(driver);
		this.driver = driver;
		log = new LoginUtility(driver);

	}

	public static String moreBtn = "//button[contains(text(),'More...')]";
	String initiateFABtn = "//li[text()='Initiate Forced Abatement']";
	String popupTitleFA = "//div[text()='Initiate Forced Abatement']";
	String iFAPopupBtn = "//div[@class='modal-footer']//button[2]";
	String errorMsgNote = "(//span[@class='field__error'])[2]";
	String noteField = "//textarea[@placeholder='Enter Note']";
	String errorNoteLimit = "//span[text()='500 character limit.']";
	String forcedBadge = "//span[text()='Forced']";
	String abatementInfo = "//div[@class='abatement-activities__fa-details']//h4";
	String editFANoteLink = "//label[@class='fa-note__label']/a[text()='Edit']";
	String editNotePopup = "//div[text()='Edit FA Note']";
	String saveBtn = "//button[text()='Save']";
	String editedNote = "//label[@class='fa-note__label']/following::p";
	String addActivityBtn = "//button[text()='Add Activity']";
	public static String addAttachment = "(//div[contains(text(),'Attachments')]//parent::h2//div//button)";
	String activityType2 = "(//div[@class='multi-choice-buttons']//button)[2]";
	String activityType3 = "(//div[@class='multi-choice-buttons']//button)[3]";
	String fAActivityPopup = "//div[text()='Add Forced Abatement Activity']";
	String fAactivityPopup = "//h1[text()='Add Forced Abatement Activity']";
	String fAToggleBtn = "//div[@class='multi-choice-buttons']/button[1]";//
	String fAActivityBtn = "//button[text()='Add Forced Abatement Activity']";
	String selectDocument = "//label[text()='Select Document']/following::div[1]//div";
	String selectHTML = "//div[text()='HTML FA Document']";
	String errorMsgFA1 = "(//span[@class='field__error'])[4]";
	String errorMsgFA2 = "(//span[@class='field__error'])[4]";
	String docNoteTitle = "//label[text()='Document Note']";
	String validMsgDocNote = "//label[@title='Document Note']/following::span";
	String labelForText1 = "//input[@placeholder='Enter Text']";
	String labelForNumber2 = "//input[@placeholder='Enter Number']";
	String labelForSelect3 = "//div[@class='Select-placeholder']";
	String documentNoteField = "//textarea[@placeholder='Enter Note']";
	String firstOption = "//div[text()='Yes']";
	String generateDocBtn = "//button[text()='Generate Document']";
	String continueToGenDoc = "//button[text()='Continue to Generate Document']";
	String selectFAADocArrow = "//label[text()='More...']//following-sibling::span";
	String selectFAADoc = "(//label[@title='Select an FAA Document']//ancestor::div[@class='abatement-activities__documents']//div[@class='dropdown__list']//ul//li[@class='option']/span)[1]";
	String genFAADoc = "//button[text()='Generate FAA Document']";
	String generateDocAddFABtn = "//div[@class='case-inspection__notice-action-buttons']/button[2]";
	String addedActivity = "//div[@class='abatement-activities__fa-activity__header']";
	String editActivityIcon = "//div[@class='abatement-activities__fa-activity__actions']/button[1]";
	String editActivityPopup = "(//div[@class='modal-header'])[2]";
	String editFAAPopup = "(//div[@class='modal-header'])[2]//div[@class='abatement-activities__title-text']//h1";
	String cancelBtnEditFA = "//div[@class='certified-mail-number__footer']/button[1]";
	String saveBtnEditFA = "//div[@class='certified-mail-number__footer']/button[2]";
	String editedLabelText1 = "(//label[@class='field__value'])[2]";
	String deleteActivityIcon = "//div[@class='abatement-activities__fa-activity__actions']/button[2]";
	String generateDocumentBtn = "//button[text()='Generate Document']";
	String editSaveFAA = "//button[text()='Save']";
	String violationLable = "//span[@class='violation-label']";
	String contactfirst = "(//div[@class='contact__name-role']//b)[1]";
	String contact2 = "(//div[@class='contact__name-role']//b)[2]";
	String fAAAttachement = "(//label[@class='attachments-tile__photo-name'])[3]";
	String selectImgFAA1 = "(//div[@class='tick--not-selected']//following-sibling::img)[1]";
	String selectImgFAA2 = "(//div[@class='tick--not-selected']//following-sibling::img)[2]";
	String selectedImagFAA1 = "(//div[@class='tick--selected']//following-sibling::img)[1]//parent::div//div//a";
	String selectedImahFAA2 = "(//div[@class='tick--selected']//following-sibling::img)[2]//parent::div//div//a";
	String printPreviewFrame = "editor_ifr";
	String imagedetTabTitle1 = "(//tbody//td//p)[2]";
	String imagedetTabTitle2 = "(//tbody//td//p)[6]";
	String donotPrint = "//button[text()='Do Not Print']";
	String exitAddActivity = "//button[text()='Exit']";
	String exitConfirmYesBtn = "//button[text()='Yes']";
	String addContactCDP = "//label[text()='Add contact']//parent::div//input";
	String crtNewContactCDP = "//span[text()='Create a  new contact']";
	String contactName = "//input[@name='name']";
	String createAnywayContact = "//button[text()='Create Anyway']";
	String billtoContact2 = "(//input[@name='billableContact'])[2]";
	String billtoContact3 = "(//input[@name='billableContact'])[3]";
	String photoSection = "//div[@class='case__attachment__title']//h5";
	String selectAllCheckBox = "//input[@name='selectAll'][@type='checkbox']";
	String photosAttached = "//div[@class='case__attachment']//a[@class='attachments-tile__photo-title']";
	String viewphotos = "//a[@class='view-photos']";
	String photoDetailsHeader = "(//div[@class='modal-header'])[3]";
	String closeBtn = "//button[text()='Close']";
	String chooseFAHtmlDoc = "//div[@class='multi-choice-buttons']//button[text()='HTML FA Document']";
	String activityProgress = "//h2[text()='Abatement Activity']//parent::div//label";
	String abatementDetailsPopup = "//div[text()='2']//following-sibling::h2";
	String progressDetails = "//div[text()='2']//following-sibling::label";
	String abatementActivitySec = "//h2[text()='Abatement Activity']";
	String fineSection = "//div[@class='tile fine-section']//h5";
	String violationFileSec = "(//div[@class=''])[7]";
	String issueFAADate = "//label[@title='FAA Document Issue Date']";
	String fAAcontact1 = "(//div[text()='Recipients']//parent::div//span[@class='contact-name'])[1]";
	String fAAcontact2 = "(//div[text()='Recipients']//parent::div//span[@class='contact-name'])[2]";
	String fAAResPosiblecontact1 = "(//div[text()='Responsible Party']//parent::div//span[@class='contact-name'])[1]";
	String fAAResPosiblecontact2 = "(//div[text()='Responsible Party']//parent::div//span[@class='contact-name'])[2]";
	String fAASelectfaaDoc = "//label[@title='Select an FAA Document']";
	String selectedcontact1 = "(//input[@name='billableContact'])[2]//ancestor::div[@class='contact__bill-to-contact']//preceding-sibling::div[@class='contact__name']";
	String selectedcontact2 = "(//input[@name='billableContact'])[3]//ancestor::div[@class='contact__bill-to-contact']//preceding-sibling::div[@class='contact__name']";
	String fAADonotIsuueFine = "//input[@name='isFineIssued'][@type='checkbox']";
	String fAAAddAnotherFine = "//span[@class='fine-section__fine-add-icon']//parent::a";

	public static By MoreBtn = By.xpath(moreBtn);
	By InitiateFABtn = By.xpath(initiateFABtn);
	By PopupTitleFA = By.xpath(popupTitleFA);
	By IFAPopupBtn = By.xpath(iFAPopupBtn);
	By ErrorMsgNote = By.xpath(errorMsgNote);
	By NoteField = By.xpath(noteField);
	By ErrorNoteLimit = By.xpath(errorNoteLimit);
	By ForcedBadge = By.xpath(forcedBadge);
	By AbatementInfo = By.xpath(abatementInfo);
	By EditFANoteLink = By.xpath(editFANoteLink);
	By EditNotePopup = By.xpath(editNotePopup);
	By SaveBtn = By.xpath(saveBtn);
	By EditedNote = By.xpath(editedNote);
	By AddActivityBtn = By.xpath(addActivityBtn);
	public static By AddAttachment = By.xpath(addAttachment);
	By ActivityType2 = By.xpath(activityType2);
	By ActivityType3 = By.xpath(activityType3);
	By FAActivityPopup = By.xpath(fAActivityPopup);
	By FAactivityPopup = By.xpath(fAactivityPopup);
	By FAToggleBtn = By.xpath(fAToggleBtn);
	By FAActivityBtn = By.xpath(fAActivityBtn);
	By AddedActivity = By.xpath(addedActivity);
	By SelectDocument = By.xpath(selectDocument);
	By SelectHTML = By.xpath(selectHTML);
	By ErrorMsgFA1 = By.xpath(errorMsgFA1);
	By ErrorMsgFA2 = By.xpath(errorMsgFA2);
	By DocNoteTitle = By.xpath(docNoteTitle);
	By ValidMsgDocNote = By.xpath(validMsgDocNote);
	By LabelForText1 = By.xpath(labelForText1);
	By LabelForNumber2 = By.xpath(labelForNumber2);
	By LabelForSelect3 = By.xpath(labelForSelect3);
	By DocumentNoteField = By.xpath(documentNoteField);
	By FirstOption = By.xpath(firstOption);
	By GenerateDocBtn = By.xpath(generateDocBtn);
	By ContinueToGenDoc = By.xpath(continueToGenDoc);
	By GenerateDocAddFABtn = By.xpath(generateDocAddFABtn);
	By EditActivityIcon = By.xpath(editActivityIcon);
	By EditActivityPopup = By.xpath(editActivityPopup);
	By CancelBtnEditFA = By.xpath(cancelBtnEditFA);
	By SaveBtnEditFA = By.xpath(saveBtnEditFA);
	By EditedLabelText1 = By.xpath(editedLabelText1);
	By DeleteActivityIcon = By.xpath(deleteActivityIcon);
	By GenerateDocumentBtn = By.xpath(generateDocumentBtn);
	By SelectFAADocArrow = By.xpath(selectFAADocArrow);
	By SelectFAADoc = By.xpath(selectFAADoc);
	By GenFAADoc = By.xpath(genFAADoc);
	By EditFAAPopup = By.xpath(editFAAPopup);
	By EditSaveFAA = By.xpath(editSaveFAA);

	By ViolationLable = By.xpath(violationLable);
	By Contactfirst = By.xpath(contactfirst);
	By Contact2 = By.xpath(contact2);
	By FAAAttachement = By.xpath(fAAAttachement);

	By SelectImgFAA1 = By.xpath(selectImgFAA1);
	By SelectImgFAA2 = By.xpath(selectImgFAA2);
	By SelectedImagFAA1 = By.xpath(selectedImagFAA1);
	By SelectedImahFAA2 = By.xpath(selectedImahFAA2);
	By PrintPreviewFrame = By.id(printPreviewFrame);
	By ImagedetTabTitle1 = By.xpath(imagedetTabTitle1);
	By ImagedetTabTitle2 = By.xpath(imagedetTabTitle2);
	By DonotPrint = By.xpath(donotPrint);

	By ExitAddActivity = By.xpath(exitAddActivity);
	By ExitConfirmYesBtn = By.xpath(exitConfirmYesBtn);
	By AddContactCDP = By.xpath(addContactCDP);
	By CrtNewContactCDP = By.xpath(crtNewContactCDP);
	By ContactName = By.xpath(contactName);

	By CreateAnywayContact = By.xpath(createAnywayContact);
	By BlltoContact2 = By.xpath(billtoContact2);
	By BilltoContact3 = By.xpath(billtoContact3);

	By PhotoSection = By.xpath(photoSection);
	By SelectAllCheckBox = By.xpath(selectAllCheckBox);
	By PhotosAttached = By.xpath(photosAttached);

	By Viewphotos = By.xpath(viewphotos);

	By PhotoDetailsHeader = By.xpath(photoDetailsHeader);
	By CloseBtn = By.xpath(closeBtn);
	By ChooseFAHtmlDoc = By.xpath(chooseFAHtmlDoc);
	By ActivityProgress = By.xpath(activityProgress);
	By AbatementDetailsPopup = By.xpath(abatementDetailsPopup);
	By ProgressDetails = By.xpath(progressDetails);
	By AbatementActivitySec = By.xpath(abatementActivitySec);

	By FineSection = By.xpath(fineSection);
	By ViolationFileSec = By.xpath(violationFileSec);
	By IssueFAADate = By.xpath(issueFAADate);
	By FAAcontact1 = By.xpath(fAAcontact1);
	By FAAcontact2 = By.xpath(fAAcontact2);

	By FAAResPosiblecontact1 = By.xpath(fAAResPosiblecontact1);
	By FAAResPosiblecontact2 = By.xpath(fAAResPosiblecontact2);
	By FAASelectfaaDoc = By.xpath(fAASelectfaaDoc);
	By Selectedcontact1 = By.xpath(selectedcontact1);
	By Selectedcontact2 = By.xpath(selectedcontact2);

	By FAADonotIsuueFine = By.xpath(fAADonotIsuueFine);
	By FAAAddAnotherFine = By.xpath(fAAAddAnotherFine);

	String IssueFAA_Date;
	String fineSectionHeader;
    String addedViolation;
	String addedRecipent1;
    String addedRecipent2;
	String addedRisponsoible1;
	String addedRisponsoible2;
	String FAASelectfaaDocLabel;
	int FAADonotIsuueFineChkbox;
	Boolean FAAAddAnotherFineLinktxt;
	String stageexpectFineSectionHeader = "There is an associated fine with the document you selected, please set the due date and assign a fine amount for each open violation on the case below.";

	String expectFineSectionHeader = "There is an associated fine with the document you selected, please set the due date and assign a fine amount for each open violation on the case below.";
	int photocount;
	int selectCheckBox;
	String viewPhotoDetails;
	String SelectedImag1;
	String SelectedImag2;
	String actualImag1;
	String actualImag2;
	Boolean activity2Field;
	Boolean activity3Field;
	String waterViolation;
	String contact1;
	String contact22;

	String Attachment1 = "pexels-mike-b-170811.jpg";
	String Attachment2 = "pexels-mike-b-810357.jpg";
	String Attachment3 = "pexels-torsten-dettlaff-70912.jpg";
	String expectedprogressActivity = "Complete";
	String actualprogressActivity;
	String expectedprogressAbDetail = "Incomplete";
	String actualprogressAbDetails;
	Boolean AbatementDetails_Popup;

}
