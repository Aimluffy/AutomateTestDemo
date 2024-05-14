#Test Select Radio Buttons , Check Boxes

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://demo.automationtesting.in/Register.html
${DELAY}    1

*** Test Cases ***
Test radiobuttons
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    ${DELAY}

    #select radio button phase
    select radio button    radiooptions    Male

    #select and unselect checkbox phase
    select checkbox    Cricket
    select checkbox    Movies
    select checkbox    Hockey

    unselect checkbox    Cricket
    unselect checkbox    Hockey