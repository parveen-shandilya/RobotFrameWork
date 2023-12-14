*** Settings ***
Library    RPA.Browser.Selenium


*** Variables ***


*** Test Cases *** 
Test Case to demo WebElement Operation Keywords
    [Documentation]    Test Case to demo WebElement Operations keywords 

    Open Browser    http://google.com    chrome    alias=ChromeRCV
    Maximize Browser Window
    Sleep    4s

    ${attr}=    Get Element Attribute    xpath://*[@id='tophf']//input[1]    name

    ${count}=    Get Element Count     xpath://*[@id='tophf']//input
    
    ${width}    ${height}=    Get Element Size    xpath:(//input[@aria-label='Google Search'])[2]

    Get WebElement    xpath://*[@id='tophf']//input[1]

    @{webelements}=    Get WebElements    xpath://*[@id='tophf']//input[1]


    Capture Element Screenshot    xpath:(//input[@name='btnK'])[2]

    Assign Id To Element    xpath:(//input[@name='btnK'])[2]   RCVid

    Page Should Contain Element    RCVid 
    Set Focus To Element    xpath:(//input[@name='btnK'])[2]
    Element Should Be Focused    xpath:(//input[@name='btnK'])[2]
    Element Should Be Visible    xpath:(//input[@name='btnK'])[2]

    Input Text    xpath://textarea[@name='q']    Pyhton

    Clear Element Text    xpath://textarea[@name='q']

    Cover Element    xpath://textarea[@name='q']

    Element Attribute Value Should Be    xpath:(//input[@name='btnK'])[2]   value    Google Search
    
    Element Should Be Enabled    xpath:(//input[@name='btnK'])[2]
    Element Should Not Be Visible    xpath:(//input[@name='btnK'])[1]

    Element Should Contain    xpath:(//a[@class='pHiOh'])[4]    How Search
    Element Should Not Contain    xpath:(//a[@class='pHiOh'])[4]    Goodgle Search



# Get Element Attribute - Return the value of attribute fron the element locator
# Get Elemet Count - Return the numver of elements matching loctor
# Get Element Size - Return width and height of the element identified by locator
# Get WebElement - Return the first WebElement matching the given locator
# Capture Element Screenshot - Capture a screenshot from the element and embeds it into log file
# Assign Id To Element - Assigns a temporary id to the element specified by locator
# Clear Element Text - Clear the value of the text-input-element identifies by locator
# Double Click Element - Double click the element identified by locator
# Cover Element - will cover element identified by locator with a blue div without breadking page layout
# Click Element At Coordinates - click the element locator at xoffset/yoffset
#  

*** Keywords ***
