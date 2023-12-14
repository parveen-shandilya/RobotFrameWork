*** Settings ***

Library    RPA.Browser.Selenium

*** Test Cases ***
TC to demo List handling in robot framework
        [Documentation]    TC to demo List handling in robot framework
        Open Browser    https://talk.webengage.com/campaign-lp/customer-data-platform?utm_source=google-ads&utm_medium=search-non-brand&utm_campaign=gs.bofu-cdp-ind&utm_campaign_type=targeting&utm_campaign_objective=demo-request20230901&utm_term=crm%20data%20platform&utm_campaign=GS.BOFU-CDP-IND&utm_source=adwords&utm_medium=ppc&hsa_acc=4345215044&hsa_cam=20512636306&hsa_grp=156897507830&hsa_ad=672451540292&hsa_src=g&hsa_tgt=kwd-443383435196&hsa_kw=crm%20data%20platform&hsa_mt=p&hsa_net=adwords&hsa_ver=3&gad_source=1&gclid=CjwKCAiA1MCrBhAoEiwAC2d64RhYI2Vi3wiyzLzH_DSJdoAJMpOgstzT_ssGPBvmXCJNeL0nzXUtNxoC2NgQAvD_BwE    chrome    
        Maximize Browser Window
        Sleep    3s
        Wait Until Element Is Visible    onetrust-accept-btn-handler
        Click Element    onetrust-accept-btn-handler
        Wait Until Element Is Visible    //input[@value='Submit']
        Scroll To Element    //input[@value='Submit']
        Page Should Contain List    total_monthly_active_users
        @{ListAllItem}=    Get List Items    total_monthly_active_users
        ${ListLabel}=    Get Selected List Label    total_monthly_active_users
        List Selection Should Be    total_monthly_active_users    Please Select
        Select From List By Index    total_monthly_active_users    1
        ${newItemSelected}=    Get Selected List Label    total_monthly_active_users
        Sleep    1s
        Select From List By Label    total_monthly_active_users    100k to 500k
        ${newItemSelected2}=    Get Selected List Label    total_monthly_active_users
        
        Select From List By Value    total_monthly_active_users    1M to 5M
        ${newItemSelected3}=    Get Selected List Label    total_monthly_active_users
        Select From List By Value    total_monthly_active_users    500k to 1M    
        ${newItemSelected4}=    Get Selected List Label    total_monthly_active_users

    # Multiselect List 
        Go To    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
        Select Frame    id:iframeResult
        Select All From List    xpath://*[@id="cars"]
        Sleep    2s
        @{ListLabels}=    Get Selected List Labels    xpath://*[@id="cars"]
        Sleep    2s
        Unselect From List By Index    xpath://*[@id="cars"]    1
        Sleep    2s
        Unselect From List By Value    xpath://*[@id="cars"]    audi
        Sleep    2s
        Unselect From List By Label    xpath://*[@id="cars"]    Volvo
        Sleep    2s
        @{ListValues}=    Get Selected List Values     xpath://*[@id="cars"]
        Sleep    2s
        Unselect All From List    xpath://*[@id="cars"]
        List Should Have No Selections     xpath://*[@id="cars"]
        Close Browser
        
*** Keywords ***
Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})












# Get List items - Return all labels or values of selection list locator
# Get Selected List Label - Return the label of selected option from the list
