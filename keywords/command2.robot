*** Settings ***
Resource    ../resources/import.robot
*** Keywords ***
GET Request 
    [Arguments]    ${url}        ${url_path}       ${headers}
     Create Session    mysession     ${url}
     ${response}=       GET On Session    mysession        ${url_path}       headers=${headers}     expected_status=anything