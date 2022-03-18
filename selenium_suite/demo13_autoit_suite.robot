*** Settings ***
Library     SeleniumLibrary
Library     AutoItLibrary

*** Test Cases ***
TC1
    #Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser      browser=chrome        executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=http://john:john123@softwaretesting/

TC2
    #Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser      browser=chrome        executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://softwaretesting.com
    Sleep    5s
    Send    admin
    Send    {TAB}
    Send    pass123
    Send    {TAB}

