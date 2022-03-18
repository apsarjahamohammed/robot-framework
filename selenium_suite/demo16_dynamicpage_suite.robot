*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://phptravels.net/hotels
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@role='searchbox']    chennai
    Sleep    1s
    Click Element    xpath=//li[text()='Chennai,India']
#    Press Keys      None        ARROW_DOWN
#    Press Keys      None        ENTER

#    Input Text    id=checkin    31-03-2022
    Execute Javascript      document.querySelector('#checkin').value='25-03-2022'
    Execute Javascript      document.querySelector('[id=checkout]').value='28-03-2022'

    Click Element    xpath=//p[contains(text(),'Travellers')]

    #room as 2, adult 4
    Click Element    xpath=//i[@class='la la-plus']

    Click Element    xpath=(//i[@class='la la-plus'])[3]
    Click Element    xpath=(//i[@class='la la-plus'])[3]

    Select From List By Label    id=nationality     India

    Click Element    xpath=//span[contains(text(),'Search')]

    ${inner_text}     Get Text    xpath=//div[@class='breadcrumb-content']
    Log To Console    ${inner_text}

    Element Should Contain    xpath=//div[@class='breadcrumb-content']    Chennai
    Element Should Contain    xpath=//div[@class='breadcrumb-content']    25-03-2022
    Element Should Contain    xpath=//div[@class='breadcrumb-content']    28-03-2022





