*** Settings ***
Documentation  All page object related to Welcome page fo google

Library  SeleniumLibrary
Library  Collections


# framework Libraries
Resource  ../../../../framework/rflib/common_keywords.Robot

# challenge2 pages



*** Variables ***

#Objects

${CloseImage_HomePage}  css=i[class='eicon-close']
${Div_Popup}  //div[@class='dialog-message dialog-lightbox-message']
${Table_Leaderboard}  //table[@class='ea-advanced-data-table ea-advanced-data-table-tablepress ea-advanced-data-table-ff4d3e6 ea-advanced-data-table-sortable ea-advanced-data-table-paginated ea-advanced-data-table-searchable']
${AllRow}  //table[@class='ea-advanced-data-table ea-advanced-data-table-tablepress ea-advanced-data-table-ff4d3e6 ea-advanced-data-table-sortable ea-advanced-data-table-paginated ea-advanced-data-table-searchable']//tr

*** Keywords ***
#Object Actions
Open automatahon20 challenge2
    [Documentation]
    go to  ${ENVIRONMENT['CHALLENGE2_URL']}

Close PopUp
    [Documentation]
    ${Result}=   Page Should Contain Element  ${CloseImage_HomePage}
    Run Keyword If  '${Result}'=='PASS'  Click Button    ${CloseImage_HomePage}

Get Name Of Company With Maximun Point
    @{text}=   Create List  test
    @{list}=  Get WebElements   ${AllRow}
    FOR    ${item}    IN    @{list}
        ${temp}=  Get Text  ${item}
        log  ${temp}
        Append To List  ${text}   ${temp}
    END
    ${com_name} =   get_company_name_with_maximum_point  @{text}
    [Return]  ${com_name}

Get First Row From Table
    @{text}=   Create List  test
    @{list}=  Get WebElements   ${AllRow}
    FOR    ${item}    IN    @{list}
        ${temp}=  Get Text  ${item}
        log  ${temp}
        Append To List  ${text}   ${temp}
    END
    ${com_name} =   get_name_of_company  @{text}
    [Return]  ${com_name}


#Keywords
Verify Home page Loaded for challenge2
    [Documentation]
    ...                Author              :       Niket Shinde
    Wait Until Page Contains Element  ${Div_Message}  timeout=${TIMEOUT_WAIT}
    Wait Until Page Contains Element  ${CloseImage_HomePage}  timeout=${TIMEOUT_WAIT}






