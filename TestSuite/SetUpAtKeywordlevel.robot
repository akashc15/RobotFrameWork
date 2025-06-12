

*** Test Cases ***
Login
        Login
AddTOCart
        AddToCart

*** Keywords ***
Login
        [Setup]     Launch Browser
        [Teardown]      Close borwser
        Log To Console    Logging to application
        Log To Console    User enters the username
        Log To Console    User enters the password
        Log To Console    USer clicks on the login button
        Log To Console    user is navigated to login page

AddToCart
        [Setup]     Launch Browser
        [Teardown]      Close borwser
        Log To Console    Logging to application
        Log To Console    User enters the username
        Log To Console    User enters the password
        Log To Console    USer clicks on the login button
        Log To Console    user is navigated to login page

Launch browser
        Log To Console    Launching the browser
Close borwser
        Log To Console    Closing the browser