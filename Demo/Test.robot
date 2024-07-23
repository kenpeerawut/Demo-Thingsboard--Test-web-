*** Setting ***
resource    ../Resources/resource.robot
Test Setup    Open Google
Test Teardown    Close Browser

*** Test Cases ***
TC-001 Login with Email and Password (Correct email,Correct password)
    Wait Until Element Is Visible    xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled    xpath=//input[@id='username-input']
    Input Text    xpath=//input[@id='username-input']    panntut@hotmail.com
    Wait Until Element Is Enabled    xpath=//input[@id='password-input']
    Input Text    xpath=//input[@id='password-input']    AdminAdmin
    Click Element    xpath=//span[normalize-space()='Login']
    Sleep    5s
    
TC-002 Login with Email and Password (Invalid email,Correct password)
    Wait Until Element Is Visible    xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled    xpath=//input[@id='username-input']
    Input Text    xpath=//input[@id='username-input']    Noname@hotmail.com
    Wait Until Element Is Enabled    xpath=//input[@id='password-input']
    Input Text    xpath=//input[@id='password-input']    AdminAdmin
    Click Element    xpath=//span[normalize-space()='Login']
    Wait Until Element Is Enabled    xpath=//div[normalize-space()='Invalid username or password']
    Sleep    5s

TC-003 Login with Email and Password (Correct email,Invalid password)
    Wait Until Element Is Visible    xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled    xpath=//input[@id='username-input']
    Input Text    xpath=//input[@id='username-input']    panntut@hotmail.com
    Wait Until Element Is Enabled    xpath=//input[@id='password-input']
    Input Text    xpath=//input[@id='password-input']    AdminAdmin0001
    Click Element    xpath=//span[normalize-space()='Login']
    Wait Until Element Is Enabled    xpath=//div[normalize-space()='Invalid username or password']
    Sleep    5s

TC-004 Login with Email and Password (Invalid email,Invalid password)
    Wait Until Element Is Visible    xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled    xpath=//input[@id='username-input']
    Input Text    xpath=//input[@id='username-input']    Noname@hotmail.com
    Wait Until Element Is Enabled    xpath=//input[@id='password-input']
    Input Text    xpath=//input[@id='password-input']    AdminAdmin0001
    Click Element    xpath=//span[normalize-space()='Login']
    Wait Until Element Is Enabled    xpath=//div[normalize-space()='Invalid username or password']
    Sleep    5s