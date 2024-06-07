*** setting ***
Library    SeleniumLibrary

*** Test cases ***
ScrollingTest
    open browser    https://en.wikipedia.org/wiki/Meme    chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,1500)    #scroll down until end at the point of that pixle (0,xxxx)
    #scroll element into view    xpath://span[@id='Memes_as_discrete_units']    #scroll down until find the xpath that you command

    execute javascript    window.scrollTo(0,document.body.scrollHeight)    #scroll down until end of the page

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    #scroll down until start of the page