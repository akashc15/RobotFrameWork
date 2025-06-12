*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Select From List By Value    id:dropdown      1
        Sleep    2
        Select From List By Value    id:dropdown      2
        Sleep    2


        Close Browser
