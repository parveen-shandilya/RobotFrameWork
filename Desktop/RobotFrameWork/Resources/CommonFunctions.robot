*** Settings ***
Library    RPA.Browser.Selenium


*** Keywords ***
Start TestCase
    Open Browser  http://www.ebay.com  chrome
    Maximize Browser Window

Finish TestCase
    Close Browser