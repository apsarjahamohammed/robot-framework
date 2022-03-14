*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Log To Console     ${CURDIR}
    Log To Console     ${EXECDIR}
    Log To Console     ${OUTPUT_DIR}
    Log To Console     ${TEMPDIR}
    Log To Console     ${TEST_NAME}
    Log To Console     ${SUITE_NAME}

TC2
    Create Dictionary   E:${/}Temp{?}My_Folder
    Create File    E:${/}Temp{/}My_folder${/}notes.txt   apsar

    Copy File    C:\Users\Ansar Jaha\Desktop\M.Tech\INTERNSHIP\solo learn python    C:\Users\Ansar Jaha\Desktop\M.Tech\INTERNSHIP\INTERN LETTER