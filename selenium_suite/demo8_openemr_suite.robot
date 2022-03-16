*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   https://demo.openemr.io/b/openemr
    Input Text      id=authUser     admin
    Input Password    id=clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']     English (Indian)
    Click Element    xpath=//button[contains(text(),'Login')]
    Click Element    xpath=//div[contains(text(),'Messages')]
    Select Frame    xpath=//iframe[@name='msg']
    Click Element    partial link=Add New
    Input Text    id=note    Hello
    Select From List By Label    id=form_note_type      Pharmacy
    Select From List By Label    id=form_message_status     Forwarded
    Select From List By Index    id=users   1
    Click Element    id=newnote
    Element Text Should be    //span[@id='error_reply_to']     Please choose a patient
    Unselect Frame
    [Teardown]      Close Browser