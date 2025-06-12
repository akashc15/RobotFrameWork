*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/drag_and_drop


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Drag And Drop    //div[@id='column-a']    //div[@id='column-b']
        Sleep    2
        Close Browser
