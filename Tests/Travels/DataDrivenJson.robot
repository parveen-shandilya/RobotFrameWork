*** Settings ***
Library    RPA.Browser.Selenium
Library    OperatingSystem 
Library    String
Library    Collections
    
  

*** Variables ***
${url}    https://www.saucedemo.com    
${browser}    chrome
${txt_Username}   id:user-name
${txt_Password}    id:password
${loginBtn}     xpath://input[@id='login-button']
${txt_error}    xpath://h3[@data-test='error']
${jsonFilePath}    TestData//TestDataJson.json
@{json_Content}
${fileContent}
${username}
${password}
${error}

*** Test Cases ***
Data Json Test Cases
    [Documentation]
    ${json_Content}=    Read Json File    ${jsonFilePath} 
    ${usernames}=    Get From Dictionary    ${jsonContent}    username
    ${passwords}=    Get From Dictionary    ${jsonContent}    password
    ${errors}=    Get From Dictionary    ${jsonContent}    error
    # Log To Console    \nUsernames: ${usernames}
    # Log To Console    \nPassword: ${passwords}
    # Log To Console    \nError: ${errors}

    FOR    ${i}    IN RANGE    0    ${usernames.__len__()}    
            ${username}=    Set Variable    ${usernames}[${i}]
            ${password}=    Set Variable    ${passwords}[${i}]
            ${error}=    Set Variable    ${errors}[${i}]
            # Log To Console    \nUsernames: ${username}
            # Log To Console    \nPassword: ${password}
            # Log To Console    \nError: ${error}
            Run Keyword    Verify User Login Json    ${username}    ${password}    ${error}
       
    END

*** Keywords ***
   
Verify User Login Json    
    [Arguments]    ${username}    ${password}    ${error}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 
    Sleep    3s
    Input Text    ${txt_Username}    ${username}
    Input Text    ${txt_Password}    ${password}
    Click Button    ${loginBtn}
    Sleep    3s
    Element Should Contain    ${txt_error}    ${error} 


   
Read Json File
    [Arguments]    ${filePath}
    ${fileContent}=    Get File    ${filePath}
    ${jsonObject}=    Evaluate    json.loads('''${fileContent}''')    json
    [Return]    ${jsonObject}
 





