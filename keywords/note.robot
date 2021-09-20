*** Settings ***
Resource        ../resources/import.robot
*** Variables ***
${base}=           http://139.59.118.77:8765/auth-service
${path}=           api/v1/login

*** Test Cases ***
TC1 LOGIN SYSTEM
    LOGIN System          ola         aA12345@    #ncd-admin loglin
*** Keywords ***

Create POST Request with Json Data
    [Arguments]     ${url}      ${url_path}     ${body}     ${headers}
    # Create Session  session         ${url}      # how to create post request with json data, # " Robot officail was change some document keywords."
    ${resp}=    POST        ${url}/${url_path}         data=${body}        headers=${headers}      #expected_status=anything
    [Return]      ${resp}



API LOGIN       # This api for for login to NBC
    [Arguments]
     ...        ${username}
     ...        ${password}
    ${headers}=     Create Dictionary
    ...         Content-Type=application/json
    ...         Charset=UTF-8
    ${json}     Catenate
    ...     {
    ...     "username": "${username}",
    ...     "password": "${password}
    ...     }
    Log    ${json}
    ${response}=    Create POST Request with Json Data      ${base}        ${path}       ${json}     ${headers}
    Log ${response}
    [Return]        ${response}

LOGIN System        # Login to ncd
     [Arguments]
     ...        ${username}
     ...        ${password}
     ${resp}=    API LOGIN
     ...        ${username}
     ...        ${password}
     Log to Console    ${resp}
     Should Be Equal As Integers        ${resp.status_code}     200      Message Login[{${resp.status_code}]
