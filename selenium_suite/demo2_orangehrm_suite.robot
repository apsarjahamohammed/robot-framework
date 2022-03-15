*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://www.goto.com/meeting/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Button    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    id=first-name    John
    Input Text    id=last-name    wick
    Input Text    id=login__email    john@gmail.com
    Input Text    id=login__password    johnwick123
    Click Element    id=CompanySize
    Select From List By Value    id=CompanySize     10 - 99
    Click Button    xpath=//*[@id="app"]/section/div[2]/form/section/div/div/div[7]/button