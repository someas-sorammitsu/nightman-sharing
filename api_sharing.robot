*** settings ***
Library     RequestsLibrary
*** variables ***
${base_url}     http://localhost:3000/
*** test cases ***
TC1 api get request
    Create Session      get api     ${base_url}
    Log to console      ${base_url}
    ${Get_respone}=     Get On Session      get api    company/27
    Log to console      ${Get_respone.content}
