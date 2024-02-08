*** Settings ***
Library     DateTime

*** Variables ***
${MY_NAME}      Balaji
${MOBILE}      34343434434343

*** Test Cases ***
TC1
    Log To Console      message=balaji dinakaran
    Log To Console    Welcome to robot session
    Log To Console    ${MY_NAME}

TC2
    Log To Console    ${MY_NAME}
    Log To Console    ${MOBILE}
    ${value}    Set Variable  45
    Log To Console    ${value}

TC3
    ${radius}   Set Variable    10
    #calculate area of circle and print
    ${res}      Evaluate    3.14*${radius}*${radius}
    Log To Console    ${res}

TC4
    ${date}     Get Current Date
    Log To Console    ${date}
    Log    ${date}



