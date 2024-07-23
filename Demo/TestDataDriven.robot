*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot
Test Template    Login with Email and Password invalid credentials
Test Setup    Open Google
Test Teardown    Close Browser


*** Test Cases ***                            Username                    Password
Correct Email and Invalid Password            Panntut@hotmail.com         AdminAdmin0001
Invalid Email and Correct Password            Noname@hotmail.com          AdminAdmin
Invalid Email and Invalid Password            Noname@hotmail.com          AdminAdmin0001       