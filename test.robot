*** Settings ***
Library    Selenium2Library

*** Keywords ***
Search Input Text
    Open Browser      https://www.youtube.com/            chrome
    Wait Until Element Is Enabled        xpath://input[@id="search"]
    Input Text        xpath://input[@id="search"]      What I'm wrong?
    Press Keys        xpath://input[@id="search"]      ENTER
    Click Element     xpath://img[@id="img"]
    Sleep     5s
    Close Browser 

*** Test Cases ***
TC1 Input text
    Search Input Text
      
    
