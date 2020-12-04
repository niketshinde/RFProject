*** Settings ***
Documentation  All page object related to Welcome page fo google

Library  SeleniumLibrary

# framework Libraries
Resource  ../../../../framework/rflib/common_keywords.Robot

# google pages



*** Variables ***

#Objects

${UsernameInput_HomePage}  name=Username
${PasswordInput_HomePage}  xpath=//input[@name='Password']
${LoginButton_HomePage}  Login
${SearchInput_HomePage}  //input[@title='Search']
${SearchButton_HomePage}  //div[@id='searchform']//div[@class='FPdoLc tfB0Bf']//input[@value='Google Search']


*** Keywords ***


#Object Actions
Open Google Search
    [Documentation]
    go to  ${ENVIRONMENT['APPLICATION1_URL']}


Fill "Username" Field
    [Documentation]
    [Arguments]  ${Username}
    Input Text  ${UsernameInput_LoginPage}  ${Username}

Fill "Password" Field
    [Documentation]
    [Arguments]  ${Password}
    input password  ${PasswordInput_LoginPage}  ${Password}

Click "Login" Button
    [Documentation]
    Click Button    ${LoginButton_LoginPage}

Enter Search Text
    [Documentation]
    [Arguments]  ${text}
    input text  ${SearchInput_HomePage}  ${text}

Click on Google Search Button
    [Documentation]
    ...                Author              :       Niket Shinde
    Click Button    ${SearchButton_HomePage}

#Keywords
Verify Home page Loaded
    [Documentation]
    ...                Author              :       Niket Shinde
    Wait Until Page Contains Element  ${SearchButton_HomePage}  timeout=${TIMEOUT_WAIT}







