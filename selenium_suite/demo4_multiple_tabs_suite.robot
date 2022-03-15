*** Settings ***
Library      SeleniumLibrary

*** Test Cases ***
TC1
    #Append To Environment Variable     path     ${EXECDIR}${/}driver${/}
    Open Browser      browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    Go To    url=https://www.db4free.net/
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window       phpMyAdmin
    Input Text    id=input_username    Admin
    Input Text    id=input_password    admin123
    #Click Element    xpath=//input[@type='submit']
    Click Element    id=input_go
    #Element Should Contain    xpath=//div[@class='alert alert-danger']    Access denied for user
    Element Should Contain    xpath=//div[contains(text(),'Access')]    Access denied for user
    [Teardown]      Close Browser


#1.Navigate to https://www.db4free.net/
#2.Click on phpMyAdmin
#3.Enter username as admin
#4.Enter password as admin123
#5.Click on log in
#6.user should see text as "Acess denied for use"
 #Element should Contain locator expected


