*** Settings ***
Library         SeleniumLibrary
Test Teardown   Close Browser  
*** Variables ***
${URL}      https://www.google.com/
*** Keywords ***
Hello GoogleTest
    Open Browser    ${URL}    headlesschrome
    Wait Until Keyword Succeeds    30s    2s    Input Text      name=q  Test
    Wait Until Keyword Succeeds    30s    2s    Click Element   name=btnK
    Wait Until Keyword Succeeds    30s    2s    Page Should Contain  Test
*** Test Cases ***
Test Basic
    Hello GoogleTest


