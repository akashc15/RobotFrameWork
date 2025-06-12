*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://button[@onclick='jsAlert()']
        Sleep    2s

        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s
        Click Element    css:button[onclick='jsConfirm()']
        Sleep    2s

        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s
        Click Element    xpath://button[@onclick='jsPrompt()']
        Sleep    2s

        Input Text Into Alert    hello
        Sleep    2s

        Close Browser
