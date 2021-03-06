*** Settings ***
Library    Collections
Library    SeleniumLibrary

*** Variables ***
${MY_NAME}      apsar
@{COLORS}       red   green   yellow    pink

*** Test Cases ***

TC1
    Set Local Variable    ${name}   apsar
    Log To Console    ${name}

    ${val}      Set Variable    apsar
    Log To Console    ${name}
TC2
    Log To Console    ${MY_NAME}
    
TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    ${count}    Get Length      ${COLORS}
    Log To Console    ${count}
TC4
    @{fruits}   Create List     apple   banana  mango   pineapple
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]
    Remove Values From List    ${fruits}    mango
    Log To Console    ${fruits}
    
TC5
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}
    
    FOR    ${i}    IN RANGE    0    4    1
        Log To Console    ${i}
    END

TC6
    FOR    ${color}    IN    @{COLORS}
        Log To Console    ${color}

    END