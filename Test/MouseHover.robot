*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${chrome options}
    Go To     https://swisnl.github.io/jQuery-contextMenu/demo.html


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Mouse Over    xpath://span[normalize-space()='Prime']

        Wait Until Element Is Visible    xpath://img[@id='multiasins-img-link']
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2
        Close Browser
