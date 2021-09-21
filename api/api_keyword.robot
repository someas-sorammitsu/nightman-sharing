*** Settings ***
Resource    ../keywords/command2.robot
*** Keywords ***
Get API Request
    ${headers}=     Create Dictionary
    ...     Accept=application/json
    ...     Content-Type=application/json
    ${response}=      GET Request           ${base_url}      ${path}      ${headers}

  