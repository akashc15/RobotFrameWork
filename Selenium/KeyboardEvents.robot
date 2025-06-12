*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/key_presses


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Press Keys    //input[@id='target']    SPACE
        Sleep    2
        Press Keys    //input[@id='target']    CONTROL
        Sleep    2
        Press Keys    //input[@id='target']    SHIFT
        Sleep    2

        Close Browser
