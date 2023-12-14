*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
Test Case to demo Check Box Keywords
    [Documentation]    Test Case to demo Check Box Keywords
    Open Browser    https://demos.jquerymobile.com/1.4.5/checkboxradio-checkbox/    chrome
    Maximize Browser Window
    Sleep    4s 

    Scroll Element Into View    xpath://*[@id='checkbox-v-2c']
    Sleep    2s
    Page Should Contain Checkbox    xpath://*[@id='checkbox-v-2a']
    ${defaultSelenium_ImplicitWait}    Get Selenium Implicit Wait
    Log    ${defaultSelenium_ImplicitWait}
    Set Selenium Implicit Wait    10s
    ${Custome_ImpliciteWait}    Get Selenium Implicit Wait
    Page Should Not Contain Checkbox    xpath://*[@id='checkbox-v-2d']

    CheckBox Should Not Be Selected    xpath://*[@id='checkbox-v-2a']
    Wait Until Element Is Enabled    xpath://input[@id='checkbox-v-2a']
    Wait Until Page Contains Element     xpath://input[@id='checkbox-v-2a'][@type='checkbox']
    #Run Keyword Untill Success    Click Element    xpath://input[@id='checkbox-v-2a'][@type='checkbox']
    #Select Checkbox    xpath://input[@id='checkbox-v-2a'][@type='checkbox'] 
    Execute Javascript    document.evaluate("//input[@id='checkbox-v-2a'][@type='checkbox']", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();  
    Execute Javascript    document.evaluate("//input[@id='checkbox-v-2b'][@type='checkbox']", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();  
    Execute Javascript    document.evaluate("//input[@id='checkbox-v-2b'][@type='checkbox']", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();     
    CheckBox Should Not Be Selected    xpath://*[@id='checkbox-v-2b'][@type='checkbox'] 

    Close Browser




*** Keywords ***
Run Keyword Untill Success
    [Arguments]    ${Method}    ${Element}
    Wait Until Keyword Succeeds    30s    3s    ${Method}    ${Element}
    


# Select checkBox - Selects the Checkbox identified by locator
# Unselect checkBox - Removes the selection of checkbox identified by locator
# CheckBox Should Be Selected - Verifies checkbox locator is selected/checked
# CheckBox Should Not Be Selected - Verifies checkbox locator is not  selected/checked
# Page Should Contain CheckBox - Verifies checkbox locator is found from the current page
# Page Should Not Contain CheckBox - Verifies checkbox locator is not found  from the current page
