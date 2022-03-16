*** Settings ***
Library     SeleniumLibrary

#Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up Password Error Check
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To   url=https://www.google.com
    ${title}   Get Title
    Log To Console    ${title}

    ${url}      Get Location
    Log To Console    ${url}

    Press Keys      name=q      hello world
    Press Keys      None        ARROW-DOWN
    Press Keys      None        ARROW-DOWN
    Press Keys      None        ARROW-DOWN
    Press Keys      None        ENTER