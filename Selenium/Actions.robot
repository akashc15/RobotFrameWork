*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://www.amazon.in/


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Open Context Menu    //a[normalize-space()='Mobiles']
        Sleep   2s
        Double Click Element    //a[normalize-space()='Amazon Pay']
        Sleep    1s
        Close Browser
