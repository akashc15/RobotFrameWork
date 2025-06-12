*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/download


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[normalize-space()='Test.txt']
        Sleep    2s
        ${files}=       List Files In Directory     C:\\Users\\akcha\\Downloads
        Sleep    2s
        List Should Contain Value       ${files}        Test.txt
        Sleep    2s

        Close Browser
