*** Settings ***
Library    RPA.Browser.Selenium
Resource    ../../Resources/PageObjects/HeaderPage.robot

*** Variables ***
${search_result}    results for 


*** Keywords ***
Verify Search results
    Page Should Contain    ${search_result} ${search_text.abc}   


Verify Search results Arguments
    [Arguments]    ${search_text1}
    Page Should Contain    ${search_result} ${search_text1} 

Verify Search results shoes
    Page Should Contain    results for shoes


Select product condition
    Pass Execution    message  

Select delivery options
    Pass Execution    message
