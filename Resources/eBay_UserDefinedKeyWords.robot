*** Settings ***
Documentation    Basic Search Functionality
Library  RPA.Browser.Selenium

*** Keywords ***
Verify Search Result
    Input Text    //*[@id="gh-ac"]    shoes
    Click Button    //*[@id="gh-btn"]
    Page Should Contain    results for mobile

Verify Search Result mobile
    Input Text    //*[@id="gh-ac"]    mobile
    Click Button    //*[@id="gh-btn"]
    Page Should Contain    results for mobile    
    
