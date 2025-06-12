*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
Verify login success with valid crdentials
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='firstname']     timeout=10
        Input Text    xpath://input[@id='firstname']   Abhishek
        Input Text    xpath://input[@id='lastname']    Gowda
        Input Text    xpath://input[@id='username']    daddyniko
        Input Text    xpath://input[@id='password']    hogibittasharavn
        Click Element    xpath://input[@value='Register']
        #Wait Until Element Is Visible    xpath://div[@class='oxd-topbar-header-title']    timeout=5
        #Element Should Be Visible    xpath://div[@class='oxd-topbar-header-title']      timeout=5
        Close Browser
