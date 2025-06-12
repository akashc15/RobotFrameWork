*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://input[@id='datetimepicker1']
        Sleep    2
       Wait Until Element Is Visible    xpath:(//span[@aria-label='June 10, 2025'][normalize-space()='10'])[1]  timeout=5
       Click Element    xpath:(//span[@aria-label='June 10, 2025'][normalize-space()='10'])[1]

        Click Element    xpath://div[@class='col-md-8 col-lg-8 col-xl-8']

        Sleep    2

        Close Browser
