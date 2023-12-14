*** Settings ***
Library    RPA.Browser.Selenium
Library    RPA.Netsuite
Library    RPA.RobotLogListener

*** Variables ***
${url}    https://www.google.com    
${browser}    chrome
${search_Button}    xpath:(//input[@value="Google Search"])[1]

*** Test Cases ***
TC to demo for loop statement in robot framework
    [Documentation]    TC to demo for loop statement
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    name:q    RCV Academy
    Wait Until Element Is Visible     ${search_Button}
    Click Element    ${search_Button}    
    Wait Until Element Is Visible    //table[@class='jmjoTe']//h3
    @{result_on_Page}=    Get WebElements    //table[@class='jmjoTe']//h3
    
    FOR    ${element}    IN    @{result_on_Page}
        ${text}=    Get Text    ${element}
    END       


    Close Browser  
    

# repeat a single keyword several time 
# loop through range of numbers 
# loop through a list of element

# FOR ${var} IN @{list}
#    Keyword ${var}
# END    

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