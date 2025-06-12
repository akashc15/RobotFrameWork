*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/windows


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[normalize-space()='Click Here']
        Sleep    2s
        Switch Window       New Window
        Element Text Should Be    //h3[normalize-space()='New Window']    New Window
        Switch Window       The Internet
        Sleep    2

        Close Browser
