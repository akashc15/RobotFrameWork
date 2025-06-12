*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://jqueryui.com/datepicker/


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select Frame    //iframe[@class='demo-frame']
        Sleep    2
        Current Frame Should Contain    Date
        Click Element    //input[@id='datepicker']
        Sleep    2
        Click Element    //span[@class='ui-icon ui-icon-circle-triangle-e']
        Sleep    2

        Click Element    (//a[normalize-space()='17'])[1]
        Sleep    2
        Close Browser