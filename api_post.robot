*** Settings ***
Library    RequestsLibrary

*** Variable ***
${base_url}       http://localhost:3000
${path}            company
*** Test Cases ***
TC1 Post request
    Create Session        mysession        ${base_url} 
    ${data}=    Create Dictionary    name=vannak KH    location=PP
    ${header}=    Create Dictionary        Content-Type=application/json
    ${response}=    Post On Session    mysession    ${path}    json=${data}        expected_status=anything
    Log To Console        ${response.status_code}
    Log To Console        ${response.content}