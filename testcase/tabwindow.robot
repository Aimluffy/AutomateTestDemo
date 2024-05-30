#Test switch tab and get some title
*** setting ***
Library    SeleniumLibrary

*** Variables ***


*** Test cases ***
TabbedWindowsTest
    open browser    https://demo.automationtesting.in/Windows.html    Chrome
    click element    xpath://body/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/a[1]/button[1]
    switch window    Selenium    #can use name,URL,or title of the page
    click element    xpath://a[contains(text(),'Register now!')]
    close all browsers

MultipleBrowsersTest
    open browser    https://github.com/Aimluffy    Chrome
    maximize browser window

    open browser    https://www.bing.com/    Chrome
    maximize browser window

    switch browser    1
    ${title1}=    get title
    log to console    ${title1}

    switch browser    2
    ${title2}=    get title
    log to console    ${title2}

    close all browsers