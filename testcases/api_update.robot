*** settings ***
Library     RequestsLibrary
Library    Collections
*** variables ***
${Base_url}          http://localhost:3000
${path}              company

*** test cases ***
TC1 Update Info
    Create Session    session_update        ${Base_url} 
    ${data}=    Create Dictionary       name=Bad Man3   phone=0987654321
    ${header}=    Create Dictionary    Content-Type=application/json
    ${reponse}=    PUT On Session    session_update        ${path}     json=${data}        expected_status=anything
    Log    ${reponse}
    Log To Console    ${reponse.status_code}
    Log To Console    ${reponse.content}
