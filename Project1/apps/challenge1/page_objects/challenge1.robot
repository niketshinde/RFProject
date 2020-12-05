*** Settings ***
Documentation  All page object related to Welcome page fo google

Library  SeleniumLibrary

# framework Libraries
Resource  ../../../../framework/rflib/common_keywords.Robot

# challenge2 pages



*** Variables ***

#Objects

${iframe_HomePage}

${UsernameInput_HomePage}  name=Username
${PasswordInput_HomePage}  xpath=//input[@name='Password']
${LoginButton_HomePage}  Login
${SearchInput_HomePage}  //input[@title='Search']
${SearchButton_HomePage}  //div[@id='searchform']//div[@class='FPdoLc tfB0Bf']//input[@value='Google Search']
${LuckySubmit_HomePage}   custom://input[@class="RNmpXc1"]$$//input[@name="btnI"]

*** Keywords ***


#Object Actions
Open automatahon20 challenge1
    [Documentation]
    go to  ${ENVIRONMENT['APPLICATION1_URL']}


