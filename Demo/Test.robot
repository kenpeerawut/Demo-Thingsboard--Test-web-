*** Setting ***
resource    ../Resources/resource.robot


*** Test Cases ***
TC-001 Login with Email and Password
    Wait Until Element Is Visible   xpath=//img[@aria-label='logo']
    Wait Until Element Is Enabled   xpath=//input[@type='email']
    Input Text  xpath=//input[@type='email']    panntut@hotmail.com
    Wait Until Element Is Enabled   xpath=//input[@id='password-input']
    Input Text  xpath=//input[@id='password-input']     AdminAdmin
    Click Element   xpath=//span[normalize-space()='Login']
    Wait Until Element Is Visible    xpath=//button[@aria-haspopup='menu']//span[1]
    Wait Until Element Is Visible   xpath=//span[@class='tb-user-display-name ng-star-inserted']
    Element Text Should Be      xpath=//span[@class='tb-user-display-name ng-star-inserted']    Peerawut Keawnoi
    
  
