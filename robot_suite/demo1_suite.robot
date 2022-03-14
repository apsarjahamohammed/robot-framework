*** Test Cases ***
TC1 print My Name
    Log To Console     Apsar
    Log To Console     hello
TC2
    Log To Console     apsar
    Log     hell0
TC3
    ${session_name}     set variable     Robot session
    Log To Console      ${session_name}
    Log To Console      Session name is ${session_name}
# in TC4, store 25 and 26 in ${var1} and var2
TC4
    ${var1}     set variable     25
    ${var2}     set variable     26
    ${result}     Evaluate     ${var1}+${var2}
    Log To Console     ${result}

TC5
    ${radius}   set variable    10
# calculate area of circle and print - 3.14
    ${result}   Evaluate    3.14*${radius}
    Log To Console     ${result}
#TC6

