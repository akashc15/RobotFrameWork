*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.saucedemo.com/

*** Test Cases ***
Verify login success with valid crdentials
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='user-name']     timeout=10
        Input Text    xpath://input[@id='user-name']   standard_user
        Input Text    xpath://input[@id='password']     secret_sauce
        Click Element    xpath://input[@value='Login']
        #Wait Until Element Is Visible    xpath://div[@class='oxd-topbar-header-title']    timeout=5
        #Element Should Be Visible    xpath://div[@class='oxd-topbar-header-title']      timeout=5
        Close Browser
