*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_name}   admin
${login_password}   12345
*** Test Cases ***
Hospital login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000    chrome
    maximize browser window
    sleep  2s
    input text  name:username   ${login_name}
    sleep  1s
    input password  name:password   ${login_password}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Register test
    [Documentation]  Register
    [Tags]  admin
    input text  name:name   vijay
    sleep  1s
    input text  name:mobilenumber  1234554321
    sleep  1s
    input text  name:age    21
    sleep  1s
    input text  name:address    OMR
    sleep  1s
    input text  name:dob    2020-05-04
    sleep  1s
    input text  name:place  chennai
    sleep  1s
    input text  name:pincode    625025
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

Search Patient test
    [Documentation]  Search the Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[1]/a
    sleep  3s
    input text  name:mobilenumber  1234554321
    sleep  2s
    click button  xpath=//html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  5s

Viewall Patient test
    [Documentation]  Viewall the Patients
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  5s

Update Patient test
    [Documentation]  Update the Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[2]/a
    sleep   1s
    input text  name:mobilenumber  1234554321
    sleep  1s
    click button    xpath=//html/body/div/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    sleep   1s
    input text  name:name   vijay sundar
    sleep   1s
    click button    xpath=//html/body/div/div/div/form[2]/table/tbody/tr[8]/td[2]/button
    sleep  3s

Delete Patient test
    [Documentation]  Delete the Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    input text  name:mobilenumber  1234554321
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    click link  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  5s
    close browser

*** Keywords ***