#Test Text Box/Input Box and Verify Title Of the page, and wait until keyword

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[contains(text(),'Log in')]
    ${"email_txt"}    set variable    id:Email

    SeleniumLibrary.Element Should Be Visible    ${"email_txt"}
    SeleniumLibrary.Element Should Be Enabled    ${"email_txt"}

    input text    ${"email_txt"}    aimluffy@gmail.com
    Wait Until Element Is Visible    //input[@id='Email']    5s
    clear element text    ${"email_txt"}
    Wait Until Element Does Not Contain    //input[@id='Email']    5s
    close browser

*** Keywords ***
