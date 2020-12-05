*** Settings ***
Documentation  All Keywords related to google Application
...                *Author              :       Niket Shinde*

# framework Libraries
Resource  ../../../framework/rflib/common_keywords.Robot
Resource  page_objects/Challenge2.robot

*** Variables ***


*** Keywords ***
Check leaderboard ATAGTR2020 Table
    [Documentation]    Check leaderboard ATAGTR2020 Table
    ...                *Author              :       Niket Shinde*
    [Arguments]  ${ITR}
    common_keywords.Keyword Setup  ${ITR}
    Challenge2.Open automatahon20 challenge2
    #Challenge2.Verify Home page Loaded for challenge2
    Challenge2.Close PopUp
    ${name_of_com_with_max_point}=  Challenge2.Get Name Of Company With Maximun Point
    ${name_of_first_row}=  Challenge2.Get First Row From Table
    ${bool}=  compare_string  ${name_of_first_row}   ${name_of_com_with_max_point}
    Should Be True  "${bool}" == "True"
    [Teardown]  common_keywords.Keyword Teardown  ${ITR}




