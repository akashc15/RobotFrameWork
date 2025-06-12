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
        ${elements}=        Get WebElements    xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}

        END
        Close Browser
