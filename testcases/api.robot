*** Settings ***
Library    RequestsLibrary
Library    Collections
*** Keywords ***
Get Request
    [Tags]    get
    ${resp}=    GET    ${HTTP_LOCAL_SERVER}/anything
    Status Should Be    OK    ${resp}
