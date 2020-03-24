*** Settings ***
Documentation  This is some basic info about the whole test suite
Resource    ../Resources/keywords.robot
Library     SeleniumLibrary
Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Variables ***
 ${BROWSER} =  chrome
 ${URL} =  http://www.amazon.com


*** Test Cases ***
User can access amazon.com and conduct a search
    [Documentation]     This is some basic info about the test
    [Tags]              Test 1
    Go to Web Page

User can conduct a search
    [Documentation]         This is some basic info about the test
    [Tags]                  Test 2
    Go to Web Page
    Search for Product      ferrari 458  results for "ferrari 458"
User can conduct a search
    [Documentation]         This is some basic info about the test
    [Tags]                  Test 3
    Go to Web Page
    Search for Product          tesla model x  results for "tesla model x"