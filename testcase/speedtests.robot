#Test set speed and timeout in selenium

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://demo.automationtesting.in/Register.html
${DELAY}    1

*** Test Cases ***
Register test

    #${Speed}=    get selenium speed
    #log in console    ${Speed}

    open browser    ${url}    ${browser}
    maximize browser window
    #for set speed every statement that code do
    #set selenium speed    ${DELAY}
    #set selenium timeout    10 seconds    #set timeout 5 -> 10 secs
    wait until page contains    Register    #normal maximum times is 5 secs

    set selenium implicit wait    10 seconds    #wait until selenium find element then time out
    input text    xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[1]/div[1]/input[1]    Aim
    input text    xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/input[1]    Luffy
    input text    xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[2]/div[1]/textarea[1]    Grandline
    input text    xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[3]/div[1]/input[1]    aim.luffy@gmail.com
    input text    xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[4]/div[1]/input[1]    0841234567

    select radio button    radiooptions    Male
    select checkbox    Cricket
    select checkbox    Movies
    select checkbox    Hockey

    Click Element    xpath=//div[@id="msdd"]
    Click Element    xpath=//a[text()="Thai"]
    Click Element    xpath=//div[@id="msdd"]
    Click Element    xpath=//a[text()="English"]

    SeleniumLibrary.Select From List By Label    Skills    Troubleshooting
    SeleniumLibrary.Select From List By Label    country    Japan

    SeleniumLibrary.Select From List By Label    yearbox    1997
    #IDK why that bottom keyworld is not working :(
    #SeleniumLibrary.Select From List By Label    monthbox    December
    Click Element    xpath=//body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[11]/div[2]/select[1]
    Click Element    xpath=//option[contains(text(),'December')]
    SeleniumLibrary.Select From List By Label    daybox    3

    input text    xpath://input[@id='firstpassword']    1234567890
    input text    xpath://input[@id='secondpassword']    1234567890

    #${Speed}=    get selenium speed
    #log in console    ${Speed}