*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Firefox
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
        Click Element    xpath://a[normalize-space()='Test.txt']
        Sleep    2s
        ${files}=       List Files In Directory     C:\\Users\\akcha\\Downloads
        Sleep    2s
        List Should Contain Value       ${files}        Test.txt
        Sleep    2s

        Close Browser
