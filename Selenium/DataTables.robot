*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/tables


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${name}=        Get Table Cell    //table[@id='table1']    2    2
        Log To Console    ${name}
        ${name1}=        Get Table Cell    //table[@id='table1']    5    1
        Log To Console    ${name1}
          ${rows}=    Get Element Count    xpath=//table[@id='table1']/tbody/tr
          ${cols}=    Get Element Count    xpath=//table[@id='table1']/thead/tr/th

  ${rows}=    Get WebElements    xpath=//table[@id='table1']/tbody/tr

    FOR    ${row}    IN    @{rows}
        ${text}=    Get Text    ${row}
        Log To Console    ${text}
        Log To Console    |

    END


        Close Browser
