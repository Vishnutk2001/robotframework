*** Settings ***
Library  SeleniumLibrary

*** Variables ***

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



*** Keywords ***

