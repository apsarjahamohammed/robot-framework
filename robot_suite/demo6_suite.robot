*** Variables ***

&{PERSONAL_DETAILS}     firstname=apsar     lastname=jaha     mobile=1234567890

*** Test Cases ***
TC1
    Log To Console    ${PERSONAL_DETAILS}
    Log To Console    ${PERSONAL_DETAILS}[firstname]
    Log To Console    ${PERSONAL_DETAILS}[lastname]

TC2
    &{emp_dict}     Create Dictionary   empName=apsar   company=LTS
    Log To Console    ${emp_dict}
    Log To Console    ${emp_dict}[empName]

TC3
    &{student_dict}     Create Dictionary   studentId=1001      StudentName=John        Percentage=72.2       mailId=john@gmail.com
    Log To Console    ${student_dict}