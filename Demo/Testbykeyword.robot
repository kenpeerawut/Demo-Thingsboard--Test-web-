*** Settings ***
Resource    ../Resources/resource.robot
Test Setup    Open Google
Test Teardown    Close Browser


*** Test Cases ***
TC-001 Login With Email and Password(Correct Email,Correct Password)
    FILL with Email and Password    panntut@hotmail.com    AdminAdmin
    Wait Until Element Is Enabled    xpath=//button[@aria-haspopup='menu']//span[1]
    Wait Until Element Is Visible   xpath=//span[@class='tb-user-display-name ng-star-inserted']
    Sleep    5s

TC-002 Login With Email and Password(Invalid Email,Correct Password)
    FILL with Email and Password    Naname@hotmail.com    AdminAdmin
    Wait Until Element Is Enabled    xpath=//div[normalize-space()='Invalid username or password']
    Sleep    5s

TC-003 Login With Email and Password(Correct Email,Invalid Password)
    FILL with Email and Password    panntut@hotmail.com    AdminAdmin0001
    Wait Until Element Is Enabled    xpath=//div[normalize-space()='Invalid username or password']
    Sleep    5s

TC-004 Login With Email and Password(Invalid Email,Invalid Password)
    FILL with Email and Password    Naname@hotmail.com     AdminAdmin0001
     Wait Until Element Is Enabled    xpath=//div[normalize-space()='Invalid username or password']
    Sleep    5s