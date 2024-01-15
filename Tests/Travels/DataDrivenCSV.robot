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
${CSV_filePath}    TestData//TestDataCSV.csv
@{csv_Content}
${fileContent}
${username}
${password}
${error}

*** Test Cases ***
Data CSV Test Cases
    [Documentation]
    ${csv_content}=    Read CSV File    ${CSV_filePath} 
    FOR    ${lines}    IN    ${csv_content}[1:]
        FOR    ${i}    IN RANGE    0    ${lines.__len__()}    
            ${line}=    Set Variable    ${lines}[${i}]
            ${values}=    Split String    ${line}    ,
            ${username}=    Set Variable    ${values}[0]
            ${password}=    Set Variable    ${values}[1]
            ${error}=    Set Variable    ${values}[2]
           
            Run Keyword    Verify User Login    ${username}    ${password}    ${error}  
            
        END
      
       
    END
   

*** Keywords ***
   
Verify User Login
    [Arguments]    ${username}    ${password}    ${error}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 
    Sleep    3s
    Input Text    ${txt_Username}    ${username}
    Input Text    ${txt_Password}    ${password}
    Click Button    ${loginBtn}
    Sleep    3s
    Element Should Contain    ${txt_error}    ${error}

   
Read CSV File
    [Arguments]    ${filePath}
    ${fileContent}=    Get File    ${filePath}
    @{csvRows}=   Split To Lines    ${fileContent}
    ${csvContent}=    Evaluate    [list(item.split(';')) for item in "${csvRows}"]
    [Return]    ${csvRows}
 





