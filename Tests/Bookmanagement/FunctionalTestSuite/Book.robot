*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_name}   admin
${login_password}   12345

*** Test Cases ***
Admin login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000    chrome
    maximize browser window
    sleep  2s
    input text  name:username   ${login_name}
    sleep  1s
    input password  name:password   ${login_password}
    sleep  1s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep   3s

ViewBook Admin test
    [Documentation]  ViewBook page
    [Tags]  admin
    click link  xpath=/html/body/nav/a[2]
    sleep  4s

AddBook Admin test
    [Documentation]  Addbook page
    [Tags]  admin
    click link  xpath=/html/body/nav/a[1]
    sleep  1s
    input text  name:name   littlestory
    sleep  1s
    input text  name:author  amitsharma
    sleep  1s
    input text  name:category   travel
    sleep  1s
    input text  name:price  2000
    sleep  1s
    input text  name:publisher  readerzone
    sleep  1s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  2s
    click link  xpath=//html/body/nav/a[2]
    sleep  4s

Update Book test
    [Documentation]  Updatebook page
    [Tags]  admin
    click link  xpath=//html/body/nav/a[5]
    sleep  1s
    input text  name:name   littlestory
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  3s
    input text  name:author     amitsharma
    sleep  1s
    input text  name:category   travel
    sleep  1s
    input text  name:price  2500
    sleep  1s
    input text  name:publisher  readerzone
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table[3]/tbody/tr[5]/td[2]/button
    sleep  2s
    click link  xpath=//html/body/nav/a[2]
    sleep  4s

Delete Admin test
    [Documentation]  Deletebook page
    [Tags]  admin
    click link  xpath=//html/body/nav/a[4]
    sleep  1s
    input text  name:name   littlestory
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    click link  xpath=//html/body/nav/a[2]
    sleep  4s
    close browser


*** Keywords ***