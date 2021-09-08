*** Settings ***
Library    Selenium2Library
*** Keywords ***
Login to NCS
    Open Browser        https://web-ncs-dev.sorakh.app/auth/login       chrome
    Maximize Browser Window
    Input Text        xpath://input[@name="username"]     nbc-admin-samak
    Input Password      xpath://input[@name="password"]     aA12345@
    Press Keys          xpath://input[@name="password"]     ENTER
*** *** Test Cases ***
TC1 Login
    Login to NCS