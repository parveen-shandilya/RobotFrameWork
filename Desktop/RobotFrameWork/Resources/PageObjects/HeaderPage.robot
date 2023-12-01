*** Settings ***
Library    RPA.Browser.Selenium

*** Variables ***

*** Keywords ***

Input Search Text and Click Search
    Input Text    xpath://*[@id="gh-ac"]     mobile
    Press Keys    xpath://*[@id="gh-btn"]    RETURN


Click on Advance Search Link
    Click Element    //*[@id="gh-as-a"]


