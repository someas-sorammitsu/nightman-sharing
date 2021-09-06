*** Settings ***
Library    Selenium2Library

*** Keywords ***
Search Input Text
    Open Browser      https://www.youtube.com/            safari
    Maximize Browser Window
    Wait Until Element Is Enabled        xpath://input[@id="search"]
    Input Text        xpath://input[@id="search"]      What I'm wrong?
    Press Keys        xpath://input[@id="search"]      ENTER
    Click Element     xpath://img[@id="img"]
    Sleep     10s
    Close Browser 
OPEN YOUTUBE
    Open Browser      https://www.youtube.com/            chrome
    Maximize Browser Window
    Wait Until Element Is Enabled         xpath://input[@id="search"]
    Input Text                         xpath://input[@id="search"]   លិញជូរមាសបង
    Press Keys         xpath://input[@id="search"]    ENTER
*** Test Cases ***
TC1 Input text
    Search Input Text
TC2 OPEN YOUTUBE
    OPEN YOUTUBE
      
    
