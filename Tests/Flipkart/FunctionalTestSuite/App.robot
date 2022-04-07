*** Settings ***
Library  SeleniumLibrary
Suite Setup   Log   Inside Test Suite Setup
Suite Teardown  Log   Inside Test Suite Teardown

Test Setup  Log  Inside Test Case Setup
Test Teardown  Log  Inside Test Case Teardown
*** Variables ***
${google_search}  https://www.google.com/
${search_query}  flipkart
${search_product}  iphone

*** Test Cases ***
Google Search Test
    [Documentation]  This test is to open google
    [Tags]  google
    Open Browser  ${google_search}    chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element  class:LC20lb

Flipkart Search Test
    [Documentation]  This is to open flipkart
    [Tags]  flipkart
    sleep  3s
    Click Button  class:_2KpZ6l
    Search Flip Data
    sleep  3s
    Click Button  class:L0Z3Pu

Purchase Item Test
    sleep  2s
    Click Element  xpath=/html/body/div/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s
    Switch Window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep  2s
    Click Button    xpath=/html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  2s



*** Keywords ***
Search Data
    Input Text  name:q  ${search_query}
Search Flip Data
    Input Text  name:q  ${search_product}
