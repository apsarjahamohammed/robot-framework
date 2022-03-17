*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed      1s
    Go To    url=https://phptravels.net/
    Click Element   xpath=//span[text()=' flights']
    Select From List By Label    //select[@id="flight_type"]    Business
    Input Text    xpath=//input[@placeholder="Flying From"]    Los Angeles
    Click Element    xpath=//strong[text()=' Los Angeles Intl']

    Input Text    xpath=//input[@placeholder="To Destination"]    Dallas
    Click Element    //strong[normalize-space()='Dallas Love Fld']

    Input Text    (//input[@id='departure'])[1]    30-12-2021

    Click Element    //span[@class='guest_flights d-block text-center']
    Click Element    //div[@class='dropdown-item adult_qty']//i[@class='la la-plus']
    Click Element    //div[@class='dropdown-item adult_qty']//i[@class='la la-plus']
    Click Element    //div[@class='dropdown-item adult_qty']//i[@class='la la-plus']

    Click Element    //div[@class='dropdown-item child_qty']//i[@class='la la-plus']
    Click Element    //div[@class='dropdown-item child_qty']//i[@class='la la-plus']

    Click Element    //button[@id="flights-search"]