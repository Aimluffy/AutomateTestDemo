#test demo website https://www.saucedemo.com/ by Aimluffy :D

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.saucedemo.com/
${DELAY}    1

*** Test Cases ***
LoginTest
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    //input[@id='login-button']
    Close Browser
    
    #Create Webdriver    Chrome    executable_path="C:\\Driver\\chromedriver_win32\\chromedriver.exe"***

*** Keywords ***
