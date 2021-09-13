*** Settings ***
Library    Selenium2Library
*** Keywords ***
Login to NCS
    Open Browser        https://web-ncs-dev.sorakh.app/auth/login       chrome
    Maximize Browser Window
    Wait Until Element Is Enabled       //div[@class="text-h6"]
    Element Text Should Be         xpath://div[@class="text-h6"]        Welcome
    Element Text Should Be         xpath://div[@class="text-h5"]        Check Clearing System
    Input Text        xpath://input[@name="username"]     nbc-admin-samak
    Input Password      xpath://input[@name="password"]     aA12345@
    Press Keys          xpath://input[@name="password"]     ENTER
    Sleep   7s
    Close Browser
NCS Dashboard
    Open Browser        https://web-ncs-dev.sorakh.app/auth/login       chrome
    Maximize Browser Window
    Input Text           xpath://input[@name="username"]     nbc-admin-samak
    Input Password      xpath://input[@name="password"]     aA12345@
    Press Keys          xpath://input[@name="password"]     ENTER
    Sleep   5s
    Wait Until Element Is Enabled       xpath://div[@class="v-list-item__title"]
    Element Text Should Be              xpath://div[@class="v-list-item__title"]        NBC
    Wait Until Element Is Enabled       xpath://div[@class="v-list-item__content"]
    Element Text Should Be             xpath://div[@class="v-list-item__title"]    NBC
    Element Text Should Be             xpath://div[@class="v-list-item__subtitle"]     nbc-admin-samak
    Wait Until Element Is Enabled        xpath://div[@class="v-list-item__title"]
    Click Element                       xpath://div[@class="v-list-item__subtitle"]
    Sleep   5s
#    Wait Until Element Is Enabled        xpath://div[@class="v-list-item__title"]
    Click Element     xpath://div[@class="v-list-item__title"]

*** *** Test Cases ***
TC1 Login
    Login to NCS
TC2 Dashboard
    NCS Dashboard