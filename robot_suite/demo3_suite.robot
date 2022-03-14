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

    Copy File    E:${/}Temp${/}My_Folders${/}notes.txt    E:{/}Temp${/}notes_copy.txt
  Sleep    10s
    Remove File    E:${/}Temp${/}My_Folder${/}notes.txt
    Create Dictionary   E:${/}Temp${/}My_Folder