*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${chrome options}
    Go To     https://swisnl.github.io/jQuery-contextMenu/demo.html
${path}     C:\\Users\\akcha\\Downloads\\sampleFile.jpeg

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Choose File    xpath://input[@id='file-upload']    ${path}
        Sleep    2s
        Click Element    xpath://input[@id='file-submit']
        Sleep    2s
        Close Browser
