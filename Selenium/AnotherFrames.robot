*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/nested_frames


*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Select Frame    //frame[@name='frame-top']
        Sleep    2
        Select Frame    //frame[@name='frame-left']
        Sleep    2
        ${left_text}=       Get Text    (//body)[1]
        Log     ${left_text}
        Unselect Frame
        Unselect Frame
        Select Frame    //frame[@name='frame-top']
        Sleep    2
        Select Frame    //frame[@name='frame-middle']
        Sleep    2
        ${middle_text}=       Get Text    (//body)[1]
        Log     ${middle_text}
        Unselect Frame
        Unselect Frame
        Select Frame    //frame[@name='frame-top']
        Sleep    2
        Select Frame    //frame[@name='frame-right']
        Sleep    2
        ${right_text}=       Get Text    (//body)[1]
        Log     ${right_text}


        Close Browser