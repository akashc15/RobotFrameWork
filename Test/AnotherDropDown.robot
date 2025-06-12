*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/dropdown
        Maximize Browser Window

        Select From List By Value    id:dropdown      1
        Sleep    2
        Select From List By Value    id:dropdown      2
        Sleep    2


        Close Browser
