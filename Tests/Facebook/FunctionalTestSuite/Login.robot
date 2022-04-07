*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  https://www.google.com/
${search_p}  Amazon.in

*** Test Cases ***
Login Screen Test
    [Documentation]  This is login screen for users
    [Tags]  users
    Log  hello

Registration Screen Test
    [Documentation]  This is registration screen for users
    [Tags]  users
    log  success

Admin Login Test
    [Documentation]  This page is for admins
    [Tags]  Admin
    log  Admin

Google Test
    [Documentation]  Google search test
    [Tags]  Internet
    open Browser    ${web_url}  chrome
    Maximize Browser Window
    Enter Search Data
    Submit Form
    sleep  5s
    close Browser



*** Keywords ***
Enter Search Data
     Input Text  name:q  ${search_p}

