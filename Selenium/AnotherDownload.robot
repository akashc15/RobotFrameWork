*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/upload-download


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[@id='downloadButton']
        Sleep    2s
        ${files}=       List Files In Directory    C:\\Users\\akcha\\Downloads
        List Should Contain Value    ${files}    sampleFile(3).jpeg

        Close Browser
