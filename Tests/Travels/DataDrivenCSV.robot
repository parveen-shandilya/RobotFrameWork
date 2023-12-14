*** Settings ***
Library    RPA.Browser.Selenium
Test Template    Invalid Login Scenarios

*** Variables ***
${url}    https://www.saucedemo.com    
${browser}    chrome
${txt_Username}   id:user-name
${txt_Password}    id:password
${loginBtn}     xpath://input[@id='login-button']
${txt_error}    xpath://h3[@data-test='error']

*** Test Cases ***                                        USERNAME    PASSWORD    ERROR  
Verify Login Fails - Blank username And password           ${EMPTY}    ${EMPTY}    Epic sadface: Username is required
Verifies Login Fails - Wrong Username                      standard_us    secret_sauce    Epic sadface: Username and password do not match any user in this service    
Verifies Login Fails - LockedOut User                      locked_out_user    secret_sauce    Epic sadface: Sorry, this user has been locked out.


*** Keywords ***
Invalid Login Scenarios   
    [Arguments]    ${username}    ${password}    ${error_msg}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 
    Sleep    3s
    Input Text    ${txt_Username}    ${username}
    Input Text    ${txt_Password}    ${password}
    Click Button    ${loginBtn}
    Sleep    3s
    Element Should Contain    ${txt_error}    ${error_msg}











