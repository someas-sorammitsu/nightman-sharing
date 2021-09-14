*** settings ***
Library     RequestsLibrary
Library     Collections
*** variables ***
${base_url}     http://localhost:3000/
${path}         /staff

*** test cases ***
TC1
    Create Session      mysession       ${base_url}
    ${data}=        Create Dictionary       name=Atuy   phone=0987654321
    ${header}=      Create Dictionary     Content-Type=application/json
    ${response}=    Post On Session     mysession       ${path}     json=${data}   expected_status=anything
    Log to console      ${response}
#    Log to console      ${response.content}
   Status Should Be     201      ${response}
   Dictionary Should Contain Key        ${response.json()}      name
   Dictionary Should Contain Key        ${response.json()}      phone
   Dictionary Should Contain Key        ${response.json()}      id