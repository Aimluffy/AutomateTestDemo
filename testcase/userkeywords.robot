#Test user keyword and resource
*** setting ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${url}    http://www.newtours.demoaut.com/
${browser}    chrome

*** Test cases ***
TC1
    ${PageTitle}=    launchBrowser    ${url}    ${browser}
    log to console    ${PageTitle}
    input text    name:userName    mercury
    input text    name:password    metcury