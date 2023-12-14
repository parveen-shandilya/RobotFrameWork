*** Settings ***
Documentation  Basic Serarch Functionality
Library     OperatingSystem 
Library     RPA.FTP
Resource    ../../Resources/CommonFunctions.robot
Resource    ../../Resources/eBay_UserDefinedKeyWords.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot


Test Setup    Start TestCase
Test Teardown    Finish TestCase    


*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]    Functional
   
    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search results

Verify search for shoes
    [Documentation]    This test case verifies the serach for mobile
    [Tags]    Functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search results

Verif click on AdvanceSerach Button
    [Documentation]    This test case verifies Advance search Button
    [Tags]    Functional
    HeaderPage.Click on Advance Search Link  


Verify basic search functionality for eBay Arguments
    [Documentation]  This test case verifies the basic search
    [Tags]    Functional
   
    HeaderPage.Input Search Text and Click Search Arguments    mobile
    SearchResultsPage.Verify Search results Arguments    mobile


Verify basic search functionality for eBay Arguments Books
    [Documentation]  This test case verifies the basic search
    [Tags]    Functional
   
    HeaderPage.Input Search Text and Click Search Arguments    Books
    SearchResultsPage.Verify Search results Arguments    Books


Verify basic search functionality for eBay Arguments Travel
    [Documentation]  This test case verifies the basic search
    [Tags]    Functional
   
    HeaderPage.Input Search Text and Click Search Arguments    Travel
    SearchResultsPage.Verify Search results Arguments    Travel



*** Keywords ***
