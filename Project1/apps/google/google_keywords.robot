*** Settings ***
Documentation  All Keywords related to google Application
...                *Author              :       Niket Shinde*

# framework Libraries
Resource  ../../../framework/rflib/common_keywords.Robot
Resource  page_objects/google_search.robot

*** Variables ***



*** Keywords ***

Perform Google Search
    [Documentation]    Google Search
    ...                *Author              :       Niket Shinde*
    [Arguments]  ${ITR}
    common_keywords.Keyword Setup  ${ITR}
    google_search.Open Google Search
    google_search.Verify Home page Loaded
    google_search.Enter Search Text  ${DATA_DICTIONARY['Text1']}
    google_search.Click on Google Search Button
    [Teardown]  common_keywords.Keyword Teardown  ${ITR}