*** Settings ***
Library      SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    #Append To Environment Variable     path     ${EXECDIR}${/}driver${/}
    Open Browser      browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    Go To    url=https://www.medibuddy.in/
    Click Button    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName     Apsar
    Input Text    id=getInTouchEmail     Apsar@gmail.com
    Input Text    id=getInTouchMobile     123456
    Input Text    id=getInTouchDesigination     employee
    Input Text    id=getInTouchEmpCount     1
    Close Window
