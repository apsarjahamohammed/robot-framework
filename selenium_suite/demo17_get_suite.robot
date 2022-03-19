*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    #Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=url=https://opensource-demo.orangehrmlive.com/

    Element Text Should Be    xpath=//p[contains(text(),'most')]    The most popular open-source Electronic Health Record and Medical Practice Management solution.
    Element Should Contain    xpath=//p[contains(text(),'most')]    open-source Electronic Record

    Page Should Contain    open-source Electronic Health Record
    Title Should Be    OpenEMR Login
    
    Element Attribute Value Should Be    id=authUser    placeholder    Username
    Element Attribute Value Should Be    partial livk=Licensing    herf    http://demo.openemr.io/b/openemr/interface/login/login.php?site=default


TC2
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=url=https://opensource-demo.orangehrmlive.com/
    ${text}     Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${text}
    Should Be Equal    ${text}    The most popular open-source Electronic Health Record and Medical Practice Management solution.

    ${placeholder_value}    Get Element Attribute    id=authUSer    placeholder
    Log To Console    ${placeholder_value}