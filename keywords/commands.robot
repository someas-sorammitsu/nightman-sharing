*** Settings ***
Resource        ../resources/import.robot
*** Variables ***
${base_url}=    http://thetestingworldapi.com
${path}=        api/addresses
*** Keywords ***
# Command Keywords Guide
GET Request 
    [Arguments]    ${url}        ${url_path}       ${headers}
     Create Session    mysession     ${url}
     ${response}=       GET On Session    mysession        ${url_path}       headers=${headers}     expected_status=anything
    #  Log To Console  ${response}
    #  Log To Console    ${response.content}

GET Request No Session
    [Arguments]     ${url}        ${url_path}       ${headers}
     ${response}=       GET      ${url}/${url_path}       headers=${headers}     expected_status=anything

## API Content   Guide

Get API Request
    ${headers}=     Create Dictionary
    ...     Accept=application/json
    ...     Content-Type=application/json
    ${response}=      GET Request           ${base_url}      ${path}/1      ${headers}
    Log To Console     ${response}
  
   


Get API Request No Session
    ${headers}=     Create Dictionary
    ...     Accept=application/json
    ...     Content-Type=application/json
    ${response}=      GET Request No Session        ${base_url}      ${path}/1      ${headers}
    # [Return]      ${response}

    
*** Test Cases ***
TC1 Get Request
    Get API Request
    # Get API Request No Session