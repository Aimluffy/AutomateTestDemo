#resource for test login
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/
${BROWSER}    chrome

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    SeleniumLibrary.Close All Browsers

Open Login Page
    go to    ${LOGIN URL}

Input username
    [Arguments]    ${username}
    input text    id:Email    ${username}

Input pwd
    [Arguments]    ${password}
    input text    id:Password    ${password}

click login botton
    click element    xpath://button[contains(text(),'Log in')]

click logout link
    click link    Logout

Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashboard
