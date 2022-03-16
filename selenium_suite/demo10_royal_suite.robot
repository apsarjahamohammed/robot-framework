*** Comments ***
1. Navigate https://www.royalcaribbean.com/account/
2. Click on create an account
3. Enter first name
4. Enter last name
5. Month as April
6. Day as 4
7. year as 1992
8. Choose country -India
9. email - lt@gmail.com
10. Security question - what elementary school did you go to?
11. Answer
12. Click checkbox
13. Validate Password is required. text

*** Settings ***
Library     SeleniumLibrary

#Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up Password Error Check
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    Set Selenium Speed    1s

    Go To    url=https://www.royalcaribbean.com/account/

    Click Element    link=Create an account
    Input Text    xpath=//input[@data-placeholder="First name/Given name"]    apsar

    Input Text    xpath=//input[@data-placeholder="Last name/Surname"]    jaha

    Click Element    xpath=//span[contains(text(),'Month')]

    Click Element    xpath=//span[contains(text(),'April')]

    Click Element    xpath=//span[contains(text(),'Day')]
    Scroll Element Into View    xpath=//span[contains(text(),'15')]

    Click Element    xpath=//span[contains(text(),'15')]
    Input Text    xpath=//input[@data-placeholder="Year"]    1998

    Click Element   xpath=//span[text()='Country/Region of residence']
    #Scroll Element Into View     xpath=//span[contains(text(),'India')]
    Click Element    xpath=//span[contains(text(),' India ')]
    Input Text    xpath=//input[@data-placeholder='Email address']    lt@gmail.com

    Click Element   xpath=//span[text()='Select one security question']
    Scroll Element Into View     xpath=//span[contains(text(),' What elementary school did you go to? ')]

    Click Element    xpath=//span[contains(text(),' What elementary school did you go to? ')]
    Input Text    xpath=//input[@data-placeholder='Answer']   Sama

    Click Element    //input[@type="checkbox"]/..
    Click Element   (//button[normalize-space()='Done'])
    Element Text Should Be    //span[contains(text(),'Password is required.')]    Password is required.

    Sleep   10s






