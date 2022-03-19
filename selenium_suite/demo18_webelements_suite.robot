*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Test Teardown   Close Browser

*** Test Cases ***
TC1
    #Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://google.com/
    ${link_count}   Get Element Count    tag=a
    Log To Console    ${link_count}

    @{elements}     Get WebElements    tag=a
    Log To Console    ${elements}

    ${text}     Get Text    ${elements}[0]
    Log To Console    ${text}

    FOR    ${i}    IN RANGE    0    25    1
        ${text}     Get Text    ${elements}[${i}]
        Log To Console    ${i}
    END
    
    FOR    ${element}    IN    @{elements}
        ${text}     Get Text    ${element}
        Log To Console    ${text}
    END








