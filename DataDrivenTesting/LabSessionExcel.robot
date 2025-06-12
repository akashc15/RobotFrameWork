*** Settings ***
Library     DataDriver      C:\\Users\\akcha\\PycharmProjects\\RobotframeWork1\\TestData\\ddtRegistrationData (1).xlsx     Sheet_name=Sheet1

Library     SeleniumLibrary
Resource        ../Resources/LabSessionDDTKeywords.robot


Suite Setup     Launch App
Suite Teardown      Close App
Test Template       StudentLogin

*** Test Cases ***
Fill form with user data    Default Userdata

*** Keywords ***
StudentLogin
        [Arguments]     ${username}     ${Email}    ${gender}   ${number}   ${dob}  ${sub}  ${hobby}    ${path}     ${current}  ${state}    ${city}
        Sleep    2
        SET NAME        ${username}
        Sleep    2
        SET Email    ${Email}
        Sleep    2
        Choose Gender    ${gender}
        Sleep    2
        SET MobileNumber    ${number}
        Sleep    1
        SET DOB    ${dob}
        Sleep    1
        SET Subjects    ${sub}
        Sleep    1
        Choose Hobbies    ${hobby}
        Sleep    1
        Upload Picture    ${path}
        Sleep    1
        Choose CurrentAddress    ${current}
        Sleep    1
        Click state   ${state}
        Sleep    1
        Click city    ${city}
        Sleep    1


        Click Login


