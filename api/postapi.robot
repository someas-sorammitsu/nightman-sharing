*** Settings ***
Library    RequestsLibrary
# Library    Collections
*** Variables ***
${bases_url}     http://localhost:3000
${path}          /company

*** Test Cases ***
TC1 POST Request
    Create Session    mysession        ${bases_url}
    ${data}=    Create Dictionary   name=Test2    location=PP 
    ${header}=    Create Dictionary    Content-Type=application/json
    ${response}=    Post On Session     mysession          ${path}        json=${data}  expected_status=anything
    Log to console        ${response.content}
    