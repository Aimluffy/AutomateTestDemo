#Test select frames and unselect frames
*** Setting ***
Library    SeleniumLibrary

*** Test cases ***
Testing frames
    open browser    https://demo.automationtesting.in/Frames.html    Chrome
    maximize browser window

    click element    xpath://a[contains(text(),'Iframe with in an Iframe')]

    select frame    container iframes-page-container    #id name or xpath
    #click link    nothing
    unselect frame

    select frame    container
    #click link    nothing
    unselect frame