*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        @{labels}=      Get Selected List Labels    id:dropdown-class-example
        Log    {labels}
        Select From List By Value    id:dropdown-class-example      option1
        Sleep    2
        Select From List By Value    id:dropdown-class-example      option2
        Sleep    2
        Select From List By Value    id:dropdown-class-example      option3
        Sleep    2

        Close Browser
