*** Settings ***

Library    RPA.Browser.Selenium
Library    RPA.Desktop

*** Test Cases ***
TC to handle Mouse Operations in robot framework
    [Documentation]    TC to handle Mouse Operations in robot framework
    Open Browser    https://www.ebay.com/  chrome    
    Maximize Browser Window
    Sleep    3s

    Mouse Down    //input[@id='gh-btn']    
    Sleep    3s

    Mouse Up    //input[@id='gh-btn']    
    Sleep    3s
    Mouse Over    xpath://a[@id='gh-as-a']
    Sleep    3s

    Mouse Out    xpath://a[@id='gh-as-a']
    Sleep    3s

    
    Mouse Up    xpath://a[@id='gh-as-a']
    Sleep    3s

    Mouse Down On Link    xpath://a[@id='gh-as-a']
    Sleep    3s

    Mouse Down On Image    //img[@id='gh-logo']

    Sleep    2s

    Open Context Menu    xpath://a[@id='gh-as-a']
    Sleep    3s

    Close Browser





    # Mouse Down - Press the Left mouse button 
    # Mouse Down On Image - mouse down event on an image 
    # Mouse Down On Link - mouse dowm event on a link
    # Mouse Up - Releasing the left mouse button on element
    # Mouse Over - Hovering the mosue over the element
    # Mouse Out - moving the mouse away from the element
    # Open Context Menu - Right Click Operation - Open the context menu on the element 
    # Drag And Drop - Drag the element into the target 
    # Drag And Drop By Offset - Drags the element with locator by xoffset/yoffset


   


 
  
   


#


*** Keywords ***