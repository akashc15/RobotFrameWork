*** Test Cases ***
Login
        Setup
        Log To Console    Execute testcase1
        Log    Execute testcase1
        Log To Console    Logging in to the application
        Teardown


AddTOCart
        Setup
        Log To Console    Execute Testcase2
        Log    Execute testcase2
        Log To Console    Adding the product to cart
        Teardown


*** Keywords ***
Setup
        Log To Console    Launching the browser

Teardown
        Log To Console    Closing the browser