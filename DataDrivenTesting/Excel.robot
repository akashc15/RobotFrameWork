*** Settings ***
Library     DataDriver      C:/Users/akcha/PycharmProjects/RobotframeWork1/TestData/ddtLogindataCSV.csv        Sheet_name=ddtLogindataCSV

Library     SeleniumLibrary
Resource        ../Resources/DDTKeywords.robot

Suite Setup     Launch App
Suite Teardown      Close App
Test Template       InvalidLogin

*** Test Cases ***
Login with user ${username} and ${password}     Default UserData

*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        Sleep    2
        SET Email    ${username}
        Sleep    2
        SET Password    ${password}
        Sleep    2
        Click Login
        Sleep    2
        Error Message should be visible

