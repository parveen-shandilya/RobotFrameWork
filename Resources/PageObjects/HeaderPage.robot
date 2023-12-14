*** Settings ***
Library    RPA.Browser.Selenium
Variables    ../WebElements.py

*** Variables ***
#Scalar local variable
#${search_text}    mobile
${search_text_robot}    robot
${search_text_Box}    xpath://*[@id="gh-ac"]
${search_Button}    xpath://*[@id="gh-btn"] 


# Scalar Global Variable
#${GLOBAL_VARIABLE}    textt443


# List Variable 
#@{search_text}    books    travel    robot    gifts   

#dict variable 

&{search_text}    abc=books    def=travels    ghi=robot 
    
*** Keywords ***

Input Search Text and Click Search
    Input Text    ${search_text_Box}    ${search_text.abc}
    Press Keys    ${search_Button}    RETURN


Click on Advance Search Link
    # external webpage element implemented homePageAdvanceSearchLink
    Click Element    ${homePageAdvanceSearchLink}

Input Search Text and Click Search Arguments
    [Arguments]    ${search_text1}
    Input Text    ${search_text_Box}    ${search_text1}
    Press Keys    ${search_Button}    RETURN


Search for another text
    Input Text    ${search_text_Box}     ${search_text_robot}
    Press Keys    ${search_Button}    RETURN
    


