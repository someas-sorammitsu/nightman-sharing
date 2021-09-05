*** settings ***
Library     Selenium2Library
*** variables ***
${fast_url}     https://web-fast-dev.sorakh.app/login/
${youtube}      https://www.youtube.com/

*** keywords ***
Login page
    Open Browser       ${youtube}          chrome
*** test cases ***
TC1 Login page fast
    Login page