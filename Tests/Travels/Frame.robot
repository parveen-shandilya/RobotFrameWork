*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
TC to Demonstrate the working with frames in Robot Framework
    [Documentation]    TC to Demonstrate the working with frames in Robot Framework
    Open Browser    https://www.w3schools.com/tags/tag_frame.asp    chrome    
    Maximize Browser Window
    Sleep    2s
    Wait Until Element Is Visible    xpath://a[contains(text(),'Try it Yourself')]
    Scroll Element Into View    xpath://a[contains(text(),'Try it Yourself')]
    Click Element    xpath://a[contains(text(),'Try it Yourself')]
    Sleep    2s
    ${window_handles}    Get Window Handles
    Switch Window    ${window_handles}[1]
    Wait Until Element Is Visible    iframeResult
    Select Frame    iframeResult

    # verifies with current selected frame
    Current Frame Should Contain    The iframe element
    Current Frame Should Not Contain    The iframe SSSSS

    Unselect Frame
    
    #verifies with the particular frame
    Frame Should Contain    iframeResult    The iframe element

    Close Browser








# Select Frame - Sets frame identified by locator as the current frame
# Unselect Frame - Sets the main frame as the current frame
# Frame Should Contain - Verifies that frame identified by locator contains text
# Current Frame Should Contain - Verifies that the current frame contains text
# Current Frame should not contain - Verifies that the current frame does not contain text
