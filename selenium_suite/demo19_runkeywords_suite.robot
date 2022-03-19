*** Settings ***
Library    SeleniumLibrary
Test Teardown   Close Browser

#Test Teardown   Run Keyword    Close Browser    AND     Log To Console      hello


*** Test Cases ***
TC1
    #Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://google.com/
    
    @{output}       Run Keyword And Ignore Error    Click Element    xpath=//*[text()='Gmail']
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    
    IF    '${output}[0]' == 'FAIL'
        Log To Console    PASS
    ELSE
         Log To Console    fail
    END
    
    #Run Keyword And Ignore Error    Click Element    xpath=//button[text()='Not Now'
