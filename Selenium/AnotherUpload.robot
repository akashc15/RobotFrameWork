*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/upload-download
${path}     C:\\Users\\akcha\\Downloads\\sampleFile.jpeg

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Choose File    //input[@id='uploadFile']    ${path}
        Sleep    2s

        Close Browser
