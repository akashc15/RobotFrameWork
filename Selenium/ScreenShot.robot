*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Firefox
${url}      https://amazon.in


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot    C:\\Users\\akcha\\Downloads\\robo.png
        Sleep    2s
        Capture Element Screenshot    xpath://h2[contains(text(),'PlayStation 5 Slim & Accessories |')]     C:\\Users\\akcha\\Downloads\\robo2.png
        Close Browser
