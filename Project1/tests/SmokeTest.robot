*** Settings ***
Documentation  All Test related to Google App
Metadata  Version  1.0
Metadata  Executed By  %{USERNAME}
#Metadata  Executed At    %{HOST}
Metadata  environment  ${ENV}
Force Tags      Force Tags
Default Tags    Smoke Test

# framework Library
Resource  ../../framework/rflib/common_keywords.Robot

# Keywords Files
Resource  ../apps/application1/application1_keywords.robot

# Configure Test Run
Suite Setup  Before Suite Start
Test Setup  Before Web Test Start
Test Teardown  After Web Test End
Suite Teardown  After Suite End
#Test Timeout  20s


*** Test Cases ***
# Run Commod : robot -d results tests/SmokeTest.robot
Test Google Search
    [Documentation]    Test Google Search, *Author:Niket*
    [Tags]  GoogleTest
    appplication1_keywords.Perform Google Search  ITR1

Test Google Search2
    [Documentation]    Test Google Search, *Author:Niket*
    [Tags]  GoogleTest
    appplication1_keywords.Check I'm Feeling Lucky functionality  ITR1



