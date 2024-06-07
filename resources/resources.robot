#Test user keyword and resource
#Resource file part
*** setting ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=    gen title
    [Return]    ${title}