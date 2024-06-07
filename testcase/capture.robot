#Test capture screen and capture element
*** setting ***
Library    SeleniumLibrary

*** Variables ***


*** Test cases ***
LoginTC
    open browser    https://github.com/Aimluffy    chrome
    maximize browser window

    #capture page screenshot    C:/Users/aimai/OneDrive/Desktop/aimluffy_test/utomateTestDemo/capture/Aimluffy.png
    #capture element screenshot    C:/Users/aimai/OneDrive/Desktop/aimluffy_test/utomateTestDemo/capture/githublogo.png

    capture page screenshot    Aimluffy.png
    #capture element screenshot    xpath://*[@id='']    githublogo.png