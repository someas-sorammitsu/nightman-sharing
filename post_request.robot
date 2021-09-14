*** settings ***
Library     RequestsLibrary
Library     Collections
*** variables ***
${base_url}             http://localhost:3000
${path}          company
*** test cases ***

TC1
    Create Session      mysession         ${base_url}
    ${data}=        Create Dictionary     name=Hellooo    location=CCC
    ${header}=     Create Dictionary      Content-Type=application/json
    ${response}=   Post ON Session     mysession     ${path}         json=${data}  expected_status=anything