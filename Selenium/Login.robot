*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Verify login success with valid crdentials
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@placeholder='Username']      timeout=10
        Input Text    xpath://input[@placeholder='Username']    Admin
        Input Text    xpath://input[@placeholder='Password']    admin123
        Click Element    xpath://button[@type='submit']
        Wait Until Element Is Visible    xpath://div[@class='oxd-topbar-header-title']    timeout=5
        Element Should Be Visible    xpath://div[@class='oxd-topbar-header-title']      timeout=5
        Close Browser
        