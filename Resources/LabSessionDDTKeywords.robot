*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php


*** Keywords ***
Launch App
    Open Browser        ${url}      ${browser}
    Maximize Browser Window

Close App
    Close Browser

Open Tutorial
    Go To    ${url}

SET NAME
    [Arguments]     ${username}
    Input Text    //input[@id='name']    ${username}

SET Email
    [Arguments]     ${Email}
    Input Text    //input[@id='email']     ${Email}
    
Choose Gender

    [Arguments]     ${gender}
    IF    '${gender}' == 'MALE'
        Click Element    //input[@id='gender']
    ELSE IF    '${gender}' == 'FEMALE'
        Click Element    //div[3]//div[1]//div[1]//div[2]//input[1]
    ELSE IF    '${gender}' == 'OTHERS'
        Click Element    //div[3]//div[1]//div[1]//div[3]//input[1]
    ELSE
        Log    Invalid gender: ${gender}    WARN
    END

SET MobileNumber
    [Arguments]     ${number}
    Input Text    //input[@id='mobile']    ${number}

SET DOB
    [Arguments]     ${dob}
    Input Text    //input[@id='dob']    ${dob}

SET Subjects
    [Arguments]     ${sub}
    Input Text    //input[@id='subjects']    ${sub}

Choose Hobbies
    [Arguments]     ${hobby}
    IF    '${hobby}' == 'SPORTS'
        Click Element    //input[@id='hobbies']
    ELSE IF    '${hobby}' == 'READING'
        Click Element    //div[7]//div[1]//div[1]//div[2]//input[1]
    ELSE IF    '${hobby}' == 'MUSIC'
        Click Element    //div[7]//div[1]//div[1]//div[3]//input[1]
    ELSE
        Log    Invalid hobby: ${hobby}    WARN
    END

Upload Picture
    [Arguments]     ${path}
    Choose File   //input[@id='picture']    ${path}

Choose CurrentAddress
    [Arguments]     ${current}
    Input Text    //textarea[@id='picture']     ${current}



Click state
    [Arguments]     ${state}
    Select From List By Label    //select[@id='state']      ${state}

Click city
    [Arguments]     ${city}
    Select From List By Label    //select[@id='city']      ${city}

Click Login
    Click Element    //input[@value='Login']

