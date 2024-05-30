#Test navigatiolnal keyword
*** setting ***
Library    SeleniumLibrary

*** Variables ***


*** Test cases ***
NavigationTest
    open browser    https://www.google.co.th/    Chrome
    ${log}=    get location
    log to console    ${log}

    go to    https://github.com/Aimluffy
    ${log}=    get location
    log to console    ${log}

    go back
    ${log}=    get location
    log to console    ${log}

    close browser