*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://www.goto.com/meeting/      browser=chrome        #executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    id=truste-consent-button
    Click Element    link=Get a Demo
    Input Text  xpath=//input[@data-sc-field-name='firstName']     apsar
    Input Text  xpath=//input[@data-sc-field-name='lastName']     jaha
    Input Text  xpath=//input[@data-sc-field-name='email']     apsar@gmail.com
    Input Text  xpath=//input[@data-sc-field-name='phone']     123456
    Select From List By Label     xpath=//select[@data-sc-field-name='employees']      10 - 99
    Click Element    xpath=//input[@type='submit']
    [Teardown]      Close Browser



   # Input Text     id=last-name    wick
   # Input Text    id=login__email    john@gmail.com
   # Input Text    id=login__password    johnwick123
   # Click Element    id=CompanySize
   # Select From List By Value    id=CompanySize     10 - 99
   # Click Button    xpath=//*[@id="app"]/section/div[2]/form/section/div/div/div[7]/button

