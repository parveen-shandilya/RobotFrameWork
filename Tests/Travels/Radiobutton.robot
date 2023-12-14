*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
Test Case to demo Radio Button Keywords
    [Documentation]    Test Case to demo Radio Button Keywords
    Open Browser    https://demos.jquerymobile.com/1.4.5/checkboxradio-radio/    chrome
    Maximize Browser Window
    Sleep    4s 

    Page Should Contain Radio Button    xpath://*[@id='radio-choice-0a']

    Page Should Not Contain Radio Button    xpath://*[@id='radio-choice-0c']

    Radio Button Should Not Be Selected    xpath://*[@id='radio-choice-0a']
    Select Radio Button    xpath://*[@id='radio-choice-0a']    0

    Radio Button Should Be Set To    xpath://*[@id='radio-choice-0a']    0

    Close Browser







# Page Should Contain Radio Button - Verifies radio button locatore is found from current page
# Page Should Not Contains Radio Button - No radio button found
# Select Radion Button - Sets the radio button group group_name to value
# Radion Button Should not Be Selected - Verifies radio button group group_name has no selection
# Radio Button should Be Set To - Sets the radion button group group_name to value
