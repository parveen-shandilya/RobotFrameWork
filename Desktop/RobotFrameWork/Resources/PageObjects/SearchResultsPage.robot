*** Settings ***
Library    RPA.Browser.Selenium



*** Keywords ***
Verify Search results
    Page Should Contain    results for mobile


Verify Search results shoes
    Page Should Contain    results for shoes


Select product condition
    Pass Execution    message  

Select delivery options
    Pass Execution    message
