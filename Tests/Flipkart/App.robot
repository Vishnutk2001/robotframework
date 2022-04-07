*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google_search}  https://www.google.com/
${search_query}  flipkart
*** Test Cases ***
Google Search Test
    [Documentation]  This test is to open google
    [Tags]  google
    Open Browser     chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element  class:LC20lb
*** Keywords ***
Search Data
    Input_text  name:q
