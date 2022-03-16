*** Settings ***
Library     SeleniumLibrary

#Test Teardown       Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To   url=https://www.google.com/
    ${title}   Get Title
    Log To Console    ${title}

    ${url}      Get Location
    Log To Console    ${url}

    ${loc}      Get Location
    Log To Console    ${loc}
    Press Keys    name=q        apsar

    Press Keys    None    ARROW_DOWN

    Press Keys    None   ARROW_DOWN

    Press Keys    None    ARROW_DOWN

    Press Keys    None    ENTER
TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=https://www.myntra.com/
    Mouse Over    xpath=//span[text()='Profile']
    Click Element    xpath=//a[text()="login / Signup"]


TC3
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=https://nasscom.in/
    Mouse Over    xpath=//a[text()='Membership']
    Click Element    xpath=//a[text()="Members Listing"]

