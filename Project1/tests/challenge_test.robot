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
Resource  ../apps/challenge2/challenge2_keywords.robot
Resource  ../apps/challenge1/challenge1_keywords.robot

# Configure Test Run
Suite Setup  Before Suite Start
Test Setup  Before Web Test Start
Test Teardown  After Web Test End
Suite Teardown  After Suite End
#Test Timeout  20s


*** Test Cases ***
# Run Commod : robot -d results tests/SmokeTest.robot

Challenge 2
    [Documentation]    Test Google Search, *Author:Niket*
    [Tags]  GoogleTest
    challenge2_keywords.Check leaderboard ATAGTR2020 Table  ITR1



