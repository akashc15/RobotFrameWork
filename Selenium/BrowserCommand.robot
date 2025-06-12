*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        https://google.com        ${browser}
        Go To    ${url}
        Sleep    2s
        Go Back
        Reload Page        
        Sleep    4s
        Close Browser
