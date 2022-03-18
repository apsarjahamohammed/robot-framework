*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Library    DatabaseLibrary

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/     browser=chrome
    Maxmize Brower Window
    Set Selenium Implict Wait 20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    link=Logout

TC2
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    Apsar jaha
    Input Text    id=emgcontacts_relationship    Brother
    Input Text    id=emgcontacts_homePhone    1234
    Click Element    id=btnSaveEContact
    #Validate
    Table Should Contain    id=emgcontact_list    Apsar jaha
    Table Should Contain    id=emgcontact_list    1234
    Row Count Is Equal To X    select * from Products where product_id=651    1

