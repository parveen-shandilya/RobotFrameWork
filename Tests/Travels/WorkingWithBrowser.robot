*** Settings ***
Library    RPA.Browser.Selenium

*** Variables ***
${url}    http://google.com
${browser}    chrome


*** Test Cases ***
TC to demo Browser Operation keywords in robot framework
    [Documentation]    TC to demo Browser Operation keywords in robot framework
    Open Browser    http://google.com    Chrome    alias=ChromeRCV

    Open Browser    about:blank    ff    alias=RCVFF

    &{alias}    Get Browser Aliases
    Log    ${alias}

    @{browser_Id}    Get Browser Ids

    Log    ${browser_Id}[1]

    Switch Browser    ${alias.RCVFF}
    Go To    http://www.ebay.com


    Sleep    4s

    Switch Browser    ${alias.ChromeRCV}
    Go To    http://www.youtube.com
    Sleep    4s

    Close All Browsers



Navigate to app,open new Window ,close it , click on alert search_Button
    Open Available Browser    http://gxd4e.csb.app/
    Click Button When Visible    id:openwindow
    ${handles}=    Get Window Handles
    Switch Window    ${handles}[1]
    Click Button When Visible    id:closewindow
    Switch Window    ${handles}[0]
    Click Button When Visible    id:openalert

# Get Window Handles
# Get window identifiers - return and logs id attribute of all known browser windows
# Get Window Name - return and logs name of all known browser windows
# Get Window title - return and logs title of all known windows
# Set Window Position - sets window position using x an y coordinates
# Get Window position - return current window position
# Get wwindow Size - return current window size as interger
# Set Window Size - Sets current windows size to given width and height 
# Select Window - Deprecated in selenium 4 use  Switch Window
# Switch Window - Switches to browser window matching locator
# close Window - Closes currently opened and selected window/tab

*** Keywords ***