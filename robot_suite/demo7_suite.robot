*** Settings ***
Library     ../python_file/my_script.py

*** Test Cases ***
TC1
    ${my_name}      Get My Name
    Log To Console    ${my_name}
    ${output}       Add Two Number    50    499
    Log To Console    ${output}
