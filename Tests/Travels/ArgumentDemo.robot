*** Settings ***


*** Test Cases ***
Argument demo keyword test
    Arguments demo keyword    rvc    academy


Argument demo test 2
    Arguments demo keyword    test    Automation



*** Keywords ***
Arguments demo keyword
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}
    Log    ${arg2}
  