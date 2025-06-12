*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://jqueryui.com/tabs/


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select Frame    //iframe[@class='demo-frame']
        
        Click Element    (//a[normalize-space()='Nunc tincidunt'])[1]
        Sleep    2s
        Click Element    (//a[normalize-space()='Proin dolor'])[1]
        Sleep    2
        Click Element    (//a[normalize-space()='Aenean lacinia'])[1]
        Sleep    2
        Close Browser
