#Test alert
*** setting ***
Library    SeleniumLibrary

*** Test cases ***
HandlingAlerts
    open browser    https://demo.automationtesting.in/Alerts.html    Chrome
    click element    xpath://button[contains(text(),'alert box:')]
    
    Thread.sleep(4000)

    #handle alert    accept
    handle alert    dismiss
    #handle alert    Leave

    alert should be present    Press a Button !
    #alert should not be present    Press a Button !