#Test close all browser
*** Setting ***
Library    SeleniumLibrary

*** Test Cases ***
My test case
    open browser    https://demo.automationtesting.in/Register.html    Chrome
    maximize browser window

    open browser    https://demo.automationtesting.in/Index.html    Chrome
    maximize browser window

    #close browser
    close all browsers