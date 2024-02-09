*** Settings ***
Library     SeleniumLibrary

Test Setup     Setup Browser   edge
Test Teardown      Close Browser

*** Keywords ***
Setup Browser
    [Arguments]     ${browser_name}
    Open Browser   browser=${browser_name}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s

*** Test Cases ***
TC1 FB Login
#    Setup Browser   chrome
#    Open Browser   browser=chrome
#    Maximize Browser Window
#    Set Selenium Implicit Wait    10s
    Go To    url=https://www.facebook.com/
    Click Element    xpath=//button[text()='Allow all cookies']
    Input Text    locator=id=email    text=hello12344444@gmail.com
    Input Password    id=pass    pass
    Click Element    name=login

TC2 FB SignUP
#    Open Browser   browser=chrome
#    Maximize Browser Window
#    Set Selenium Implicit Wait    10s
    Go To    url=https://www.facebook.com/
    Click Element    xpath=//button[text()='Allow all cookies']
    Click Element    link=Create new account
    Input Text    name=firstname    John
    Select From List By Label    id=day     20

TC3 Tabs
#    Open Browser   browser=chrome
#    Maximize Browser Window
#    Set Selenium Implicit Wait    10s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    John
    Input Password    id=input_password    admin122
    Click Element    id=input_go
    Element Should Contain    id=pma_errors    Access denied for user
#    [Teardown]      Close Browser

TC4 Frame
#    Open Browser   browser=chrome
#    Maximize Browser Window
#    Set Selenium Implicit Wait    10s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    //frame[@name='login_page']
    Input Text    name=fldLoginUserId   john123
    Click Element    link=CONTINUE
    Unselect Frame
#    [Teardown]      Close Browser
    
    
    