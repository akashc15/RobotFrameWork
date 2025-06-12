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
        Mouse Over    xpath://span[normalize-space()='Prime']

        Wait Until Element Is Visible    xpath://img[@id='multiasins-img-link']
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2
        Close Browser
