*** Setting ***
Library    SeleniumLibrary



*** Variables ***
${Web Thingsboard}    https://demo.thingsboard.io/login
${Chrome}    Chrome



*** Keywords ***
Open Google
    Open Browser    ${Web Thingsboard}    ${Chrome}

FILL with Email and Password
    [Arguments]    ${Email}    ${Password}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled    xpath=//input[@id='username-input']
    Input Text    xpath=//input[@id='username-input']    ${Email}
    Wait Until Element Is Enabled    xpath=//input[@id='password-input']
    Input Text    xpath=//input[@id='password-input']    ${Password}
    Click Element    xpath=//span[normalize-space()='Login']

Login with Email and Password invalid credentials
    [Arguments]    ${Email}    ${Password}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled    xpath=//input[@id='username-input']
    Input Text    xpath=//input[@id='username-input']    ${Email}
    Wait Until Element Is Enabled    xpath=//input[@id='password-input']
    Input Text    xpath=//input[@id='password-input']    ${Password}
    Click Element    xpath=//span[normalize-space()='Login']
    Sleep    5s
    