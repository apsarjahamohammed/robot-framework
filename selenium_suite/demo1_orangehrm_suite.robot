*** Settings ***
Library     seleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}chromedriver.exe
Open Browser    url=https://opensource-demo.orangehrmlive.com/     browser=chrome