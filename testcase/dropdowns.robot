#Test Select Options from Drop-Down

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://demo.automationtesting.in/Register.html
${DELAY}    1

*** Test Cases ***
Test Drop-Down and Lists
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    ${DELAY}

    #Select Options from Lable text
    SeleniumLibrary.Select From List By Label    Skills    Troubleshooting
    #Select Options from Index number from the list number 1 mean the first index in the list and 2nd mean 2nd and another as know...
    SeleniumLibrary.Select From List By Index    Skills    2
    #Select Options from Value, observed from option value="here the value"
    SeleniumLibrary.Select From List By Value    Skills    Web Page Design

    #You can use above keyword for select and unselect in multiple list box
    SeleniumLibrary.Select From List By Label    country    Japan
    #SeleniumLibrary.Unselect From List By Label    country    Japan

    close browser