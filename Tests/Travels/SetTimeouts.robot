*** Settings ***

Library    RPA.Browser.Selenium    timeout=10s  

*** Test Cases ***
TC to handle Mouse Operations in robot framework
    [Documentation]    TC to handle Mouse Operations in robot framework
    ${Default_Selenium_timeOut}=    Get Selenium Timeout
    ${Default_Selenium_Speed}=    Get Selenium Speed
    
    #Set Selenium Timeout    10s
    Set Selenium Speed    1s 


    Open Browser    https://www.ebay.com/  chrome    
    Maximize Browser Window
    ${Default_Selenium_Speed}=    Get Selenium Speed
    Alert Should Be Present


    # Mouse Down    //input[@id='gh-btn']    
    # Sleep    3s

    # Mouse Up    //input[@id='gh-btn']    
    # Sleep    3s
    # Mouse Over    xpath://a[@id='gh-as-a']
    # Sleep    3s

    # Mouse Out    xpath://a[@id='gh-as-a']
    # Sleep    3s

    
    # Mouse Up    xpath://a[@id='gh-as-a']
    # Sleep    3s

    # Mouse Down On Link    xpath://a[@id='gh-as-a']
    # Sleep    3s

    # Mouse Down On Image    //img[@id='gh-logo']

    # Sleep    2s

    # Open Context Menu    xpath://a[@id='gh-as-a']
    # Sleep    3s

    # Close Browser





# Get Selenium Timeout - Gets the timeout that is used by various keywords
# Set Selenium Timeout - Sets the timeout that is used by various keywords
# Get Selenium Speed - Gets the delay that is waited after each selenium command
# Set Selenium Speed - Sets the delay that is waited after each Selenium command



*** Keywords ***