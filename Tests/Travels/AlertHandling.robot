*** Settings ***

Library    RPA.Browser.Selenium

*** Test Cases ***
TC to handle Alert in robot framework
    [Documentation]    Test case to Handle Alert
    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert    chrome
    Maximize Browser Window
    Sleep    3s
    Select Frame    id:iframeResult
    Click Button    xpath://button[contains(text(),'Try it')]   
    Sleep    2s
    Handle Alert        ACCEPT    2s
    Sleep    2s
    Alert Should Not Be Present
    Click Button    xpath://button[contains(text(),'Try it')]   
    Sleep    2s
    ${alertMessage}=    Handle Alert    DISMISS    2S


TC to Handle Promot Alert  
  
    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt    chrome
    Sleep    4s
    Select Frame    id:iframeResult
    Wait Until Element Is Visible    xpath://button[contains(text(),'Try it')]
    Click Button    xpath://button[contains(text(),'Try it')]   
    Alert Should Be Present    Please enter your name:
    Input Text Into Alert    ParveenSharma    ACCEPT
    Sleep    2s
    Close Browser


# Handle Alert- Handles the current alert and return its message.
# Input Text Into Alert - Types the given text into an input field in an alert.
# Alert Should Be Present - Verifies that an alert is present and by default, accepts it
# Alert Should Not Be Present - Verifies that no alert is present.


*** Keywords ***