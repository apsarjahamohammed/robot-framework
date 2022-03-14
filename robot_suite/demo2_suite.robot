*** Settings ***
LIbrary     DateTime

*** Test Cases ***
TC1
    ${current_date}     Get Current Date
    Log To Console      ${current_data}
    Log     ${current_data}

