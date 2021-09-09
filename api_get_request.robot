*** settings ***
Library     RequestsLibrary
*** variables ***
${Base_url}         http://thetestingworldapi.com/

*** test cases ***
TC1
    Create Session       Get Request    ${Base_url}
    ${respone}=         GET On Session       Get Request    api/studentsDetails
    Log to console      ${respone}