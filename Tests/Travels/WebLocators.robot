*** Settings ***
Library    RPA.Browser.Selenium
Library     RPA.FTP
Resource    ../../Resources/CommonFunctions.robot
Resource    ../../Resources/eBay_UserDefinedKeyWords.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot


Test Setup    Start TestCase
Test Teardown    Finish TestCase 

*** Variables ***

*** Test Cases ***
TC to demo weblocators in robot FW by Id
    Input Text    id:gh-ac    robot
    Sleep    4s

TC to demo weblocators in robot FW by LinkText
    Click Link    link:Start selling    
    Sleep    4s    


TC to demo weblocators in robot FW by PartialLinkText
    Click Link    partial link:Seller Infor    
    Sleep    4s


# XPath Locator








*** Keywords ***

    




# Eskry , chropath etc extension to find xpath of webelement.