*** Settings ***
Library    RPA.Browser.Selenium

*** Variables ***
${url}    https://www.saucedemo.com    
${browser}    chrome

*** Test Cases ***
TC to demo if else statement in robot framework
    [Documentation]    TC to demo if else statement
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    xpath://input[@id='login-button']

    ${items_on_page}=    Get Element Count    xpath://div[@class='inventory_list']//div[@class='inventory_item_name ']

    Run Keyword If    ${items_on_page} == 10    Test Keyword 1
    ...  ELSE IF    ${items_on_page} < 10
    ...    Test Keyword 2    
    ...  ELSE
    ...    Test Keyword 3 


*** Keywords ***
Test Keyword 1
    Log To Console    Executed Keyword1 - Found items as expected
    Close Browser

Test Keyword 2
    Log To Console    Executed Keyword2 - Found items less than as expected
    Close Browser


Test Keyword 3
    Log To Console    Executed Keyword3 - Exception
    Close Browser










# Run Keyword if ${Condtion} == "Some Data" Keyword1
# ELSE IF ${condition} == "Some other Data" Keyword2
# ... so on