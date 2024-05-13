#Test Text Box/Input Box and Verify Title Of the page

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.saucedemo.com/
${id}    standard_user
${pass}    secret_sauce

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    Swag Labs
    ${"Username_txt"}    set variable    id:user-name

    element should be visible    ${"Username_txt"}
    element should be enable    ${"Username_txt"}

    input text ${"username_txt"}    ${id}
    sleep 5
    clear element text    ${"Username_txt"}
    sleep 3
    close browser

*** Keywords ***
