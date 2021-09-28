*** settings ***
Library         RequestsLibrary

*** variables ***
${mock_url}     http://localhost:3000
${url_path}         company
*** keywords ***
Create POST Request with Json Data
    [Arguments]     ${url}      ${url_path}     ${body}     ${headers}
    ${resp}=    POST        ${url}/${url_path}         data=${body}        headers=${headers}      #expected_status=anything
    [Return]      ${resp}


sharing
    ${headers}=     Create Dictionary
    ...       Content-Type=application/json
    ${json}      Catenate
    ...		{
    ...		   "name": "Friend",
    ...        "location": "USA"
    ...		}
    
    log    ${json}
    ${response}=     Create POST Request with Json Data       ${mock_url}          ${url_path}         ${json}     ${headers}
    log    ${response.json()}
    [Return]       ${response}

*** test cases ***
TC1
    sharing