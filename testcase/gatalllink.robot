#test get all link in path
*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
GetAllLinksTest
    open browser    http://www.newtours.demoaut.com/    chrome    options=ignore-certificate-errors
    maximize browser window
    ${AllLinksCount}=    get element count    xpath://a
    log to console    ${AllLinksCount}

    @{LinkItems}    create list

    FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
        ${linkText}=    get text    xpath:(//a)[${i}]
        log to console    ${linkText}
    END
