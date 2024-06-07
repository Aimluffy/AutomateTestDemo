#using resource form test login_resources.robot and LoginData.xlsx
*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_resources.robot
Library    DataDriver    ../Testdata/LoginData.xLsx    sheet_name=Sheet1

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestwithExcel using ${username}    ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    login_resources.click login botton
    Error message should be visible