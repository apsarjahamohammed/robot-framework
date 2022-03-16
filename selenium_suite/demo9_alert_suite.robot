*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser
*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt="Go"]
    #/html/body/form/center/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/a/img
    ${alt}      Handle Alert    action=ACCEPT       timeout=50s
    Log To Console    ${alt}
    Should Be Equal    ${alt}    Customer ID ${SPACE}cannot be left blank.

TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    link=Calculate Membership Fee
    ${alt}      Handle Alert    action=ACCEPT       timeout=50s
    Log To Console    ${alt}
    Should Be Equal    ${alt}    Please enter amount in digit and greater than zero.

