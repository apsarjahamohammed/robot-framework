*** Settings ***
Library      SeleniumLibrary

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
    Input Text    id=getInTouchMobile     1234567890
    Input Text    id=getInTouchDesignation     employee
    Input Text    id=getInTouchEmpCount     1
    Click Element    xpath=//button[text()='Get In Touch']
    Element Text Should Be   xpath=//div[contains(text(),'digits')     Mobile Number should be 10 digits

    [Teardown]  close Window
