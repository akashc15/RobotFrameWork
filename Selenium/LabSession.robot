*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://omayo.blogspot.com/

*** Test Cases ***
Verify radio button
        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Select From List By Value    id:multiselect1      volvox

        Select From List By Value    id:multiselect1      swiftx

        Select From List By Value    id:multiselect1      Hyundaix

        Select From List By Value    id:multiselect1      audix

        Select From List By Value    id:drop1      def

        Select From List By Value    id:drop1      ghi

        Select From List By Value    id:drop1      jkl

        Select From List By Value    id:drop1      mno

        Click Element    css:#link1
        Sleep    2
        Wait Until Element Is Visible    //img[@id='Header1_headerimg']
        Go Back
        Click Element    css:body > div:nth-child(4) > div:nth-child(2) > div:nth-child(2) > div:nth-child(2) > div:nth-child(3) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(4) > div:nth-child(2) > div:nth-child(1) > aside:nth-child(1) > div:nth-child(1) > div:nth-child(6) > div:nth-child(1) > a:nth-child(1)
        Sleep    2
        Wait Until Element Is Visible    //img[@id='Header1_headerimg']
        Go Back
        Clear Element Text    id:textbox1
        Sleep    2
        Input Text    id:textbox1    hello
        Sleep    2
        @{list1}=       Get WebElements    css:div[id='HTML25'] div[class='widget-content']
        FOR    ${element}    IN    @{list1}
            ${text}=    Get Text    ${element}
            Log    ${text}

        END
        Sleep    2
        @{list2}=       Get WebElements    css:div[id='HTML26'] div[class='widget-content']
        FOR    ${element}    IN    @{list2}
        ${text}=    Get Text    ${element}
            Log To Console    ${text}

        END

        Click Element    xpath://input[@id='alert2']
        Sleep    2
        Handle Alert    action=ACCEPT   timeout=2
        Sleep    2
        Choose File     xpath://input[@id='uploadfile']      C:\\Users\\akcha\\Downloads\\sampleFile.jpeg
        Sleep    2
        Click Element    xpath://input[@id='timerButton']
        Sleep    2
        Handle Alert    action=ACCEPT   timeout=2
        Sleep    2
        Click Element    xpath://button[normalize-space()='Check this']
        Sleep    11
        Page Should Contain Checkbox    xpath://input[@id='dte']
        Click Element    xpath://input[@id='dte']
        Input Text    xpath://input[@name='userid']    sharavan
        Input Text    xpath://input[@name='pswrd']    Sharavan123
        Click Element    xpath://input[@value='Login']
        Handle Alert    action=ACCEPT   timeout=2
        Sleep    2
        Click Element    xpath://textarea[@id='ta1']
        Input Text    //textarea[@id='ta1']    i love gandhiji and india because we get laddoo on his birthday
        Sleep    1
        Click Element    xpath://textarea[normalize-space()='The cat was playing in the garden.']
        Input Text    //textarea[normalize-space()='The cat was playing in the garden.']    i love gandhiji and india because we get laddoo on his birthday
        Sleep    1
        Click Element    xpath://input[@id='radio1']
        Sleep    1
        Click Element    xpath://input[@id='alert1']
        Sleep    1
        Handle Alert        action=ACCEPT   timeout=2
        Sleep    2
        Click Element    xpath://input[@id='prompt']
        Sleep    1
        Input Text Into Alert    Namaskara
        Sleep    1

        
        Click Element    xpath://input[@id='confirm']
        Handle Alert        action=ACCEPT       timeout=2
        Close Browser
