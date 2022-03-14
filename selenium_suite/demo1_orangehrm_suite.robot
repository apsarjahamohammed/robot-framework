*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

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
    Open Browser    url=https://opensource-demo.orangehrmlive.com/     browser=chrome
    Maxmize Brower Window
    Set Selenium Implict Wait   20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    link=Logout

    Click Element      id=menu_pim_viewMyDetails
    Click Element       partial link=Emergency Contacts
    Click Element       id=btnAddContact
    Input Text      id=emgcontacts[name]       Sat
    Input Text    id=emgcontacts[relationship]      Brother
    Input Text      id=emgcontacts[homePhone]       1234
    Input Text      id=emgcontacts[mobilePhone]     5678
    Input Text      id=emgcontacts[workPhone]       7896
    Click Element   id=btnSaveEContact

