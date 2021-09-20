*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    http://localhost:3000
${path}        company

*** Test Cases ***
TC1 Delete Request
    Create Session    mysession        ${base_url}
    ${response}=        DELETE On Session     mysession        ${path}/6
    Log To Console    ${response.status_code}