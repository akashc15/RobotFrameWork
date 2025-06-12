*** Settings ***
Suite Setup     Open the db Connection
Suite Teardown      Close the db connection
Resource        ../Resources/Resource.robot
Library    SeleniumLibrary

*** Test Cases ***
Testcase1
        Log     Execute testcase1

*** Test Cases ***
Testcase2
        Log     Execute testcase2

*** Test Cases ***
Testcase3
        Log     Execute testcase3


