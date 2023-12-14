# Variable Scopes


# Global scope
# Global variables are available everywhere in the test data.


# Test Suite scope
# Variables with the test suite scope are available anywhere in the test suite
# where they are defined or imported.


# Test Case Scope
# Variables with the test case scope are visible in a 
# test case and in all user keywords the test uses.


# local scope 
# Test cases and user keywords have a local variable scope 
# that is not seen by other tests or keywords.

*** Settings ***

*** Variables ***
#Global variable
${VARIABLE_DEMO} =    this is global variable




*** Test Cases ***

This is demo test 1
    ${variable_demo} =    Set Variable    This is TestCase Variable 
    Log    ${variable_demo} 
   

This is demo test 2
    Log    ${VARIABLE_DEMO}    

This is demo test 3
    This is demo keyword

*** Keywords ***
This is demo keyword 
    Log    ${VARIABLE_DEMO}