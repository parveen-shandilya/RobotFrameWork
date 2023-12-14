*** Settings ***
Library    RPA.Browser.Selenium

*** Variables ***
${env}    qa
&{url}    qa=http://www.ebay.com    uat=http://developer.salesforce.com/signup   dev=http://dev.demo.com 
${browser}    chrome

*** Keywords ***
Start TestCase
    Open Browser    ${url.${env}}    ${browser} 
    Maximize Browser Window
    Sleep    4s

Finish TestCase
    Close Browser


# passing variable from command line 
# 1)  define scalar variable like : ${url} 
# 2)  replace hard coded value with the scalar variable like : ${url}
# 3)  cmd : robot -d results <pathoftheTestCasefile>
# 4)  Pass runtime parameter values : 
#     robot -d results -v url:<value> -v browser:<value> <pathoftheTestCasefile>
#     these value take precedence upon value define in the code.